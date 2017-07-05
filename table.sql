/*
create table users
*/
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  uid serial NOT NULL,
  username varchar(32) NOT NULL,
  password varchar(32) NOT NULL DEFAULT '',
  admin smallint DEFAULT '0',
  password_editable smallint NOT NULL DEFAULT '1',
  timezone varchar(255) DEFAULT NULL,
  PRIMARY KEY (uid),
  UNIQUE(username)
);

/*
create groups
*/
DROP TABLE IF EXISTS groups;
CREATE TABLE groups (
  gid serial NOT NULL,
  group_name varchar(32) NOT NULL,
  creater smallint NOT NULL,
  PRIMARY KEY (gid),
  UNIQUE(group_name)
);

/*
user_group_permission
*/
DROP TABLE IF EXISTS user_group;
CREATE TABLE user_group(
  gid int NOT NULL,
  uid int NOT NULL,
  write smallint DEFAULT '0',
  read smallint DEFAULT '1',
  modify smallint DEFAULT '0',
  admin smallint DEFAULT '0',
  UNIQUE (gid,uid)
);

DROP TABLE IF EXISTS events;
CREATE TABLE events(
  eid serial NOT NULL,
  subject varchar(32) NOT NULL,
  description varchar(255) NOT NULL,
  start_date date NOT NULL,
  start_time time NOT NULL,
  end_date date NOT NULL,
  end_time time NOT NULL,
  creater int NOT NULL,
  group_event smallint DEFAULT '0',
  gid int NOT NULL DEFAULT '0',
  PRIMARY KEY (eid)
);


INSERT INTO users VALUES (1, 'zjh','123',1,1,null);
INSERT INTO users VALUES (2, 'doris','123',0,1,null);

INSERT INTO groups VALUES(1,'friends',1);

INSERT INTO user_group VALUES (1,1,1,1,1,1);
INSERT INTO user_group VALUES (1,2,1,1,1,1);
