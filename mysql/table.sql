CREATE TABLE event_history (
    event_time DATETIME,
    event_type varchar(30),
    product_id bigint unsigned,
    category_id bigint unsigned,
    category_code varchar(100) DEFAULT NULL,
    brand varchar(30) DEFAULT NULL,
    price DECIMAL(10,6),
    user_id bigint unsigned,
    user_session varchar(50)
)

LOAD DATA INFILE '/var/lib/mysql-files/2019-Dec.csv'
INTO TABLE event_history
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@event_time, event_type, product_id, category_id, category_code, brand, price, user_id, user_session)
SET event_time = STR_TO_DATE(REPLACE(@event_time, ' UTC', ''), '%Y-%m-%d %H:%i:%s');

LOAD DATA INFILE '/var/lib/mysql-files/2019-Oct.csv'
INTO TABLE event_history
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@event_time, event_type, product_id, category_id, category_code, brand, price, user_id, user_session)
SET event_time = STR_TO_DATE(REPLACE(@event_time, ' UTC', ''), '%Y-%m-%d %H:%i:%s');

LOAD DATA INFILE '/var/lib/mysql-files/2019-Nov.csv'
INTO TABLE event_history
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@event_time, event_type, product_id, category_id, category_code, brand, price, user_id, user_session)
SET event_time = STR_TO_DATE(REPLACE(@event_time, ' UTC', ''), '%Y-%m-%d %H:%i:%s');

LOAD DATA INFILE '/var/lib/mysql-files/2020-Jan.csv'
INTO TABLE event_history
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@event_time, event_type, product_id, category_id, category_code, brand, price, user_id, user_session)
SET event_time = STR_TO_DATE(REPLACE(@event_time, ' UTC', ''), '%Y-%m-%d %H:%i:%s');

LOAD DATA INFILE '/var/lib/mysql-files/2020-Feb.csv'
INTO TABLE event_history
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@event_time, event_type, product_id, category_id, category_code, brand, price, user_id, user_session)
SET event_time = STR_TO_DATE(REPLACE(@event_time, ' UTC', ''), '%Y-%m-%d %H:%i:%s');