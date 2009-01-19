/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     19/01/2009 12:00:14                          */
/*==============================================================*/


drop table if exists ABONNEMENT;

drop table if exists A_PJ;

drop table if exists BOX;

drop table if exists FACTURE;

drop table if exists MAIL;

drop table if exists MAIL_ADDRESSE;

drop table if exists MAIL_PJ;

drop table if exists LIST_OPTIONS;

drop table if exists POSSEDE_ABONNEMENT;

drop table if exists POSSEDE_FACTURE;

drop table if exists POSSEDE_MAIL_ADDRESSE;

drop table if exists POSSEDE_OPTION;

drop table if exists USER_FAI;

/*==============================================================*/
/* Table: ABONNEMENT                                            */
/*==============================================================*/
create table ABONNEMENT
(
   ID_ABONNEMENT        bigint not null,
   NOM_ABONNEMENT       varchar(32),
   PRICE                float(8,2),
   OVERLOAD             float(8,2),
   DESCRIPTION_ABONNEMENT text,
   primary key (ID_ABONNEMENT)
);

/*==============================================================*/
/* Table: A_PJ                                                  */
/*==============================================================*/
create table A_PJ
(
   BOX_ID_MAIL          bigint not null,
   MAI_PJ_ID            bigint not null,
   ID_MAIL              bigint,
   PJ_ID                bigint,
   primary key (BOX_ID_MAIL, MAI_PJ_ID)
);

/*==============================================================*/
/* Table: BOX                                                   */
/*==============================================================*/
create table BOX
(
   ID_MAIL              bigint not null,
   TYPE                 varchar(15),
   TITTLE               longtext,
   CONTENT              text,
   SENDER               longtext,
   CC                   text,
   primary key (ID_MAIL)
);

/*==============================================================*/
/* Table: FACTURE                                               */
/*==============================================================*/
create table FACTURE
(
   ID_FACTURE           bigint not null,
   MONTANT              float(8,2),
   HAS_OPTION           bool,
   DATE                 varchar(10),
   primary key (ID_FACTURE)
);

/*==============================================================*/
/* Table: MAIL                                                  */
/*==============================================================*/
create table MAIL
(
   BOX_ID_MAIL          bigint not null,
   MAI_ID_MAIL_ADDRESSES bigint not null,
   ID_MAIL_ADDRESSES    bigint,
   ID_MAIL              bigint,
   primary key (BOX_ID_MAIL, MAI_ID_MAIL_ADDRESSES)
);

alter table MAIL comment 'inbox/outbox/brouillons';

/*==============================================================*/
/* Table: MAIL_ADDRESSE                                         */
/*==============================================================*/
create table MAIL_ADDRESSE
(
   ID_MAIL_ADDRESSES    bigint not null,
   MAIL_ADDRESSES       longtext,
   primary key (ID_MAIL_ADDRESSES)
);

/*==============================================================*/
/* Table: MAIL_PJ                                               */
/*==============================================================*/
create table MAIL_PJ
(
   PJ_ID                bigint not null,
   ADDRESSE             longtext,
   primary key (PJ_ID)
);

/*==============================================================*/
/* Table: LIST_OPTIONS                                          */
/*==============================================================*/
create table LIST_OPTIONS
(
   ID_OPTION            bigint not null,
   TYPE                 varchar(15),
   QUANTITY             numeric(8,0),
   PRICE                float(8,0),
   TYPE_FACTURATION     varchar(15),
   primary key (ID_OPTION)
);

/*==============================================================*/
/* Table: POSSEDE_ABONNEMENT                                    */
/*==============================================================*/
create table POSSEDE_ABONNEMENT
(
   USE_USER_ID          varchar(15) not null,
   ABO_ID_ABONNEMENT    bigint not null,
   USER_ID              varchar(15),
   ID_ABONNEMENT        bigint,
   primary key (USE_USER_ID, ABO_ID_ABONNEMENT)
);

/*==============================================================*/
/* Table: POSSEDE_FACTURE                                       */
/*==============================================================*/
create table POSSEDE_FACTURE
(
   USE_USER_ID          varchar(15) not null,
   FAC_ID_FACTURE       bigint not null,
   USER_ID              varchar(15),
   ID_FACTURE           bigint,
   primary key (USE_USER_ID, FAC_ID_FACTURE)
);

/*==============================================================*/
/* Table: POSSEDE_MAIL_ADDRESSE                                 */
/*==============================================================*/
create table POSSEDE_MAIL_ADDRESSE
(
   MAI_ID_MAIL_ADDRESSES bigint not null,
   USE_USER_ID          varchar(15) not null,
   ID_MAIL_ADDRESSES    bigint,
   USER_ID              varchar(15),
   primary key (MAI_ID_MAIL_ADDRESSES, USE_USER_ID)
);

/*==============================================================*/
/* Table: POSSEDE_OPTION                                        */
/*==============================================================*/
create table POSSEDE_OPTION
(
   OPT_ID_OPTION        bigint not null,
   USE_USER_ID          varchar(15) not null,
   ID_OPTION            bigint,
   USER_ID              varchar(15),
   primary key (OPT_ID_OPTION, USE_USER_ID)
);

/*==============================================================*/
/* Table: USER_FAI                                              */
/*==============================================================*/
create table USER_FAI
(
   USER_ID              varchar(15) not null,
   LOGIN                varchar(15),
   PASSWORD             varchar(15),
   NOM                  varchar(15),
   PRENOM               varchar(15),
   SEXE                 varchar(1),
   SOCIETE              varchar(100),
   MAIL                 varchar(32),
   USER_TYPE            varchar(15),
   ACCOUNT_LEVEL        smallint,
   TYPE_USER_VOD        varchar(15),
   CREDIT_VOD           float(15,2),
   TEL                  varchar(20),
   GSM                  varchar(20),
   BORN                 varchar(10),
   primary key (USER_ID)
);

alter table A_PJ add constraint FK_A_PJ foreign key (BOX_ID_MAIL)
      references BOX (ID_MAIL) on delete restrict on update restrict;

alter table A_PJ add constraint FK_A_PJ2 foreign key (MAI_PJ_ID)
      references MAIL_PJ (PJ_ID) on delete restrict on update restrict;

alter table MAIL add constraint FK_MAIL foreign key (BOX_ID_MAIL)
      references BOX (ID_MAIL) on delete restrict on update restrict;

alter table MAIL add constraint FK_MAIL2 foreign key (MAI_ID_MAIL_ADDRESSES)
      references MAIL_ADDRESSE (ID_MAIL_ADDRESSES) on delete restrict on update restrict;

alter table POSSEDE_ABONNEMENT add constraint FK_POSSEDE_ABONNEMENT foreign key (USE_USER_ID)
      references USER_FAI (USER_ID) on delete restrict on update restrict;

alter table POSSEDE_ABONNEMENT add constraint FK_POSSEDE_ABONNEMENT2 foreign key (ABO_ID_ABONNEMENT)
      references ABONNEMENT (ID_ABONNEMENT) on delete restrict on update restrict;

alter table POSSEDE_FACTURE add constraint FK_POSSEDE_FACTURE foreign key (USE_USER_ID)
      references USER_FAI (USER_ID) on delete restrict on update restrict;

alter table POSSEDE_FACTURE add constraint FK_POSSEDE_FACTURE2 foreign key (FAC_ID_FACTURE)
      references FACTURE (ID_FACTURE) on delete restrict on update restrict;

alter table POSSEDE_MAIL_ADDRESSE add constraint FK_POSSEDE_MAIL_ADDRESSE foreign key (MAI_ID_MAIL_ADDRESSES)
      references MAIL_ADDRESSE (ID_MAIL_ADDRESSES) on delete restrict on update restrict;

alter table POSSEDE_MAIL_ADDRESSE add constraint FK_POSSEDE_MAIL_ADDRESSE2 foreign key (USE_USER_ID)
      references USER_FAI (USER_ID) on delete restrict on update restrict;

alter table POSSEDE_OPTION add constraint FK_POSSEDE_OPTION foreign key (OPT_ID_OPTION)
      references LIST_OPTIONS (ID_OPTION) on delete restrict on update restrict;

alter table POSSEDE_OPTION add constraint FK_POSSEDE_OPTION2 foreign key (USE_USER_ID)
      references USER_FAI (USER_ID) on delete restrict on update restrict;

