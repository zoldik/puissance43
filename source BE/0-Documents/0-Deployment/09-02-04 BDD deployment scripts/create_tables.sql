create table address
(
   id_address           bigint not null auto_increment,
   street               varchar(64),
   postal_code          varchar(10),
   city                 varchar(64),
   country              varchar(20),
   type_address         varchar(12),
   primary key (id_address)
);


create table bill
(
   id_bill              bigint not null,
   id_customer          bigint not null,
   price                float(8,2),
   bill_fai             float(8,2),
   bill_vod             float(8,2),
   bill_voip            float(8,2),
   primary key (id_bill)
);


CREATE TABLE cdr 
(
  `calldate` datetime NOT NULL default '0000-00-00 00:00:00',
  `clid` varchar(80) NOT NULL default '',
  `src` varchar(80) NOT NULL default '',
  `dst` varchar(80) NOT NULL default '',
  `dcontext` varchar(80) NOT NULL default '',
  `channel` varchar(80) NOT NULL default '',
  `dstchannel` varchar(80) NOT NULL default '',
  `lastapp` varchar(80) NOT NULL default '',
  `lastdata` varchar(80) NOT NULL default '',
  `duration` int(11) NOT NULL default '0',
  `billsec` int(11) NOT NULL default '0',
  `disposition` varchar(45) NOT NULL default '',
  `amaflags` int(11) NOT NULL default '0',
  `accountcode` varchar(20) NOT NULL default '',
  `uniqueid` varchar(32) NOT NULL default '',
  `userfield` varchar(255) NOT NULL default ''
);


create table command
(
   id_command           bigint not null,
   id_transport         bigint not null,
   id_address           bigint not null,
   amount_command       float(8,2),
   state_of_process     varchar(16),
   date_command         date,
   date_shipping        date,
   primary key (id_command)
);


create table command_has_items
(
   id_command           bigint not null,
   id_item              bigint not null,
   quantity             int,
   primary key (id_command, id_item)
);


create table command_has_network_solutions
(
   id_command           bigint not null,
   id_network_solution  bigint not null,
   primary key (id_command, id_network_solution)
);


create table customer
(
   id_customer              bigint not null auto_increment,
   id_address               bigint not null,
   id_internet_subscribe    bigint,
   id_voip_subscribe        bigint,
   id_vod_subscribe         bigint,
   first_name           varchar(20),
   last_name            varchar(20),
   login                varchar(15),
   password             varchar(15),
   mail                 varchar(32),
   sexe                 varchar(1),
   birthday             varchar(10),
   phone                varchar(20),
   cell_phone           varchar(20),
   profession           varchar(20),
   company              varchar(20),
   account_level        smallint, 
   valid                varchar(20),
   vod_debit            float(8,2),
   unique (`login`),
   primary key (id_customer)
);


create table customer_has_command
(
   id_customer          bigint not null,
   id_command           bigint not null,
   primary key (id_customer, id_command)
);


create table facture
(
   id_facture           bigint not null,
   montant              float(8,2),
   has_option           bool,
   primary key (id_facture)
);


create table internet_subscribe
(
   id_internet_subscribe bigint not null auto_increment,
   name_subscribe       varchar(32),
   description_subscribe text,
   price                float(8,2),
   overload             float(8,2),
   rate                 varchar(20),
   primary key (id_internet_subscribe)
);


create table item
(
   id_item              bigint not null auto_increment,
   name                 varchar(20),
   type                 varchar(20),
   description          text,
   unit_price           float(8,2),
   stock                varchar(20),
   primary key (id_item)
);


create table mail_addresse
(
   id_mail_addresses    bigint not null,
   mail_addresses       longtext,
   primary key (id_mail_addresses)
);


create table network_solution
(
   id_network_solution  bigint not null,
   type                 varchar(15),
   description          text,
   price                float(8,2),
   primary key (id_network_solution)
);



create table possede_facture
(
   id_customer          bigint not null,
   fac_id_facture       bigint not null,
   user_id              bigint,
   id_facture           bigint,
   primary key (id_customer, fac_id_facture)
);


create table possede_mail_addresse
(
   mai_id_mail_addresses bigint not null,
   id_customer          bigint not null,
   user_id              bigint,
   id_mail_addresses    bigint,
   primary key (mai_id_mail_addresses, id_customer)
);


create table transport
(
   id_transport         bigint not null,
   name                 varchar(80),
   primary key (id_transport)
);




CREATE TABLE `VOD_CATEGORY` 
(
  `ID` int(11) NOT NULL auto_increment,
  `NAME` text NOT NULL,
  PRIMARY KEY  (`ID`)
);


CREATE TABLE `VOD_CHAINE` 
(
  `ID` int(11) NOT NULL auto_increment,
  `DESCRIPTION` text NOT NULL,
  `ADRESS` text NOT NULL,
  `NAME` text NOT NULL,
  
  PRIMARY KEY  (`ID`)

);


CREATE TABLE `VOD_COMMENT` 
(
  `ID` int(11) NOT NULL auto_increment,
  `VIDEO_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `POSTED` datetime NOT NULL,
  `VALUE` text NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_VOD_COMMENT_VOD_VIDEO` (`VIDEO_ID`),
  KEY `FK_VOD_COMMENT_VOD_USER` (`USER_ID`)
);


CREATE TABLE `VOD_CUSTOMER_VIDEO` 
(
  `VIDEO_ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  PRIMARY KEY  (`VIDEO_ID`,`CUSTOMER_ID`)
);


CREATE TABLE `VOD_MARK` 
(
  `ID` int(11) NOT NULL auto_increment,
  `VIDEO_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `VALUE` int(11) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_VOD_MARK_VOD_VIDEO` (`VIDEO_ID`),
  KEY `FK_VOD_MARK_VOD_USER` (`USER_ID`)
);


CREATE TABLE `VOD_PLAYLIST` (
  `ID` int(11) NOT NULL auto_increment,
  `USER_ID` int(11) NOT NULL,
  `NAME` text NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_VOD_PLAYLIST_VOD_USER` (`USER_ID`)
);


create table vod_subscribe
(
   id_vod_subscribe    bigint not null auto_increment,
   name_vod_subscribe                   varchar(32),
   description_vod_subscribe            text,
   price                                float(8,2),
   type_vod_subscribe                   varchar(32),
   
   primary key (id_vod_subscribe)
);


CREATE TABLE `VOD_TAG` 
(
  `ID` int(11) NOT NULL auto_increment,
  `VALUE` text NOT NULL,
  `SEARCH_COUNTER` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
);


CREATE TABLE `VOD_TAG_IN_VIDEO` 
(
  `TAG_ID` int(11) NOT NULL,
  `VIDEO_ID` int(11) NOT NULL,
  PRIMARY KEY  (`TAG_ID`,`VIDEO_ID`)
);


CREATE TABLE `VOD_USER` 
(
  `ID` int(11) NOT NULL auto_increment,
   id_customer              bigint not null,
  `LOGIN` text NOT NULL,
  `PASSWORD` text NOT NULL,
  `EMAIL` text NOT NULL,
  PRIMARY KEY  (`ID`)
);


CREATE TABLE `VOD_VIDEO` 
(
  `ID` int(11) NOT NULL auto_increment,
  `CATEGORY_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `DURATION` time NOT NULL,
  `RECORDED` datetime NOT NULL,
  `NAME` text NOT NULL,
  `WATCH_COUNTER` int(11) NOT NULL default '0',
  `PRICE` float(8,2) NOT NULL default '0',
  
  PRIMARY KEY  (`ID`),
  KEY `FK_VOD_VIDEO_VOD_CATEGORY` (`CATEGORY_ID`),
  KEY `FK_VOD_VIDEO_VOD_USER` (`USER_ID`)
);


CREATE TABLE `VOD_VIDEO_IN_PLAYLIST` 
(
  `VIDEO_ID` int(11) NOT NULL,
  `PLAYLIST_ID` int(11) NOT NULL,
  PRIMARY KEY  (`VIDEO_ID`,`PLAYLIST_ID`)
);







create table voip_call
(
   id_voip_call         bigint not null auto_increment,
   id_voip_line         bigint not null,
   calldate             datetime,
   clid                 varchar(80),
   src                  varchar(80),
   dst                  varchar(80),
   dcontext             varchar(80),
   channel              varchar(80),
   dstchannel           varchar(80),
   lastapp              varchar(80),
   lastdata             varchar(80),
   duration             int,
   billsec              int,
   disposition          varchar(45),
   amaflags             varchar(13),
   accountcode          varchar(20),
   uniqueid             varchar(32),
   userfield            varchar(255),
   primary key (id_voip_call)
);


create table voip_contact
(
   id_voip_contact      bigint not null auto_increment,
   id_voip_line         bigint not null,
   titre                varchar(80),
   categorie            varchar(80),
   nom                  varchar(80),
   prenom               varchar(80),
   telephone            varchar(80),
   mail                 varchar(32),
   user_voip            bigint,
   primary key (id_voip_contact)
);


create table voip_line
(
  `id_voip_line` bigint(20) NOT NULL auto_increment,
  `id_customer` bigint(20) NOT NULL,
  `name` varchar(80) default NULL,
  `host` varchar(31) default NULL,
  `call-limit` varchar(5) default NULL,
  `type` varchar(15) default NULL,
  `accountcode` varchar(20) default NULL,
  `amaflags` varchar(13) default NULL,
  `callgroup` varchar(10) default NULL,
  `callerid` varchar(80) default NULL,
  `cancallforward` char(3) default NULL,
  `canreinvite` char(3) default NULL,
  `context` varchar(80) default NULL,
  `defaultip` varchar(15) default NULL,
  `dtmfmode` varchar(7) default NULL,
  `fromuser` varchar(80) default NULL,
  `fromdomain` varchar(80) default NULL,
  `insecure` varchar(4) default NULL,
  `language` char(2) default NULL,
  `mailbox` varchar(50) default NULL,
  `md5secret` varchar(80) default NULL,
  `deny` varchar(95) default NULL,
  `permit` varchar(95) default NULL,
  `mask` varchar(95) default NULL,
  `musiconhold` varchar(100) default NULL,
  `pickupgroup` varchar(10) default NULL,
  `qualify` char(3) default NULL,
  `regexten` varchar(80) default NULL,
  `restrictcid` char(3) default NULL,
  `rtptimeout` char(3) default NULL,
  `rtpholdtimeout` char(3) default NULL,
  `secret` varchar(80) default NULL,
  `setvar` varchar(100) default NULL,
  `disallow` varchar(100) default NULL,
  `allow` varchar(100) default NULL,
  `fullcontact` varchar(80) default NULL,
  `ipaddr` varchar(15) default NULL,
  `port` bigint(20) default NULL,
  `regserver` varchar(100) default NULL,
  `regseconds` int(11) default NULL,
  `username` varchar(80) default NULL,
  `nat` varchar(5) NOT NULL default 'no',
  `visible` tinyint(1) NOT NULL default '0',
  primary key (id_voip_line)
);


create table voip_rss
(
   id_voip_rss          bigint not null auto_increment,
   id_voip_line         bigint not null,
   url                  varchar(255),
   update_rss            boolean default 0,
   primary key (id_voip_rss)
);

create table voip_subscribe
(
   id_voip_subscribe    bigint not null auto_increment,
   name_voip_subscribe              varchar(32),
   description_voip_subscribe       text,
   price                            float(8,2),
   type_voip_subscribe              varchar(20),
   
   primary key (id_voip_subscribe)
);


create table voip_voicemessages 
(
  `id_voip_voicemessages` int(11) NOT NULL auto_increment,
  `id_voip_line` bigint(20) NOT NULL,
  `msgnum` int(11) NOT NULL default '0',
  `dir` varchar(80) default '',
  `context` varchar(80) default '',
  `macrocontext` varchar(80) default '',
  `callerid` varchar(40) default '',
  `origtime` varchar(40) default '',
  `duration` varchar(20) default '',
  `mailboxuser` varchar(80) default '',
  `mailboxcontext` varchar(80) default '',
  `recording` longblob,
  `mailbox` varchar(80) NOT NULL default '''''',
  PRIMARY KEY  (`id_voip_voicemessages`),
) 



alter table bill add constraint FK_CUSTOMER_HAS_BILL foreign key (id_customer)
      references customer (id_customer) on delete restrict on update restrict;

alter table command add constraint FK_COMMAND_HAS_DELIVERY_ADDRESS foreign key (id_address)
      references address (id_address) on delete restrict on update restrict;

alter table command add constraint FK_COMMAND_HAS_TRANSPORT foreign key (id_transport)
      references transport (id_transport) on delete restrict on update restrict;

alter table command_has_items add constraint FK_COMMAND_HAS_ITEMS foreign key (id_command)
      references command (id_command) on delete restrict on update restrict;

alter table command_has_items add constraint FK_COMMAND_HAS_ITEMS2 foreign key (id_item)
      references item (id_item) on delete restrict on update restrict;

alter table command_has_network_solutions add constraint FK_COMMAND_HAS_NETWORK_SOLUTIONS foreign key (id_command)
      references command (id_command) on delete restrict on update restrict;

alter table command_has_network_solutions add constraint FK_COMMAND_HAS_NETWORK_SOLUTIONS2 foreign key (id_network_solution)
      references network_solution (id_network_solution) on delete restrict on update restrict;

alter table customer add constraint FK_CUSTOMER_HAS_AN_ADDRESS foreign key (id_address)
      references address (id_address) on delete restrict on update restrict;

alter table customer add constraint FK_CUSTOMER_HAS_INTERNET_SUBSCRIBE foreign key (id_internet_subscribe)
      references internet_subscribe (id_internet_subscribe) on delete restrict on update restrict;

alter table customer add constraint FK_CUSTOMER_HAS_VOIP_SUBSCRIBE foreign key (id_voip_subscribe)
      references voip_subscribe (id_voip_subscribe) on delete restrict on update restrict;

alter table customer add constraint FK_CUSTOMER_HAS_VOD_SUBSCRIBE foreign key (id_vod_subscribe)
      references vod_subscribe (id_vod_subscribe) on delete restrict on update restrict;

alter table customer_has_command add constraint FK_CUSTOMER_HAS_COMMAND foreign key (id_customer)
      references customer (id_customer) on delete restrict on update restrict;

alter table customer_has_command add constraint FK_CUSTOMER_HAS_COMMAND2 foreign key (id_command)
      references command (id_command) on delete restrict on update restrict;

alter table possede_facture add constraint FK_POSSEDE_FACTURE foreign key (id_customer)
      references customer (id_customer) on delete restrict on update restrict;

alter table possede_facture add constraint FK_POSSEDE_FACTURE2 foreign key (fac_id_facture)
      references facture (id_facture) on delete restrict on update restrict;

alter table possede_mail_addresse add constraint FK_POSSEDE_MAIL_ADDRESSE foreign key (mai_id_mail_addresses)
      references mail_addresse (id_mail_addresses) on delete restrict on update restrict;

alter table possede_mail_addresse add constraint FK_POSSEDE_MAIL_ADDRESSE2 foreign key (id_customer)
      references customer (id_customer) on delete restrict on update restrict;

alter table VOD_USER add constraint FK_VOD_USER_HAS_CUSTOMER foreign key (id_customer)
      references customer (id_customer) on delete restrict on update restrict;

alter table voip_call add constraint FK_VOIP_LINE_HAS_VOIP_CALL foreign key (id_voip_line)
      references voip_line (id_voip_line) on delete restrict on update restrict;

alter table voip_contact add constraint FK_VOIP_LINE_HAS_VOIP_CONTACT foreign key (id_voip_line)
      references voip_line (id_voip_line) on delete restrict on update restrict;

alter table voip_line add constraint FK_CUSTOMER_HAS_VOIP_LINE foreign key (id_customer)
      references customer (id_customer) on delete restrict on update restrict;

alter table voip_rss add constraint FK_VOIP_LINE_HAS_VOIP_RSS foreign key (id_voip_line)
      references voip_line (id_voip_line) on delete restrict on update restrict;

alter table voip_voicemessages  add constraint FK_VOIP_LINE_HAS_VOIP_VOICEMESSAGES foreign key (id_voip_line)
      references voip_line (id_voip_line) on delete restrict on update restrict;

