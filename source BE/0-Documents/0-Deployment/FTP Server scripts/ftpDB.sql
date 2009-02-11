CREATE DB pureftpd;
USED Pureftpd;
CREATE TABLE users (
User varchar(16) NOT NULL default '',
Password varchar(64) NOT NULL default '',
Dir varchar(128) NOT NULL default '',
PRIMARY KEY  (User)
);