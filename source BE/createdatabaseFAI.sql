/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     20/01/2009 17:41:02                          */
/*==============================================================*/


drop table if exists ABONNEMENT_INTERNET;

drop table if exists ADRESSE;

drop table if exists ARTICLE;

drop table if exists BILL;

drop table if exists CATEGORIE;

drop table if exists CHAINE;

drop table if exists COMMAND;

drop table if exists COMMENTAIRE;

drop table if exists CUSTOMER;

drop table if exists FACTURE;

drop table if exists HAS_ARTICLE;

drop table if exists HAS_NETWORK_SOLUTION;

drop table if exists HAS_VOIP_APPEL;

drop table if exists HAS_VOIP_CONTACT;

drop table if exists HAS_VOIP_LIGNE;

drop table if exists MAIL_ADDRESSE;

drop table if exists NETWORK_SOLUTION;

drop table if exists NOTE;

drop table if exists PLAYLIST;

drop table if exists POSSEDE_FACTURE;

drop table if exists POSSEDE_MAIL_ADDRESSE;

drop table if exists TAG;

drop table if exists TRANSPORT;

drop table if exists USER_VOD;

drop table if exists USER_VOIP;

drop table if exists VIDEO;

drop table if exists VOD_ACHETER;

drop table if exists VOD_ASSOCIER;

drop table if exists VOD_ATTRIBUER;

drop table if exists VOD_CODIFIER;

drop table if exists VOD_CONTENIR;

drop table if exists VOD_ECRIRE;

drop table if exists VOD_LIER;

drop table if exists VOD_POSSEDE;

drop table if exists VOD_UPLOADER;

drop table if exists VOIP_APPEL;

drop table if exists VOIP_CONTACT;

drop table if exists VOIP_LIGNE;

drop table if exists VOIP_RSS;

/*==============================================================*/
/* Table: ABONNEMENT_INTERNET                                   */
/*==============================================================*/
create table ABONNEMENT_INTERNET
(
   ID_ABONNEMENT        bigint not null,
   NOM_ABONNEMENT       varchar(32),
   PRIX_DEVIS           float(8,2),
   OVERLOAD             float(8,2),
   DESCRIPTION_ABONNEMENT text,
   primary key (ID_ABONNEMENT)
);

/*==============================================================*/
/* Table: ADRESSE                                               */
/*==============================================================*/
create table ADRESSE
(
   ID_ADDRESS           bigint not null,
   VILLE                varchar(64),
   CP                   int,
   RUE                  varchar(64),
   DIGICOTE             varchar(16),
   SOCIETE              varchar(100),
   TYPE_ADDRESS         varchar(8),
   primary key (ID_ADDRESS)
);

/*==============================================================*/
/* Table: ARTICLE                                               */
/*==============================================================*/

--
-- Structure de la table `ARTICLE`
--

CREATE TABLE `ARTICLE` (
  `ID_ARTICLE` bigint(20) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `unit_price` double NOT NULL default '0',
  `stock` bigint(20) NOT NULL,
  PRIMARY KEY  (`ID_ARTICLE`)
); 

--
-- Contenu de la table `ARTICLE`
--

INSERT INTO `ARTICLE` (`ID_ARTICLE`, `name`, `type`, `description`, `unit_price`, `stock`) VALUES
(1, 'routeur X200', 'routeur', 'implémente les fonctions NAT, DHCP, ', 11, 120),
(2, 'switch 200', 'switch', '4 ports', 21, 130),
(3, 'routeur X800', 'routeur', 'routeur implémentant les fonctions NAT', 12, 149),
(4, 'switch 600', 'switch', '8 ports', 22, 150),
(5, 'hub a', 'hub', 'USB', 31, 120),
(6, 'hub b', 'hub', 'RJ45', 32, 130);

/*==============================================================*/
/* Table: BILL                                                  */
/*==============================================================*/
create table BILL
(
   ID_BILL              bigint not null,
   CUS_USER_ID          bigint not null,
   PRICE                float(8,2),
   BILL_FAI             float(8,2),
   BILL_VOD             float(8,2),
   BILL_VOIP            float(8,2),
   USER_ID              bigint,
   ID_BILL2             bigint,
   primary key (ID_BILL)
);

/*==============================================================*/
/* Table: CATEGORIE                                             */
/*==============================================================*/
create table CATEGORIE
(
   CATID                bigint not null,
   CATNOM               text,
   primary key (CATID)
);

/*==============================================================*/
/* Table: CHAINE                                                */
/*==============================================================*/
create table CHAINE
(
   CHAINEID             bigint not null,
   VODDESCRIPTION       text,
   VODADRESSE           text,
   VODNOM               text,
   primary key (CHAINEID)
);

/*==============================================================*/
/* Table: COMMAND                                               */
/*==============================================================*/
create table COMMAND
(
   ID_COMMAND           bigint not null,
   CUS_USER_ID          bigint not null,
   TRA_ID_TRANSPORT     bigint not null,
   ID_ADDRESS           bigint not null,
   AMOUNT_COMMAND       float(8,2),
   ID_ADDRESS_DELIVERY  bigint,
   STATE                varchar(16),
   USER_ID              bigint,
   ID_COMMAND2          bigint,
   ID_COMMAND3          bigint,
   ID_TRANSPORT         bigint,
   primary key (ID_COMMAND)
);

/*==============================================================*/
/* Table: COMMENTAIRE                                           */
/*==============================================================*/
create table COMMENTAIRE
(
   COMID                bigint not null,
   COMDATE              datetime,
   COMVALUE             text,
   primary key (COMID)
);

/*==============================================================*/
/* Table: CUSTOMER                                              */
/*==============================================================*/
create table CUSTOMER
(
   USER_ID              bigint not null,
   ID_VOIP              bigint,
   ADR_ID_ADDRESS       bigint not null,
   ABO_ID_ABONNEMENT    bigint,
   LOGIN                varchar(15),
   PASSWORD             varchar(15),
   NOM                  varchar(15),
   PRENOM               varchar(15),
   SEXE                 varchar(1),
   SOCIETE              varchar(100),
   MAIL                 varchar(32),
   USER_TYPE            varchar(15),
   ACCOUNT_LEVEL        smallint,
   DEBIT_VOD            float(8,2),
   TEL                  varchar(20),
   GSM                  varchar(20),
   BORN                 varchar(10),
   USER_ID2             bigint,
   ID_ABONNEMENT        bigint,
   USER_ID3             bigint,
   ID_ADDRESS           bigint,
   primary key (USER_ID)
);

/*==============================================================*/
/* Table: FACTURE                                               */
/*==============================================================*/
create table FACTURE
(
   ID_FACTURE           bigint not null,
   MONTANT              float(8,2),
   HAS_OPTION           bool,
   primary key (ID_FACTURE)
);

/*==============================================================*/
/* Table: HAS_ARTICLE                                           */
/*==============================================================*/
create table HAS_ARTICLE
(
   COM_ID_COMMAND       bigint not null,
   ART_ID_ARTICLE       bigint not null,
   ID_COMMAND           bigint,
   ID_ARTICLE           bigint,
   primary key (COM_ID_COMMAND, ART_ID_ARTICLE)
);

/*==============================================================*/
/* Table: HAS_NETWORK_SOLUTION                                  */
/*==============================================================*/
create table HAS_NETWORK_SOLUTION
(
   NET_ID_SOLUTION      bigint not null,
   COM_ID_COMMAND       bigint not null,
   ID_COMMAND           bigint,
   ID_SOLUTION          bigint,
   primary key (NET_ID_SOLUTION, COM_ID_COMMAND)
);

/*==============================================================*/
/* Table: HAS_VOIP_APPEL                                        */
/*==============================================================*/
create table HAS_VOIP_APPEL
(
   VOI_VOIP_APPEL_ID    bigint not null,
   VOI_VOIP_LIGNE_ID    bigint not null,
   VOIP_LIGNE_ID        bigint,
   VOIP_APPEL_ID        bigint,
   primary key (VOI_VOIP_APPEL_ID, VOI_VOIP_LIGNE_ID)
);

/*==============================================================*/
/* Table: HAS_VOIP_LIGNE                                        */
/*==============================================================*/
create table HAS_VOIP_LIGNE
(
   USE_ID_VOIP          bigint not null,
   VOI_VOIP_LIGNE_ID    bigint not null,
   ID_VOIP              bigint,
   VOIP_LIGNE_ID        bigint,
   primary key (USE_ID_VOIP, VOI_VOIP_LIGNE_ID)
);

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
/* Table: NETWORK_SOLUTION                                      */
/*==============================================================*/
create table NETWORK_SOLUTION
(
   ID_SOLUTION          bigint not null,
   TYPE                 varchar(15),
   DESCRIPTION          text,
   PRIX_DEVIS           float(8,2),
   primary key (ID_SOLUTION)
);

/*==============================================================*/
/* Table: NOTE                                                  */
/*==============================================================*/
create table NOTE
(
   NOTEID               bigint not null,
   VALEUR               smallint,
   primary key (NOTEID)
);

/*==============================================================*/
/* Table: PLAYLIST                                              */
/*==============================================================*/
create table PLAYLIST
(
   PLAYLIST_ID          bigint not null,
   PLAYLIST_NOM         text,
   primary key (PLAYLIST_ID)
);

/*==============================================================*/
/* Table: POSSEDE_FACTURE                                       */
/*==============================================================*/
create table POSSEDE_FACTURE
(
   CUS_USER_ID          bigint not null,
   FAC_ID_FACTURE       bigint not null,
   USER_ID              bigint,
   ID_FACTURE           bigint,
   primary key (CUS_USER_ID, FAC_ID_FACTURE)
);

/*==============================================================*/
/* Table: POSSEDE_MAIL_ADDRESSE                                 */
/*==============================================================*/
create table POSSEDE_MAIL_ADDRESSE
(
   MAI_ID_MAIL_ADDRESSES bigint not null,
   CUS_USER_ID          bigint not null,
   USER_ID              bigint,
   ID_MAIL_ADDRESSES    bigint,
   primary key (MAI_ID_MAIL_ADDRESSES, CUS_USER_ID)
);

/*==============================================================*/
/* Table: TAG                                                   */
/*==============================================================*/
create table TAG
(
   TAGID                bigint not null,
   TAGVALUE             text,
   SEARCHCOUNTER        int,
   primary key (TAGID)
);

/*==============================================================*/
/* Table: TRANSPORT                                             */
/*==============================================================*/
create table TRANSPORT
(
   ID_TRANSPORT         bigint not null,
   NAME                 varchar(32),
   primary key (ID_TRANSPORT)
);

/*==============================================================*/
/* Table: USER_VOD                                              */
/*==============================================================*/
create table USER_VOD
(
   ID_VOD               bigint not null,
   USER_ID              bigint not null,
   VOD_LOGIN            text,
   VOD_PASSWORD         text,
   VOD_MAIL             text,
   primary key (ID_VOD)
);

/*==============================================================*/
/* Table: USER_VOIP                                             */
/*==============================================================*/
create table USER_VOIP
(
   ID_VOIP              bigint not null,
   primary key (ID_VOIP)
);

/*==============================================================*/
/* Table: VIDEO                                                 */
/*==============================================================*/
create table VIDEO
(
   VIDEOID              bigint not null,
   VIDEODUREE           time,
   VIDEODATE            datetime,
   VIDEONOM             text,
   WATCHCOUNTER         bigint,
   VIDEOPRICE           float(8,2),
   primary key (VIDEOID)
);

/*==============================================================*/
/* Table: VOD_ACHETER                                           */
/*==============================================================*/
create table VOD_ACHETER
(
   VID_VIDEOID          bigint not null,
   USE_ID_VOD           bigint not null,
   ID_VOD               bigint,
   VIDEOID              bigint,
   primary key (VID_VIDEOID, USE_ID_VOD)
);

/*==============================================================*/
/* Table: VOD_ASSOCIER                                          */
/*==============================================================*/
create table VOD_ASSOCIER
(
   VID_VIDEOID          bigint not null,
   COM_COMID            bigint not null,
   COMID                bigint,
   VIDEOID              bigint,
   primary key (VID_VIDEOID, COM_COMID)
);

/*==============================================================*/
/* Table: VOD_ATTRIBUER                                         */
/*==============================================================*/
create table VOD_ATTRIBUER
(
   NOT_NOTEID           bigint not null,
   USE_ID_VOD           bigint not null,
   ID_VOD               bigint,
   NOTEID               bigint,
   primary key (NOT_NOTEID, USE_ID_VOD)
);

/*==============================================================*/
/* Table: VOD_CODIFIER                                          */
/*==============================================================*/
create table VOD_CODIFIER
(
   VID_VIDEOID          bigint not null,
   NOT_NOTEID           bigint not null,
   VIDEOID              bigint,
   NOTEID               bigint,
   primary key (VID_VIDEOID, NOT_NOTEID)
);

/*==============================================================*/
/* Table: VOD_CONTENIR                                          */
/*==============================================================*/
create table VOD_CONTENIR
(
   TAG_TAGID            bigint not null,
   VID_VIDEOID          bigint not null,
   VIDEOID              bigint,
   TAGID                bigint,
   primary key (TAG_TAGID, VID_VIDEOID)
);

/*==============================================================*/
/* Table: VOD_ECRIRE                                            */
/*==============================================================*/
create table VOD_ECRIRE
(
   USE_ID_VOD           bigint not null,
   COM_COMID            bigint not null,
   ID_VOD               bigint,
   COMID                bigint,
   primary key (USE_ID_VOD, COM_COMID)
);

/*==============================================================*/
/* Table: VOD_LIER                                              */
/*==============================================================*/
create table VOD_LIER
(
   CAT_CATID            bigint not null,
   VID_VIDEOID          bigint not null,
   VIDEOID              bigint,
   CATID                bigint,
   primary key (CAT_CATID, VID_VIDEOID)
);

/*==============================================================*/
/* Table: VOD_POSSEDE                                           */
/*==============================================================*/
create table VOD_POSSEDE
(
   PLA_PLAYLIST_ID      bigint not null,
   USE_ID_VOD           bigint not null,
   ID_VOD               bigint,
   PLAYLIST_ID          bigint,
   primary key (PLA_PLAYLIST_ID, USE_ID_VOD)
);

/*==============================================================*/
/* Table: VOD_UPLOADER                                          */
/*==============================================================*/
create table VOD_UPLOADER
(
   VID_VIDEOID          bigint not null,
   USE_ID_VOD           bigint not null,
   ID_VOD               bigint,
   VIDEOID              bigint,
   primary key (VID_VIDEOID, USE_ID_VOD)
);

/*==============================================================*/
/* Table: VOIP_APPEL                                            */
/*==============================================================*/
create table VOIP_APPEL
(
   VOIP_APPEL_ID        bigint not null,
   primary key (VOIP_APPEL_ID)
);

/*==============================================================*/
/* Table: VOIP_CONTACT                                          */
/*==============================================================*/
create table VOIP_CONTACT
(
   VOIP_CONTACT_ID      bigint not null,
   TITRE                varchar(15),
   CATEGORIE            varchar(15),
   NOM                  varchar(15),
   PRENOM               varchar(15),
   MAIL                 varchar(15),
   TELEPHONE            varchar(15),
   ID_VOIP              bigint not null,
   primary key (VOIP_CONTACT_ID,ID_VOIP)
);

/*==============================================================*/
/* Table: VOIP_LIGNE                                            */
/*==============================================================*/
create table VOIP_LIGNE
(
   VOIP_LIGNE_ID        bigint not null,
   primary key (VOIP_LIGNE_ID)
);

/*==============================================================*/
/* Table: VOIP_RSS                                              */
/*==============================================================*/
create table VOIP_RSS
(
   VOIP_RSS_ID          bigint not null,
   VOI_VOIP_LIGNE_ID    bigint not null,
   VOIP_LIGNE_ID        bigint,
   VOIP_RSS_ID2         bigint,
   primary key (VOIP_RSS_ID)
);

alter table BILL add constraint FK_HAS_BILL foreign key (CUS_USER_ID)
      references CUSTOMER (USER_ID) on delete restrict on update restrict;

alter table COMMAND add constraint FK_HAS_COMMAND foreign key (CUS_USER_ID)
      references CUSTOMER (USER_ID) on delete restrict on update restrict;

alter table COMMAND add constraint FK_HAS_DELIVERY_ADDRESS foreign key (ID_ADDRESS)
      references ADRESSE (ID_ADDRESS) on delete restrict on update restrict;

alter table COMMAND add constraint FK_HAS_TRANSPORT foreign key (TRA_ID_TRANSPORT)
      references TRANSPORT (ID_TRANSPORT) on delete restrict on update restrict;

alter table CUSTOMER add constraint FK_HAS_AN_ADDRESS foreign key (ADR_ID_ADDRESS)
      references ADRESSE (ID_ADDRESS) on delete restrict on update restrict;

alter table CUSTOMER add constraint FK_POSSEDE_ABONNEMENT_INTERNET foreign key (ABO_ID_ABONNEMENT)
      references ABONNEMENT_INTERNET (ID_ABONNEMENT) on delete restrict on update restrict;

alter table CUSTOMER add constraint FK_POSSEDE_ABONNEMENT_VOIP foreign key (ID_VOIP)
      references USER_VOIP (ID_VOIP) on delete restrict on update restrict;

alter table HAS_ARTICLE add constraint FK_HAS_ARTICLE foreign key (COM_ID_COMMAND)
      references COMMAND (ID_COMMAND) on delete restrict on update restrict;

alter table HAS_ARTICLE add constraint FK_HAS_ARTICLE2 foreign key (ART_ID_ARTICLE)
      references ARTICLE (ID_ARTICLE) on delete restrict on update restrict;

alter table HAS_NETWORK_SOLUTION add constraint FK_HAS_NETWORK_SOLUTION foreign key (NET_ID_SOLUTION)
      references NETWORK_SOLUTION (ID_SOLUTION) on delete restrict on update restrict;

alter table HAS_NETWORK_SOLUTION add constraint FK_HAS_NETWORK_SOLUTION2 foreign key (COM_ID_COMMAND)
      references COMMAND (ID_COMMAND) on delete restrict on update restrict;

alter table HAS_VOIP_APPEL add constraint FK_HAS_VOIP_APPEL foreign key (VOI_VOIP_APPEL_ID)
      references VOIP_APPEL (VOIP_APPEL_ID) on delete restrict on update restrict;

alter table HAS_VOIP_APPEL add constraint FK_HAS_VOIP_APPEL2 foreign key (VOI_VOIP_LIGNE_ID)
      references VOIP_LIGNE (VOIP_LIGNE_ID) on delete restrict on update restrict;

alter table HAS_VOIP_CONTACT add constraint FK_HAS_VOIP_CONTACT foreign key (USE_ID_VOIP)
      references USER_VOIP (ID_VOIP) on delete restrict on update restrict;

alter table HAS_VOIP_CONTACT add constraint FK_HAS_VOIP_CONTACT2 foreign key (VOI_VOIP_CONTACT_ID)
      references VOIP_CONTACT (VOIP_CONTACT_ID) on delete restrict on update restrict;

alter table HAS_VOIP_LIGNE add constraint FK_HAS_VOIP_LIGNE foreign key (USE_ID_VOIP)
      references USER_VOIP (ID_VOIP) on delete restrict on update restrict;

alter table HAS_VOIP_LIGNE add constraint FK_HAS_VOIP_LIGNE2 foreign key (VOI_VOIP_LIGNE_ID)
      references VOIP_LIGNE (VOIP_LIGNE_ID) on delete restrict on update restrict;

alter table POSSEDE_FACTURE add constraint FK_POSSEDE_FACTURE foreign key (CUS_USER_ID)
      references CUSTOMER (USER_ID) on delete restrict on update restrict;

alter table POSSEDE_FACTURE add constraint FK_POSSEDE_FACTURE2 foreign key (FAC_ID_FACTURE)
      references FACTURE (ID_FACTURE) on delete restrict on update restrict;

alter table POSSEDE_MAIL_ADDRESSE add constraint FK_POSSEDE_MAIL_ADDRESSE foreign key (MAI_ID_MAIL_ADDRESSES)
      references MAIL_ADDRESSE (ID_MAIL_ADDRESSES) on delete restrict on update restrict;

alter table POSSEDE_MAIL_ADDRESSE add constraint FK_POSSEDE_MAIL_ADDRESSE2 foreign key (CUS_USER_ID)
      references CUSTOMER (USER_ID) on delete restrict on update restrict;

alter table USER_VOD add constraint FK_POSSEDE_ABONNEMENT_VOD foreign key (USER_ID)
      references CUSTOMER (USER_ID) on delete restrict on update restrict;

alter table VOD_ACHETER add constraint FK_VOD_ACHETER foreign key (VID_VIDEOID)
      references VIDEO (VIDEOID) on delete restrict on update restrict;

alter table VOD_ACHETER add constraint FK_VOD_ACHETER2 foreign key (USE_ID_VOD)
      references USER_VOD (ID_VOD) on delete restrict on update restrict;

alter table VOD_ASSOCIER add constraint FK_VOD_ASSOCIER foreign key (VID_VIDEOID)
      references VIDEO (VIDEOID) on delete restrict on update restrict;

alter table VOD_ASSOCIER add constraint FK_VOD_ASSOCIER2 foreign key (COM_COMID)
      references COMMENTAIRE (COMID) on delete restrict on update restrict;

alter table VOD_ATTRIBUER add constraint FK_VOD_ATTRIBUER foreign key (NOT_NOTEID)
      references NOTE (NOTEID) on delete restrict on update restrict;

alter table VOD_ATTRIBUER add constraint FK_VOD_ATTRIBUER2 foreign key (USE_ID_VOD)
      references USER_VOD (ID_VOD) on delete restrict on update restrict;

alter table VOD_CODIFIER add constraint FK_VOD_CODIFIER foreign key (VID_VIDEOID)
      references VIDEO (VIDEOID) on delete restrict on update restrict;

alter table VOD_CODIFIER add constraint FK_VOD_CODIFIER2 foreign key (NOT_NOTEID)
      references NOTE (NOTEID) on delete restrict on update restrict;

alter table VOD_CONTENIR add constraint FK_VOD_CONTENIR foreign key (TAG_TAGID)
      references TAG (TAGID) on delete restrict on update restrict;

alter table VOD_CONTENIR add constraint FK_VOD_CONTENIR2 foreign key (VID_VIDEOID)
      references VIDEO (VIDEOID) on delete restrict on update restrict;

alter table VOD_ECRIRE add constraint FK_VOD_ECRIRE foreign key (USE_ID_VOD)
      references USER_VOD (ID_VOD) on delete restrict on update restrict;

alter table VOD_ECRIRE add constraint FK_VOD_ECRIRE2 foreign key (COM_COMID)
      references COMMENTAIRE (COMID) on delete restrict on update restrict;

alter table VOD_LIER add constraint FK_VOD_LIER foreign key (CAT_CATID)
      references CATEGORIE (CATID) on delete restrict on update restrict;

alter table VOD_LIER add constraint FK_VOD_LIER2 foreign key (VID_VIDEOID)
      references VIDEO (VIDEOID) on delete restrict on update restrict;

alter table VOD_POSSEDE add constraint FK_VOD_POSSEDE foreign key (PLA_PLAYLIST_ID)
      references PLAYLIST (PLAYLIST_ID) on delete restrict on update restrict;

alter table VOD_POSSEDE add constraint FK_VOD_POSSEDE2 foreign key (USE_ID_VOD)
      references USER_VOD (ID_VOD) on delete restrict on update restrict;

alter table VOD_UPLOADER add constraint FK_VOD_UPLOADER foreign key (VID_VIDEOID)
      references VIDEO (VIDEOID) on delete restrict on update restrict;

alter table VOD_UPLOADER add constraint FK_VOD_UPLOADER2 foreign key (USE_ID_VOD)
      references USER_VOD (ID_VOD) on delete restrict on update restrict;

alter table VOIP_RSS add constraint FK_HAS_VOIP_RSS foreign key (VOI_VOIP_LIGNE_ID)
      references VOIP_LIGNE (VOIP_LIGNE_ID) on delete restrict on update restrict;

