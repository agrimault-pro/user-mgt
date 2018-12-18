
-- ROLE --

INSERT INTO ROLES (ROLENAME)
    VALUES ('ADMIN');

INSERT INTO ROLES (ROLENAME)
    VALUES ('READER');



-- USERS --

INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_1', 'Jhon', 'Doe', 'jhon.doe@gmail.com',' 06 06 05 05 04',to_date('1975/03/22', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/kill_bill_lucy_liu.jpg','pwd_1', select r.id from roles as r where r.rolename='ADMIN');


INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_2', 'Bruce', 'Lee', 'bruce.lee@gmail.com',' 06 08 05 05 04',to_date('1970/05/15', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/the_bride19.jpg','pwd_2', select r.id from roles as r where r.rolename='ADMIN');


INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_3', 'Brad', 'Pitt', 'brad.pitt@gmail.com',' 07 01 05 05 07',to_date('1969/08/06', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/kill_bill12.jpg','pwd_3', select r.id from roles as r where r.rolename='READER');

INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_4', 'Tom', 'Hanks', 'tom.hanks@gmail.com',' 07 01 05 05 08',to_date('1969/04/06', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/kill_bill12.jpg','pwd_4', select r.id from roles as r where r.rolename='READER');

INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_5', 'Tom', 'Cruise', 'tom.cruise@gmail.com',' 07 01 55 15 08',to_date('1965/08/06', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/kill_bill12.jpg','pwd_5', select r.id from roles as r where r.rolename='ADMIN');


INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_6', 'Jhon', 'Doe', 'jhon.doe@gmail.com',' 06 06 05 05 04',to_date('1975/03/22', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/kill_bill_lucy_liu.jpg','pwd_6', select r.id from roles as r where r.rolename='READER');

INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_7', 'Bruce', 'Lee', 'bruce.lee@gmail.com',' 06 08 05 05 04',to_date('1970/05/15', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/the_bride19.jpg','pwd_7', select r.id from roles as r where r.rolename='ADMIN');

INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_8', 'Brad', 'Pitt', 'brad.pitt@gmail.com',' 07 01 05 05 07',to_date('1969/08/06', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/kill_bill12.jpg','pwd_8', select r.id from roles as r where r.rolename='ADMIN');

INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_9', 'Tom', 'Hanks', 'tom.hanks@gmail.com',' 07 01 05 05 08',to_date('1969/04/06', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/kill_bill12.jpg','pwd_9', select r.id from roles as r where r.rolename='READER');

INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_10', 'Tom', 'Cruise', 'tom.cruise@gmail.com',' 07 01 55 15 08',to_date('1975/08/06', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/kill_bill12.jpg','pwd_10', select r.id from roles as r where r.rolename='READER');


INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_11', 'Jhon', 'Doe', 'jhon.doe@gmail.com',' 06 06 05 05 04',to_date('1975/03/22', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/kill_bill_lucy_liu.jpg','pwd_11', select r.id from roles as r where r.rolename='ADMIN');

INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_12', 'Bruce', 'Lee', 'bruce.lee@gmail.com',' 06 08 05 05 04',to_date('1970/05/15', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/the_bride19.jpg','pwd_12', select r.id from roles as r where r.rolename='READER');

INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_13', 'Brad', 'Pitt', 'brad.pitt@gmail.com',' 07 01 05 05 07',to_date('1969/08/06', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/kill_bill12.jpg','pwd_13', select r.id from roles as r where r.rolename='READER');

INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_14', 'Tom', 'Hanks', 'tom.hanks@gmail.com',' 07 01 05 05 08',to_date('1969/04/06', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/kill_bill12.jpg','pwd_14', select r.id from roles as r where r.rolename='ADMIN');

INSERT INTO USERS (ALIAS ,FIRSTNAME ,LASTNAME ,EMAIL, PHONENUMBER, BIRTHDATE, GENDER, AVATAR, PASSWORD, role_id )
    VALUES ('user_15', 'Tom', 'Cruise', 'tom.cruise@gmail.com',' 07 01 55 15 08',to_date('1965/08/06', 'YYYY/MM/DD'),'M','http://www.avatarsdb.com/avatars/kill_bill12.jpg','pwd_15', select r.id from roles as r where r.rolename='ADMIN');
