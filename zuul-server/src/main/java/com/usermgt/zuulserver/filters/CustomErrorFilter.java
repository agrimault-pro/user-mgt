package com.usermgt.zuulserver.filters;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.util.ReflectionUtils;

@Component
public class CustomErrorFilter extends ZuulFilter {

    private static final Logger logger = LoggerFactory.getLogger(CustomErrorFilter.class);

    @Override
    public String filterType() {
        return "error";
    }

    @Override
    public int filterOrder() {
        return -1; // Probably order doesn't matter because it runs on demand
    }

    @Override
    public boolean shouldFilter() {
        return RequestContext.getCurrentContext().getThrowable() != null;
    }

    @Override
    public Object run() {
        try {
            logger.error("Custom error filter runing ");
            RequestContext ctx = RequestContext.getCurrentContext();

            Throwable throwable = ctx.getThrowable();
            if (throwable != null) {
                logger.error("Zuul failure detected: " + throwable.getMessage(), throwable);
                ctx.setResponseBody("Zuul exception:" + throwable.getMessage() + " cause: " + throwable.getCause()); // just for development purposes
                ctx.getResponse().setContentType("application/json");
                ctx.setResponseStatusCode(500);
            }
        }
        catch (Exception ex) {
            logger.error("Exception filtering in custom error filter", ex);
            ReflectionUtils.rethrowRuntimeException(ex);
        }
        return null;
    }
}
