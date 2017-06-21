/*
create table users
*/
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  uid serial NOT NULL,
  username varchar(32) NOT NULL,
  password varchar(32) NOT NULL DEFAULT '',
  admin boolean DEFAULT false,
  password_editable smallint NOT NULL DEFAULT '1',
  timezone varchar(255) DEFAULT NULL,
  PRIMARY KEY (uid),
  UNIQUE(username)
);

INSERT INTO users VALUES (1, 'zjh','123',true,1,null);
INSERT INTO users VALUES (2, 'doris','123',false,1,null);
