/*
create table users
*/
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  uid serial NOT NULL,
  username varchar(32) NOT NULL,
  password varchar(32) NOT NULL DEFAULT '',
  admin smallint NOT NULL DEFAULT '0',
  password_editable smallint NOT NULL DEFAULT '1',
  timezone varchar(255) DEFAULT NULL,
  PRIMARY KEY (uid)
);

INSERT INTO users VALUES (1, 'zjh','123',1,1,null);
