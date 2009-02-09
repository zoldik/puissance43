create table address
(
   id_address           bigint not null,
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


create table categorie
(
   catid                bigint not null,
   catnom               text,
   primary key (catid)
);


CREATE TABLE IF NOT EXISTS `cdr` (
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


create table chaine
(
   chaineid             bigint not null,
   voddescription       text,
   vodadresse           text,
   vodnom               text,
   primary key (chaineid)
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


create table commentaire
(
   comid                bigint not null,
   comdate              datetime,
   comvalue             text,
   primary key (comid)
);


create table customer
(
   id_customer          bigint not null auto_increment,
   id_address           bigint not null,
   id_internet_subscribe bigint,
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
   unique (`login`)
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
   id_internet_subscribe bigint not null,
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


create table note
(
   noteid               bigint not null,
   valeur               smallint,
   primary key (noteid)
);


create table playlist
(
   playlist_id          bigint not null,
   playlist_nom         text,
   primary key (playlist_id)
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


create table tag
(
   tagid                bigint not null,
   tagvalue             text,
   searchcounter        int,
   primary key (tagid)
);


create table transport
(
   id_transport         bigint not null,
   name                 varchar(80),
   primary key (id_transport)
);


create table user_vod
(
   id_vod               bigint not null,
   id_customer          bigint not null,
   vod_login            text,
   vod_password         text,
   vod_mail             text,
   primary key (id_vod)
);


create table video
(
   videoid              bigint not null,
   videoduree           time,
   videodate            datetime,
   videonom             text,
   watchcounter         bigint,
   videoprice           float(8,2),
   primary key (videoid)
);


create table vod_acheter
(
   vid_videoid          bigint not null,
   use_id_vod           bigint not null,
   id_vod               bigint,
   videoid              bigint,
   primary key (vid_videoid, use_id_vod)
);


create table vod_associer
(
   vid_videoid          bigint not null,
   com_comid            bigint not null,
   comid                bigint,
   videoid              bigint,
   primary key (vid_videoid, com_comid)
);


create table vod_attribuer
(
   not_noteid           bigint not null,
   use_id_vod           bigint not null,
   id_vod               bigint,
   noteid               bigint,
   primary key (not_noteid, use_id_vod)
);


create table vod_codifier
(
   vid_videoid          bigint not null,
   not_noteid           bigint not null,
   videoid              bigint,
   noteid               bigint,
   primary key (vid_videoid, not_noteid)
);


create table vod_contenir
(
   tag_tagid            bigint not null,
   vid_videoid          bigint not null,
   videoid              bigint,
   tagid                bigint,
   primary key (tag_tagid, vid_videoid)
);


create table vod_ecrire
(
   use_id_vod           bigint not null,
   com_comid            bigint not null,
   id_vod               bigint,
   comid                bigint,
   primary key (use_id_vod, com_comid)
);


create table vod_lier
(
   cat_catid            bigint not null,
   vid_videoid          bigint not null,
   videoid              bigint,
   catid                bigint,
   primary key (cat_catid, vid_videoid)
);


create table vod_possede
(
   pla_playlist_id      bigint not null,
   use_id_vod           bigint not null,
   id_vod               bigint,
   playlist_id          bigint,
   primary key (pla_playlist_id, use_id_vod)
);


create table vod_uploader
(
   vid_videoid          bigint not null,
   use_id_vod           bigint not null,
   id_vod               bigint,
   videoid              bigint,
   primary key (vid_videoid, use_id_vod)
);


create table voip_call
(
   id_voip_call         bigint not null,
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
   id_voip_contact      bigint not null,
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
   id_voip_line         bigint not null,
   id_customer          bigint not null,
   name                 varchar(80),
   host                 varchar(31),
   attribute_112        varchar(5),
   type                 varchar(15),
   accountcode          varchar(20),
   amaflags             varchar(13),
   callgroup            varchar(10),
   callerid             varchar(80),
   cancallforward       char(3),
   canreinvite          char(3),
   context              varchar(80),
   defaultip            varchar(15),
   dtmfmode             varchar(7),
   fromuser             varchar(80),
   fromdomain           varchar(80),
   insecure             varchar(4),
   language             char(2),
   mailbox              varchar(50),
   md5secret            varchar(80),
   deny                 varchar(95),
   permit               varchar(95),
   mask                 varchar(95),
   musiconhold          varchar(100),
   pickupgroup          varchar(10),
   qualify              char(3),
   regexten             varchar(80),
   restrictcid          char(3),
   rtptimeout           char(3),
   rtpholdtimeout       char(3),
   secret               varchar(80),
   setvar               varchar(100),
   disallow             varchar(100),
   allow                varchar(100),
   fullcontact          varchar(80),
   ipaddr               varchar(15),
   port                 bigint,
   regserver            varchar(100),
   regseconds           int,
   username             varchar(80),
   primary key (id_voip_line)
);


create table voip_rss
(
   id_voip_rss          bigint not null,
   id_voip_line         bigint not null,
   url                  varchar(255),
   primary key (id_voip_rss)
);

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

alter table user_vod add constraint FK_POSSEDE_ABONNEMENT_VOD foreign key (id_customer)
      references customer (id_customer) on delete restrict on update restrict;

alter table vod_acheter add constraint FK_VOD_ACHETER foreign key (vid_videoid)
      references video (videoid) on delete restrict on update restrict;

alter table vod_acheter add constraint FK_VOD_ACHETER2 foreign key (use_id_vod)
      references user_vod (id_vod) on delete restrict on update restrict;

alter table vod_associer add constraint FK_VOD_ASSOCIER foreign key (vid_videoid)
      references video (videoid) on delete restrict on update restrict;

alter table vod_associer add constraint FK_VOD_ASSOCIER2 foreign key (com_comid)
      references commentaire (comid) on delete restrict on update restrict;

alter table vod_attribuer add constraint FK_VOD_ATTRIBUER foreign key (not_noteid)
      references note (noteid) on delete restrict on update restrict;

alter table vod_attribuer add constraint FK_VOD_ATTRIBUER2 foreign key (use_id_vod)
      references user_vod (id_vod) on delete restrict on update restrict;

alter table vod_codifier add constraint FK_VOD_CODIFIER foreign key (vid_videoid)
      references video (videoid) on delete restrict on update restrict;

alter table vod_codifier add constraint FK_VOD_CODIFIER2 foreign key (not_noteid)
      references note (noteid) on delete restrict on update restrict;

alter table vod_contenir add constraint FK_VOD_CONTENIR foreign key (tag_tagid)
      references tag (tagid) on delete restrict on update restrict;

alter table vod_contenir add constraint FK_VOD_CONTENIR2 foreign key (vid_videoid)
      references video (videoid) on delete restrict on update restrict;

alter table vod_ecrire add constraint FK_VOD_ECRIRE foreign key (use_id_vod)
      references user_vod (id_vod) on delete restrict on update restrict;

alter table vod_ecrire add constraint FK_VOD_ECRIRE2 foreign key (com_comid)
      references commentaire (comid) on delete restrict on update restrict;

alter table vod_lier add constraint FK_VOD_LIER foreign key (cat_catid)
      references categorie (catid) on delete restrict on update restrict;

alter table vod_lier add constraint FK_VOD_LIER2 foreign key (vid_videoid)
      references video (videoid) on delete restrict on update restrict;

alter table vod_possede add constraint FK_VOD_POSSEDE foreign key (pla_playlist_id)
      references playlist (playlist_id) on delete restrict on update restrict;

alter table vod_possede add constraint FK_VOD_POSSEDE2 foreign key (use_id_vod)
      references user_vod (id_vod) on delete restrict on update restrict;

alter table vod_uploader add constraint FK_VOD_UPLOADER foreign key (vid_videoid)
      references video (videoid) on delete restrict on update restrict;

alter table vod_uploader add constraint FK_VOD_UPLOADER2 foreign key (use_id_vod)
      references user_vod (id_vod) on delete restrict on update restrict;

alter table voip_call add constraint FK_VOIP_LINE_HAS_VOIP_CALL foreign key (id_voip_line)
      references voip_line (id_voip_line) on delete restrict on update restrict;

alter table voip_contact add constraint FK_VOIP_LINE_HAS_VOIP_CONTACT foreign key (id_voip_line)
      references voip_line (id_voip_line) on delete restrict on update restrict;

alter table voip_line add constraint FK_CUSTOMER_HAS_VOIP_LINE foreign key (id_customer)
      references customer (id_customer) on delete restrict on update restrict;

alter table voip_rss add constraint FK_VOIP_LINE_HAS_VOIP_RSS foreign key (id_voip_line)
      references voip_line (id_voip_line) on delete restrict on update restrict;

