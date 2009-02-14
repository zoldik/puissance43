SET NAMES 'utf8';




INSERT INTO `item` (`id_item`, `name`, `type`, `description`, `unit_price`, `stock`) VALUES
(1, 'routeur X200', 'routeur', 'implémente les fonctions NAT, DHCP, ', 11, 120),
(2, 'switch 200', 'switch', '4 ports', 21, 130),
(3, 'routeur X800', 'routeur', 'routeur implémentant les fonctions NAT', 12, 149),
(4, 'switch 600', 'switch', '8 ports', 22, 150),
(5, 'hub a', 'hub', 'USB', 31, 120),
(6, 'hub b', 'hub', 'RJ45', 32, 130),
(7, 'hub c', 'hub', 'RJ45', 33, 140);

INSERT INTO `customer` (
`id_customer` , 
`id_address` ,
`id_internet_subscribe` ,
`id_voip_subscribe` ,
`id_vod_subscribe` ,
`first_name` ,
`last_name` ,
`login` ,
`password`,
`mail` ,
`sexe` ,
`birthday` ,
`phone` ,
`cell_phone` ,
`profession` ,
`company` ,
`account_level` ,
`valid` ,
`state_internet_subscribe` ,
`state_voip_subscribe` ,
`state_vod_subscribe`
) VALUES
(99 ,'',NULL,NULL,NULL ,'Compte','non validé','user','pwd','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',0,0,NULL,NULL,NULL),
(100 ,'',NULL,NULL,NULL ,'Utilisateur','sans abonnement','user0','pwd0','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',0,1,NULL,NULL,NULL),
(101 ,'',NULL,NULL,NULL ,'Utilisateur','VoIP','user1','pwd1','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',1,1,NULL,NULL,NULL),
(102 ,'',NULL,NULL,NULL ,'Utilisateur','VOD','user2','pwd2','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',2,1,NULL,NULL,NULL),
(103 ,'',NULL,NULL,NULL ,'Utilisateur','VOD+VoIP','user3','pwd3','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',3,1,NULL,NULL,NULL),
(104 ,'',NULL,NULL,NULL ,'Utilisateur','FAI','user4','pwd4','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',4,1,NULL,NULL,NULL),
(105 ,'',NULL,NULL,NULL ,'Utilisateur','FAI+VoIP','user5','pwd5','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',5,1,NULL,NULL,NULL),
(106 ,'',NULL,NULL,NULL ,'Utilisateur','FAI+VOD','user6','pwd6','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',6,1,NULL,NULL,NULL),
(107 ,'',NULL,NULL,NULL ,'Utilisateur','TriplePlay','user7','pwd7','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',7,1,NULL,NULL,NULL),
(108 ,'',NULL,NULL,NULL ,'Admin','VoIP','admin1','admin1','admin1@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',8,1,NULL,NULL,NULL),
(109 ,'',2,NULL,NULL ,'Utilisateur','ss ab attente ab Internet','user0>4','pwd0>4','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',0,1,0,NULL,NULL),
(110 ,'',NULL,3,NULL ,'Utilisateur','ss ab attente ab Voip','user0>1','pwd0>1','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',0,1,NULL,0,NULL),
(111 ,'',NULL,NULL,1 ,'Utilisateur','ss ab attente ab Vod','user0>2','pwd0>2','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',0,1,NULL,NULL,0);



INSERT INTO `voip_rss` (
`id_voip_rss` ,
`id_voip_line` ,
`url` ,
`update_rss`
) VALUES
(1, 3, 'rss_voip_line_6008.xml', 1 ),
(2, 5, 'rss_voip_line_6020.xml', 0 ),
(3, 4, 'rss_voip_line_6021.xml', 1 );

INSERT INTO `voip_line` (`id_voip_line`, `id_customer`, `name`, `host`, `call-limit`, `type`, `accountcode`, `amaflags`, `callgroup`, `callerid`, `cancallforward`, `canreinvite`, `context`, `defaultip`, `dtmfmode`, `fromuser`, `fromdomain`, `insecure`, `language`, `mailbox`, `md5secret`, `deny`, `permit`, `mask`, `musiconhold`, `pickupgroup`, `qualify`, `regexten`, `restrictcid`, `rtptimeout`, `rtpholdtimeout`, `secret`, `setvar`, `disallow`, `allow`, `fullcontact`, `ipaddr`, `port`, `regserver`, `regseconds`, `username`, `nat`, `visible`) VALUES
(1, 1, '4000', 'dynamic', NULL, 'friend', NULL, NULL, NULL, '"francois kan" <4000>', NULL, NULL, 'DLPN_VOIP', NULL, 'rfc2833', NULL, NULL, NULL, 'fr', '4000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4000', 'no', 0),
(2, 1, '4001', 'dynamic', NULL, 'friend', NULL, NULL, NULL, '"valerie kan" <4000>', NULL, NULL, 'DLPN_voip', NULL, 'rfc2833', NULL, NULL, NULL, 'fr', '4001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4001', 'no', 0),
(3, 101, '6008', 'dynamic', NULL, 'friend', NULL, NULL, NULL, '"Utilisateur VoIP" <6008>', NULL, NULL, 'DLPN_VOIP', NULL, 'rfc2833', NULL, NULL, NULL, 'fr', '6008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6008', 'no', 0),
(4, 105, '6021', 'dynamic', NULL, 'friend', NULL, NULL, NULL, '"Utilisateur FAIVoIP" <6021>', NULL, NULL, 'DLPN_voip', NULL, 'rfc2833', NULL, NULL, NULL, 'fr', '6021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6021', 'no', 0),
(5, 107, '6020', 'dynamic', NULL, 'friend', NULL, NULL, NULL, '"Utilisateur TriplePlay" <6020>', NULL, NULL, 'DLPN_VOIP', NULL, 'rfc2833', NULL, NULL, NULL, 'fr', '6020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6020', 'no', 0);



INSERT INTO `internet_subscribe` (
`name_subscribe` ,
`description_subscribe` ,
`price` ,
`overload` ,
`rate`
)
VALUES (
'bronze', 'abonnement internet de faible qualité', '10', NULL , '5 Mbps');


INSERT INTO `internet_subscribe` (
`name_subscribe` ,
`description_subscribe` ,
`price` ,
`overload` ,
`rate`
)
VALUES (
'silver', 'abonnement internet de moyenne qualité', '20', NULL , '10 Mbps');


INSERT INTO `internet_subscribe` (
`name_subscribe` ,
`description_subscribe` ,
`price` ,
`overload` ,
`rate`
)
VALUES (
'golden', 'abonnement internet de haute qualité', '30', NULL , '20 Mbps');




INSERT INTO `vod_subscribe` (
`name_vod_subscribe` ,
`description_vod_subscribe` ,
`price` ,
`type_vod_subscribe`
)
VALUES (
'serie', 'abonnement au séries débiles', '50', 'particulier');


INSERT INTO `vod_subscribe` (
`name_vod_subscribe` ,
`description_vod_subscribe` ,
`price` ,
`type_vod_subscribe`
)
VALUES (
'film de formation', 'film sur comment améliorer la productivité en entreprise', '100', 'entreprise');


INSERT INTO `vod_subscribe` (
`name_vod_subscribe` ,
`description_vod_subscribe` ,
`price` ,
`type_vod_subscribe`
)
VALUES (
'films actions', 'batman, spiderman', '40', 'particulier');




INSERT INTO `voip_subscribe` (
`name_voip_subscribe` ,
`description_voip_subscribe` ,
`price` ,
`type_voip_subscribe`
)
VALUES (
'appels dans lentreprise', 'vous avez déjà des équipements', '1000', 'entreprise');


INSERT INTO `voip_subscribe` (
`name_voip_subscribe` ,
`description_voip_subscribe` ,
`price` ,
`type_voip_subscribe`
)
VALUES (
'appels perso', 'super offre', '40', 'particulier');




INSERT INTO `cdr` (`calldate`, `clid`, `src`, `dst`, `dcontext`, `channel`, `dstchannel`, `lastapp`, `lastdata`, `duration`, `billsec`, `disposition`, `amaflags`, `accountcode`, `uniqueid`, `userfield`) VALUES
('2009-02-05 14:38:02', '"Pierre Vandenbussche" <6003>', '6003', '6000', 'DLPN_DialPlan1', 'SIP/6003-090c47c8', '', 'VoiceMail', '6000|u', 5, 4, 'ANSWERED', 3, '', '1233841082.1', ''),
('2009-02-06 10:21:12', '"francois kan" <6020>', '6020', '6000', 'DLPN_DialPlan1', 'SIP/6020-086d2c48', 'SIP/6000-086e5620', 'VoiceMail', '6000|b', 10, 8, 'ANSWERED', 3, '', '1233912072.0', ''),
('2009-02-06 10:41:55', '"Server" <6000>', '6000', '6020', 'DLPN_DialPlan1', 'SIP/6000-086ab6d8', 'SIP/6020-086acc68', 'Dial', 'SIP/6020|20|rt', 30, 14, 'ANSWERED', 3, '', '1233913315.2', ''),
('2009-02-06 10:52:21', '"francois kan" <6020>', '6020', '6000', 'DLPN_DialPlan1', 'SIP/6020-086ab6d8', 'SIP/6000-086acc68', 'VoiceMail', '6000|b', 23, 7, 'ANSWERED', 3, '', '1233913941.6', ''),
('2009-02-06 11:32:35', '"Pierre Vandenbussche" <6003>', '6003', '6020', 'DLPN_DialPlan1', 'SIP/6003-b6a00b08', 'SIP/6020-0865c2d8', 'Dial', 'SIP/6020|20|rt', 21, 18, 'ANSWERED', 3, '', '1233916355.8', ''),
('2009-02-06 11:33:50', '"Pierre Vandenbussche" <6003>', '6003', '6020', 'DLPN_DialPlan1', 'SIP/6003-0865c2d8', 'SIP/6020-086ca810', 'Dial', 'SIP/6020|20|rt', 11, 9, 'ANSWERED', 3, '', '1233916430.10', ''),
('2009-02-06 11:35:28', '"francois kan" <6020>', '6020', '6003', 'DLPN_DialPlan1', 'SIP/6020-0865c2d8', 'SIP/6003-086ca810', 'Dial', 'SIP/6003|20|tThHkK', 12, 0, 'NO ANSWER', 3, '', '1233916528.12', ''),
('2009-02-06 11:35:59', '"Server" <6000>', '6000', '6003', 'DLPN_DialPlan1', 'SIP/6000-0865c2d8', 'SIP/6003-0866dec0', 'Dial', 'SIP/6003|20|tThHkK', 4, 0, 'NO ANSWER', 3, '', '1233916559.14', ''),
('2009-02-06 11:36:35', '"Server" <6000>', '6000', '6003', 'DLPN_DialPlan1', 'SIP/6000-0866dec0', 'SIP/6003-086d8a38', 'Dial', 'SIP/6003|20|tThHkK', 14, 11, 'ANSWERED', 3, '', '1233916595.16', ''),
('2009-02-06 11:38:02', '"Server" <6000>', '6000', '6020', 'DLPN_DialPlan1', 'SIP/6000-0866dec0', 'SIP/6020-086d8a38', 'Dial', 'SIP/6020|20|rt', 2, 0, 'BUSY', 3, '', '1233916682.18', ''),
('2009-02-06 11:38:12', '"Server" <6000>', '6000', '6020', 'DLPN_DialPlan1', 'SIP/6000-0866dec0', 'SIP/6020-086d8a38', 'Dial', 'SIP/6020|20|rt', 4, 3, 'ANSWERED', 3, '', '1233916692.20', ''),
('2009-02-06 11:40:21', '"Pierre Vandenbussche" <6003>', '6003', '6020', 'DLPN_DialPlan1', 'SIP/6003-086ca810', 'SIP/6020-086d8a38', 'Dial', 'SIP/6020|20|rt', 12, 10, 'ANSWERED', 3, '', '1233916821.22', ''),
('2009-02-06 11:44:26', '"Pierre Vandenbussche" <6003>', '6003', '6000', 'DLPN_DialPlan1', 'SIP/6003-0866dec0', 'SIP/6000-086d8a38', 'Dial', 'SIP/6000|20|tThHkK', 153, 134, 'ANSWERED', 3, '', '1233917066.24', ''),
('2009-02-06 11:47:47', '"Server" <6000>', '6000', '6003', 'DLPN_DialPlan1', 'SIP/6000-0865c2d8', 'SIP/6003-0866dec0', 'Dial', 'SIP/6003|20|tThHkK', 78, 66, 'ANSWERED', 3, '', '1233917267.26', ''),
('2009-02-06 12:33:08', '"philippe" <6021>', '6021', '6000', 'DLPN_DialPlan1', 'SIP/6021-086cbfa8', 'SIP/6000-086db558', 'Dial', 'SIP/6000|20|tThHkK', 17, 6, 'ANSWERED', 3, '', '1233919988.28', ''),
('2009-02-06 12:33:42', '"philippe" <6021>', '6021', '6020', 'DLPN_DialPlan1', 'SIP/6021-086d6050', 'SIP/6020-0865c2d8', 'Dial', 'SIP/6020|20|rt', 15, 3, 'ANSWERED', 3, '', '1233920022.30', ''),
('2009-02-06 12:34:08', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-086d6050', '', 'VoiceMailMain', '6021@default', 31, 31, 'ANSWERED', 3, '', '1233920048.32', ''),
('2009-02-06 12:34:49', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-086d6050', '', 'VoiceMailMain', '6021@default', 62, 62, 'ANSWERED', 3, '', '1233920089.33', ''),
('2009-02-06 12:36:46', '"philippe" <6021>', '6021', '6000', 'DLPN_DialPlan1', 'SIP/6021-086d6050', 'SIP/6000-0865c2d8', 'Dial', 'SIP/6000|20|tThHkK', 3, 0, 'NO ANSWER', 3, '', '1233920206.34', ''),
('2009-02-06 12:37:00', '"philippe" <6021>', '6021', '6000', 'DLPN_DialPlan1', 'SIP/6021-086d6050', 'SIP/6000-0865c2d8', 'Dial', 'SIP/6000|20|tThHkK', 14, 3, 'ANSWERED', 3, '', '1233920220.36', ''),
('2009-02-06 12:37:42', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-086d6050', '', 'VoiceMailMain', '6021@default', 149, 149, 'ANSWERED', 3, '', '1233920262.38', ''),
('2009-02-06 12:40:55', '"francois kan" <6020>', '6020', '6021', 'DLPN_DialPlan1', 'SIP/6020-0865c2d8', 'SIP/6021-086cbfa8', 'Dial', 'SIP/6021|20|rt', 15, 9, 'ANSWERED', 3, '', '1233920455.40', ''),
('2009-02-06 12:40:22', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-086d6050', '', 'VoiceMailMain', '6021@default', 107, 107, 'ANSWERED', 3, '', '1233920422.39', ''),
('2009-02-06 12:43:26', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-09b40478', '', 'VoiceMailMain', '6021@default', 62, 62, 'ANSWERED', 3, '', '1233920606.0', ''),
('2009-02-06 12:44:51', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-09af6498', '', 'VoiceMailMain', '6021@default', 47, 47, 'ANSWERED', 3, '', '1233920691.0', ''),
('2009-02-06 12:45:47', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-0a224e88', '', 'VoiceMailMain', '6021@default', 50, 50, 'ANSWERED', 3, '', '1233920747.0', ''),
('2009-02-06 12:49:13', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-0a39d4a0', '', 'VoiceMailMain', '6021@default', 39, 39, 'ANSWERED', 3, '', '1233920953.0', ''),
('2009-02-06 12:49:56', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-0a39d4a0', '', 'VoiceMailMain', '6021@default', 36, 36, 'ANSWERED', 3, '', '1233920996.1', ''),
('2009-02-06 12:51:39', '"francois kan" <6020>', '6020', '6021', 'DLPN_DialPlan1', 'SIP/6020-0a39d4a0', 'SIP/6021-0a3b2a60', 'Dial', 'SIP/6021|20|rt', 20, 0, 'NO ANSWER', 3, '', '1233921099.2', ''),
('2009-02-06 12:52:25', '"philippe" <6021>', '6021', '6000', 'DLPN_DialPlan1', 'SIP/6021-0a3b2a60', 'SIP/6000-0a3a1b40', 'VoiceMail', '6000|b', 14, 13, 'ANSWERED', 3, '', '1233921145.4', ''),
('2009-02-06 12:52:41', '"philippe" <6021>', '6021', '6000', 'DLPN_DialPlan1', 'SIP/6021-0a39d4a0', 'SIP/6000-0a3b2a60', 'Goto', 'default|s|1', 25, 22, 'ANSWERED', 3, '', '1233921161.6', ''),
('2009-02-06 12:54:49', '"francois kan" <6020>', '6020', '6021', 'DLPN_DialPlan1', 'SIP/6020-0a312e58', 'SIP/6021-0a3a85d8', 'Dial', 'SIP/6021|20|rt', 2, 0, 'BUSY', 3, '', '1233921289.11', ''),
('2009-02-06 12:55:27', '"francois kan" <6020>', '6020', '6021', 'DLPN_DialPlan1', 'SIP/6020-0a39d4a0', 'SIP/6021-0a312e58', 'Dial', 'SIP/6021|20|rt', 14, 0, 'NO ANSWER', 3, '', '1233921327.13', ''),
('2009-02-06 12:55:43', '"francois kan" <6020>', '6020', '6021', 'DLPN_DialPlan1', 'SIP/6020-0a312e58', 'SIP/6021-0a39d4a0', 'Dial', 'SIP/6021|20|rt', 5, 0, 'NO ANSWER', 3, '', '1233921343.15', ''),
('2009-02-06 12:55:59', '"francois kan" <6020>', '6020', '6021', 'DLPN_DialPlan1', 'SIP/6020-0a312e58', 'SIP/6021-0a39d4a0', 'Dial', 'SIP/6021|20|rt', 12, 0, 'BUSY', 3, '', '1233921359.17', ''),
('2009-02-06 12:56:18', '"francois kan" <6020>', '6020', '6000', 'DLPN_DialPlan1', 'SIP/6020-0a312e58', 'SIP/6000-0a39d4a0', 'Goto', 'default|s|1', 24, 21, 'ANSWERED', 3, '', '1233921378.19', ''),
('2009-02-06 12:59:25', '"philippe" <6021>', '6021', '6000', 'DLPN_DialPlan1', 'SIP/6021-0a312e58', 'SIP/6000-0a39d4a0', 'VoiceMail', '6000|b', 19, 8, 'ANSWERED', 3, '', '1233921565.24', ''),
('2009-02-06 13:02:35', '"Server" <6000>', '6000', '6021', 'DLPN_DialPlan1', 'SIP/6000-0a312e58', 'SIP/6021-0a39d4a0', 'Dial', 'SIP/6021|20|rt', 1, 0, 'BUSY', 3, '', '1233921755.26', ''),
('2009-02-06 13:03:01', '"philippe" <6021>', '6021', '6000', 'DLPN_DialPlan1', 'SIP/6021-0a312e58', 'SIP/6000-0a39d4a0', 'VoiceMail', '6000|b', 13, 2, 'ANSWERED', 3, '', '1233921781.28', ''),
('2009-02-06 13:05:12', '"philippe" <6021>', '6021', '6000', 'DLPN_DialPlan1', 'SIP/6021-09d4a420', 'SIP/6000-09d4f180', 'VoiceMail', '6000|b', 13, 12, 'ANSWERED', 3, '', '1233921912.0', ''),
('2009-02-06 13:46:34', '"francois kan" <6020>', '6020', '6400', 'DLPN_DialPlan1', 'SIP/6020-086a1428', '', 'MeetMe', '1124442687d|Aqxd', 4, 4, 'ANSWERED', 3, '', '1233924394.0', ''),
('2009-02-06 13:46:46', '"francois kan" <6020>', '6020', '6400', 'DLPN_DialPlan1', 'SIP/6020-086a1428', '', 'MeetMe', '2072888449d|Aqxd', 5, 4, 'ANSWERED', 3, '', '1233924406.2', ''),
('2009-02-06 13:47:12', '"francois kan" <6020>', '6020', '6400', 'DLPN_DialPlan1', 'SIP/6020-086a1428', '', 'MeetMe', '1525291594d|Aqxd', 5, 4, 'ANSWERED', 3, '', '1233924432.4', ''),
('2009-02-06 13:48:57', '"francois kan" <6020>', '6020', '6400', 'DLPN_DialPlan1', 'SIP/6020-086bc7f0', '', 'MeetMe', '1260702363d|Aqxd', 5, 5, 'ANSWERED', 3, '', '1233924537.6', ''),
('2009-02-06 13:51:20', '"philippe" <6021>', '6021', '6400', 'DLPN_DialPlan1', 'SIP/6021-093cd438', '', 'MeetMe', '943045594d|Aqxd', 4, 4, 'ANSWERED', 3, '', '1233924680.0', ''),
('2009-02-06 13:51:33', '"philippe" <6021>', '6021', '6300', 'DLPN_DialPlan1', 'SIP/6021-093cd438', '', 'MeetMe', '6300|MsIx', 4, 4, 'ANSWERED', 3, '', '1233924693.4', ''),
('2009-02-06 13:51:41', '"philippe" <6021>', '6021', '6200', 'DLPN_DialPlan1', 'SIP/6021-093cd438', '', 'MeetMe', '6300|MsIxaA', 4, 4, 'ANSWERED', 3, '', '1233924701.5', ''),
('2009-02-06 13:52:18', '"philippe" <6021>', '6021', '6200', 'DLPN_DialPlan1', 'SIP/6021-08a05448', '', 'MeetMe', '6300|MsIxaA', 4, 4, 'ANSWERED', 3, '', '1233924738.0', ''),
('2009-02-06 13:52:28', '"philippe" <6021>', '6021', '6300', 'DLPN_DialPlan1', 'SIP/6021-08a05448', '', 'MeetMe', '6300|MsIx', 4, 4, 'ANSWERED', 3, '', '1233924748.1', ''),
('2009-02-06 13:52:35', '"philippe" <6021>', '6021', '6400', 'DLPN_DialPlan1', 'SIP/6021-08a05448', '', 'MeetMe', '1051472555d|Aqxd', 4, 4, 'ANSWERED', 3, '', '1233924755.2', ''),
('2009-02-06 13:53:04', '"Mickael Libera" <6001>', '6001', '6400', 'DLPN_DialPlan1', 'SIP/6001-08a09eb8', '', 'MeetMe', '1479120549d|Aqxd', 5, 4, 'ANSWERED', 3, '', '1233924784.5', ''),
('2009-02-06 14:21:26', '"francois kan" <6020>', '6020', '6000', 'DLPN_DialPlan1', 'SIP/6020-08a05448', '', 'VoiceMail', '6000|u', 3, 3, 'ANSWERED', 3, '', '1233926486.7', ''),
('2009-02-06 14:36:13', '"francois kan" <6020>', '6020', '6000', 'DLPN_DialPlan1', 'SIP/6020-087875b8', '', 'VoiceMail', '6000|u', 6, 6, 'ANSWERED', 3, '', '1233927373.0', ''),
('2009-02-06 14:42:10', '"francois kan" <6020>', '6020', '6000', 'DLPN_DialPlan1', 'SIP/6020-09f18270', '', 'Goto', 'default|s|1', 0, 0, 'ANSWERED', 3, '', '1233927730.0', ''),
('2009-02-06 14:43:19', '"francois kan" <6020>', '6020', '6000', 'DLPN_DialPlan1', 'SIP/6020-08ba2458', '', 'VoiceMail', '6000|u', 2, 2, 'ANSWERED', 3, '', '1233927799.0', ''),
('2009-02-06 14:44:49', '"francois kan" <6020>', '6020', '6000', 'DLPN_DialPlan1', 'SIP/6020-0933e6d0', '', 'VoiceMail', '6000|u', 4, 4, 'ANSWERED', 3, '', '1233927889.0', ''),
('2009-02-06 14:45:32', '"francois kan" <6020>', '6020', '6000', 'DLPN_DialPlan1', 'SIP/6020-08cd12d0', '', 'Goto', 'default|s|1', 0, 0, 'ANSWERED', 3, '', '1233927932.0', ''),
('2009-02-06 14:58:46', '"francois kan" <6020>', '6020', '6000', 'DLPN_DialPlan1', 'SIP/6020-0914e220', '', 'VoiceMail', '6000|u', 5, 5, 'ANSWERED', 3, '', '1233928726.0', ''),
('2009-02-06 14:59:11', '"francois kan" <6020>', '6020', '6000', 'DLPN_DialPlan1', 'SIP/6020-089ca668', '', 'VoiceMail', '6000|u', 2, 2, 'ANSWERED', 3, '', '1233928751.0', ''),
('2009-02-06 14:59:34', '"Mickael Libera" <6001>', '6001', '6020', 'DLPN_DialPlan1', 'SIP/6001-089ca668', 'SIP/6020-089cf2d0', 'Dial', 'SIP/6020|20|tThHkK', 13, 1, 'ANSWERED', 3, '', '1233928774.1', ''),
('2009-02-06 15:03:09', '"Mickael Libera" <6001>', '6001', '6021', 'DLPN_DialPlan1', 'SIP/6001-089cbf70', 'SIP/6021-089d0340', 'Goto', 'default|s|1', 25, 19, 'ANSWERED', 3, '', '1233928989.3', ''),
('2009-02-06 15:05:41', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-089dfbe8', '', 'VoiceMailMain', '6021@default', 41, 41, 'ANSWERED', 3, '', '1233929141.8', ''),
('2009-02-06 15:08:34', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-089ca668', '', 'VoiceMailMain', '6021@default', 33, 33, 'ANSWERED', 3, '', '1233929314.9', ''),
('2009-02-06 15:09:11', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-089ca668', '', 'VoiceMailMain', '6021@default', 27, 27, 'ANSWERED', 3, '', '1233929351.10', ''),
('2009-02-06 15:09:45', '"francois kan" <6020>', '6020', '6021', 'DLPN_DialPlan1', 'SIP/6020-089ca668', 'SIP/6021-0893fef8', 'VoiceMail', '6021|b', 16, 14, 'ANSWERED', 3, '', '1233929385.11', ''),
('2009-02-06 15:10:08', '"philippe" <6021>', '6021', '500', 'DLPN_DialPlan1', 'SIP/6021-089ca668', '', 'VoiceMailMain', '6021@default', 38, 38, 'ANSWERED', 3, '', '1233929408.13', ''),
('2009-02-06 15:10:52', '"francois kan" <6020>', '6020', '6021', 'DLPN_DialPlan1', 'SIP/6020-089ca668', 'SIP/6021-0893fef8', 'VoiceMail', '6021|b', 16, 13, 'ANSWERED', 3, '', '1233929452.14', ''),
('2009-02-06 15:53:41', '"Mickael Libera" <6001>', '6001', '6500', 'DLPN_DialPlan1', 'SIP/6001-0893fc28', '', 'Goto', 'default|s|1', 0, 0, 'ANSWERED', 3, '', '1233932021.0', ''),
('2009-02-06 15:55:06', '"Mickael Libera" <6001>', '6001', '6300', 'DLPN_DialPlan1', 'SIP/6001-091aa9d8', '', 'MeetMe', '6300|MsIx', 3, 3, 'ANSWERED', 3, '', '1233932106.0', ''),
('2009-02-06 16:42:12', '"francois kan" <6020>', '6020', '6000', 'DLPN_DialPlan1', 'SIP/6020-0a577678', 'SIP/6000-0a57bf70', 'VoiceMail', '6000|b', 12, 10, 'ANSWERED', 3, '', '1233934932.0', ''),
('2009-02-06 16:43:30', '"francois kan" <6020>', '6020', '6300', 'DLPN_DialPlan1', 'SIP/6020-0a5723c0', '', 'MeetMe', '6300|MsIx', 4, 4, 'ANSWERED', 3, '', '1233935010.3', ''),
('2009-02-06 16:43:44', '"francois kan" <6020>', '6020', '6300', 'DLPN_DialPlan1', 'SIP/6020-0a5723c0', '', 'MeetMe', '6300|MsIx', 5, 5, 'ANSWERED', 3, '', '1233935024.4', ''),
('2009-02-06 16:43:59', '"francois kan" <6020>', '6020', '6200', 'DLPN_DialPlan1', 'SIP/6020-0a5723c0', '', 'MeetMe', '6300|MsIxaA', 4, 4, 'ANSWERED', 3, '', '1233935039.5', '');




INSERT INTO `VOD_CATEGORY` (`ID`, `NAME`) VALUES
(1, 'Actualites et politique'),
(2, 'Animaux'),
(3, 'Divertissement'),
(4, 'Education'),
(5, 'Films et animations'),
(6, 'Humour'),
(7, 'Jeux'),
(8, 'Musique'),
(9, 'People'),
(10, 'Science et technologie'),
(11, 'Sport'),
(12, 'Vehicules'),
(13, 'Vie pratique et style'),
(14, 'Voyages et evenements');

INSERT INTO `VOD_USER` (`ID`, `id_customer`,`LOGIN`,`PASSWORD`,`EMAIL`) VALUES
(1, 1, 'isen', 'isen', 'isen@isen.fr');


INSERT INTO `voip_voicemailusers` (`id_voip_voicemailusers`, `id_voip_line`, `customer_id`, `context`, `mailbox`, `password`, `fullname`, `email`, `pager`, `stamp`) VALUES
(1, 0, 4000, 'default', 4000, '1234', 'francois kan', 'francois.kan@isen.fr', '', '2009-02-14 12:17:17'),
(2, 0, 4001, 'default', 4001, '1234', 'valerie kan', 'valerie@isen.fr', '', '2009-02-14 13:24:27');

INSERT INTO `voip_voicemessages` (`id_voip_voicemessages`, `id_voip_line`, `msgnum`, `dir`, `context`, `macrocontext`, `callerid`, `origtime`, `duration`, `mailboxuser`, `mailboxcontext`, `recording`) VALUES
(4, 0, 0, '/var/spool/asterisk/voicemail/default/4000/Old', 'macro-stdexten', 'DLPN_VoIP', '"Server" <6000>', '1234613594', '1', '4000', 'default', 0x524946469d0a000057415645666d74201400000031000100401f000059060000410000000200400166616374040000004033000064617461690a00004ced631f854211fc322feae482095ab7955b094685dce8826d6847a5918dd621cbe03baa4dae2cd4c3ea24cbd342f4ac9a2ce63935364fb3a88f392b645cdcb8cd0cbee3d69293a15bb559b97af6c2214795cb033de13236ce63e1b2428739aa9bcce01d6a69383f96abead4712f350ece1aa9ca451da8a37161596721f43097d8f00cdea1da44940294553dec085583a41eaa9c28d7a239ac3ab2087d829cd6719bc1e03baa4d392fb88eab5a5d501b467c543be944252487f9d26eb927ae6eac3aca0cbee5d6041d42d53a14d61835629c2eb1a23e9f42e5c4e67048b4220fc991d5cce03b662d5b2538763345e37221f2894ed7a9dc1de885d4b3a66621e44d0757a90ccee1d6245f62b2988be2e6d28126ae911ccd9521c67554e576d6e1a00ec2dbc6e03d6e4d39252653f954525c253aed2a77d0ba1db8a3bae670671f1ac362da09ccbde1de242fc293c3c2e3a88ea1e35894eac8ada1aa6678b9e4cee18bb96e53c7dc396272c41ab86ee3465def140c8fde9c353619ac5cda2117701f8eaea1a8958d9de39ec4960123398bd463efc21357e5da4aaca26037722369ec619ecaec9af7b4966e2ee60a6635a4e6ec4414748ddcc8916400346add5899760438765ca9759a2a9dae8967606bd76e1e150ea0f466ad23952ba0a947ae6c356ce0ecd8f0ece69dd62596ab044a922bc7aad900b66a5cbb6ae906d46de4a852dc02ba919349a91a5a6566b72b20ec448ae5e675a01bbd72dbba7b6123b7911d0233a1ca4b6614c9a9d7a576c2164ab17b3ba52b15ac70d2bc4db10e7c2b07372bcb16365536ca5edd5a9d66f96a818bc96addbe0cc124d960fd622f810cd76824f32c8126d74dd5eba5d6a596ef1228b2a9e36a3813384a04bf41c61094b45c96cdb81cc86d3c5b711f8b1f5e6b2e61ef4c1226b7ab40e32a2d4c536c411d592adb6a0f61ad86923beba934269adb1232cea4b876cc124692853a82e60c446d9f037ad408ca5aab33f36168dde2767581ee3472533395c074c2946501d5612f5456a466aba1d538431aa99918a272b31a26cc9562cadd0c4a5b44a9c7e514d611b5d482d4145c5b24c9acdc69a362c5ad6184b83294585542b289d5dd8a8a20de23eb0c334cc112c364da069a33ee95771022cd8f5bf0e616507a1b59d6770d02239e88aded16423314af9555295fea64b3e11d594a564b0d01edd4995baad664e4466defb62a63f0998dcbe298ba9e693a31d0578bd68e645f466dd3de75532b24960aaf35434344a21d47a90f8a279e346c42d2da362151d462362746fe5aef62679809bd0c2ea2325a89258791f0e14dc224ce16e066977620c4812d492af524c09265490e3f1b36713634c959fa9626970e41d6cb6ed40c4ca1858ad29cff93a11b41b18b64f761fde2996ab2a971a155bd16ac49b2f6d7f526c6b0db66486f1fd8efb02aaa5519362a5ae59f191a175a85efc161c58ac28e2f41eaea39c648ef21c5ea95153b1b8296458ca66795d19d75b11a588dd982bedc3e588ee348885b23b695a5d515b01a4e8f2c2a515609d721b36a622e59c61ac15243e7284e94380ca1bdd94d60d74ea1aa98cd7f858d9019525e196269bb5492381cb2f56233b1db14a88adbac76ef1836cce44aa559f994dda62ba19c09636dd596e15abaca9c028b8173c941569d2b41916ac740538d6f1d52e91c2c3ea2cc953213a4a2dedc88e51244af09e991e41406951f8ba918da10e6d22ea10691c627312b81924f2bd45cae60241ad5edb62c811a677219e7a539a159ef143a6da33e93781be6801cc58cbe0ad6f3a9226ae5084e9275e67071a8e51d89fc61aac3e663522b43a3ee966346b52119c796afd76e61496090e57e86ff9d9a6f1ac88d78c9b5f824a66dca598eee144289e5428bed18ea48516f8f26a957de78eb816aa745cb3bada1d62a4fbba2aa212c798dcb8a4ea132897119c1b5d4a55ae714ba1d24b899eb0aeaa663d8a3f410566b269459b214565225199319f9162299eca05d7369a4bbb340abb66e2d4c9441e4ce6d9b587562ad3a0ef02b9db225526b4b386e4b4e72c5244a2ed35756cd2abc49f15551f22cc86d39b94a926a9bd9e88cc2db869a237717220e0bafab88f2611d0797e424adc1ab147d16679d51d52dcf18da31423db2511b643555acb3aa1454a159f6b3d418a84a94149fd6d996d560cda1136581712dcb621ab769138fcdc10d474a1caacac0fd6a346364a52d9d29d81a489ee34655d81c88d6e4c871ac18344edeb96e2b13c42d6d0b6b542add8dd212c118a791964bab81d9b4c1afd752639bc82d37b9aa22e41a8dd33dc57695892b1d0a761699d055213aca23b709561d3a91ac180da815786a1b3fb6525b955d2915217f3979b2a432610faf3156961242a73a8e94175d6172488af936a9359e71d31cf2aee12615732de0b2db28724f19b2936437aa4f11467e9aa932542a5f1af3b4413547aa5a4137022eb7b15b14abc257c56da2d46ec2e4c831035fa113a24df01cc07d9b2e55c71ca88ed4e68bed186281a3bbaa4713a648b3af87153921daa68e625af8ad1d970a2164de5cd3d65641fcd031aaccce42172b6ada8a9df0dd4dc918be7d9c9472ee26d8511b5877ec163c6a936e19c80a3a4a242f2f1b3adde1c02e615955d64bc5ae41dd9a9bd356ae012359968db88c6034e3c59407a6371e96ed142a6ee73852421528eda948cfda1ab66adcf8722a150626ccd98f5f6aa52585eac182b6d51beb0ca1cac610e5fa4c619d28421e99cda16c386cec58b6902a92ab1cce71d4c6d54a2d6c6e1d36b2a8225a8e8c058ea91088666fc669a70b271bc9d562e3c04adda2aba12ab9d20479cc60205b31a67ecf412d9b91237ecab02d6ef8186a52533af5ca2c28591159f2a92ad0495b49d2a918a62d85565e663be35e6b2f829460919ca90ac10ca72a713793616ad45acda0d2410ddf86ba58ba336eb2d326b8739b2c8a282376935ab7e8a91ade85e42483cc1438855d886ee25a235e4ba741ecc0ea5c7d6ea2a8368e6b0beda04baa352ddf0c016c48b5ed23b254aab1f5109ed1e37a85b21e228d362a71d312c0ade3540ace16fa911ca9a11f5aa72649ee40a97759ac275681a4b74f1cb57481f198bb8a85abe0a9ccb025dda9156696ec128a75dabc31e51a4811dbd472ba1628919bded0c90a4aba618ff39e4a21a71b8f6068c36a6cb9cb612cc74d27b72aa15c89569d56ec815cba6d03e7ad36aa96dc105a0e335799c60ac631b4c468d90cbc90e331555e0b26c22465761f8b1fa68d1781edc45b6ac5f5e039e9d11da94ca155a371438b4a81292b78ddeaa556a696b41228555c475ac10ece821b4632e40cd00e3157cd630fd8881469f69e6a63a6dbee80a7d86eabe48c409ed3b0131f16419d354a25e8cb60132b2e27e4ad3566b6c4126a2a8d4375c00e8a6fa208b2de0872b0d37a8dc4087aea9eea215d8b1da64933e19dca95ca24ac6092a76684644fa15cabaee2ccac201b1f315ca7d5cee975d203378e45798935a89ed0e3c8a54d80d28aa0c78d773618c7a650f2183b5de29885221b0b72d38bc7811b6759205ba54123897593586f41d4a9ce5bb5a5f32176d1125cc26d29caba0e3496c2bb7bca169e8a5eb84e77137047e3c4919d5b216aa92a8194bc8dacb60e610427a693360c41a39433fb360b811cde8d53d6ad36e695bb085a6cd72a11ee12564a3484973a1548d2314d31bc14b2b69246ee),
(6, 0, 0, '/var/spool/asterisk/voicemail/default/4001/INBOX', 'macro-stdexten', 'DLPN_VoIP', '"Server" <6000>', '1234615056', '1', '4001', 'default', 0x524946461709000057415645666d74201400000031000100401f00005906000041000000020040016661637404000000c02b000064617461e30800000cdd65a38702ef034fcddd4a23641858660e654503e9a339e3d0e66246b79c52c7d83d3676d0209e95e92872e71a2a7263f149f21cd478c34559b229bee3222e8a8cdd25a7e9ca61dab7792465cd81966a908d279721a4bcd1e0e3b2617268b463c5d85c36766725463d1cb96a2e15c694f1d489f327728d13d3a9b3246266c7ca944cdd656797324262b75ddc8377a244b9d1830fed212cd1116d7216a271d6e1dccad85c729639110ec72ab7b1c41b3c16a4c4a6db179cb0c4d1125c1d72a88527578cbd276307dda1940993e34a4c82a476948c333742e5d478d9218fc1a33ce29ac8d43d727adb1fb64ece51aa2e235ac605d9943a1df0550d536e45133e6e8555c6cdcc236789d66115c58904755561ce74ad22b3ae607c362a6e6ece41fc64aa93f9b01bb2726f1d488d85a955e51abaa6d9b1865c2536a614ad5c464b36ebd43872cecb291f65034066d889217b4500e554acb472e7a0ccaa59e42463602a272f2655a154329f61045a5562a5757604c635aba34f28044a7522d786ce024671d64ac6d739e1aefb2e801c15ab5c6b6fa0553992dd2a1bc05155751bf72e601e554ee2b2a1d369b6740736559b4472ad06ba8e1c5976ae043a7364b98ad802444e15494e9b7ad9a5dd446062b75254fb4ca0944b8b1f9b7a61e386521bc3d3a04d7230d5c7b198dd962d114ac99b638dc612688af454abf414ba529c9996e9088852f3648fde7a1d2a5b3741d3a8116bf90c212ab598e444eba06b0959ea9455215bd18d0cc7bdb86596bb1c4876db3575c81cd46f644792b9168672da9c36f50a3455213e6d5e8b5f222bcdc0e9aca40d132f61a23eb63e57abc09a5b6a15f52c810bcd862c07a238e28eee12562f294159b314c08d6345b66917c881d1080eb316b4899ffaae9e7be36959ac80df1c8d22592d01a42a9aa529ae60358769889b8d2056cd360fe3addaa1924713c4485ba585c014aaf52cd9afd30a8c326492ddc50a305a9337b9608b215e1b4f41e2988e8b6a0c4171bbf6dc092bc1d43622e9e6ac20d0362215f7b1f76576bb1a340e1c4352c1122cb36edf8ecd0c5222e4d84ef012388ebd48161f7b6162a9ce601d5c585d5dab81a4ea6d236134610ba7a591468ea0caab6e63f5b9d86592f312468eaa5cb22b1554b2a63c8a2e0d6207ab060fa8123879214bb1df9b996269ad4015ac6ccdc6b3401ac231eba6348113c5ad1f7fcf80f44d7b3be8b5162272c31278a65cd883b80a9ccd4a4aaad10c1ab1a32832df164666a4e2b060ab2326e9ca408e278edb3ccb60193bcd2b48af609a99fa9d1babc0a6ed635f06b61a1e92cd08c265229a6c5313204adb4652ae0c5456e6badde214147ae2e8745f8b636ad72e6186c59565d5eb605bcc892a6d6e4171c396a913aba09c342a73f4add8a176d116a831e9d20df30a3a0b4fab66bf1a48925cbfadf61236ad34aa225b2a1bde36f5c1f0447212f992e120cd51ac820e2213c37ed3244d839db78534619dd2e551a842a689d4b6f5ab34ba40b736c5b646d0a9deb989ea2abc0143210e192a5dde460f4469cf9d2439ab64a3460eabf66c662b2950e5f49343f3d0784a90a991e151d05eccbf22bb92bf5cda945f3bb4d95054305ae5d1c158b20a2cb7f2584a231ec54e65e6f4bd35cb8a44f62c4435b4ac856a5eb522d3aec43c56ca2787b1d2a131d254e6f3d7d275e44c90a9b20b71cd4e7ca51aa9a9f7301c15db1ae8d83a1d5e0333e45e98a260a8542501232bda246ba5ca08346203ef860427955c9bb1339a2df7585e6b736892f544ae5113535ef03e26b0a92422b744020713b930da5ad7d1742ca442236b6fa58aa5d2b8b69e5fcba236e1d0b53a0c44bac6f2d2abb1b39d2deb34cc892939e6f43022d86cc52aab423466923616eb643666a5c661595b1be2b08a03d3628a245dae824e5b3977f9e6a5ef5891eb3ccc424a469e49a6adb25929bd2a24ada03aa2b344968d30c58eac362ae4da8806ac404a6ed0da52181a958db2ec62b0f2ae63cbce83aeca9374f70a82ae5b947919aca39256c50483a974590d503db8269c5a2ccc42b441e43226f63a58110c2b7abf2cc481e6b7f9593ad9c9e06da46df78eeaf68ac239d7dc9b932de1a9039b24260d022207d94d75a5309524ab1860af4f34e06333304e9ae565ed2276595f5976b532fa5d6bd98e593a5999042b42fa5a8d16e9eea1e1d176a39dcd6225f7919cfeac22a883469ba2a5521925a8242e65a49861b314dc62b05936e03454f26cb771b822d65aecb462dafa58d550ed82dd42815e98b6818dc9c08bbe6ce1a198111a808f614c150d8b8099f20c49b71884314d3996bd1cb6597f5ad67118d6933547aad820b692e7c4545c3a1dd5544fa16cba98d1ecd521da2516fada2aa15639619942ce01da926950b8a5728d28a81cd84e573f77b61a6c752fc992c512da5d6cad72e022c6792ab93d9b199f81840a41d752a61cba2c628c0b56cbd44b410b095819d20da253438d20d9a1545545aa1c4a762ebb6fec10f27a735583d52476aa65456ec41c4af3d42b661b0bcb9480afa1d336425dd68a81432991b9d6aa616a58b02357ee40b2b6b031a999b24c21c212d8b21c79aa310b2cd2b965163325d6a254a794b1149207a634329a0a0f4dc02d210ca3614cf38e611dd594201bab6024ed99f3e40e819bd7f19cb995ad10252b0d4cd26af7ac2909f66c62552aee0cba6dcb94296e11324d18a768df199595022ca1e024672457ac811db716adea6d812d27571d5b6d416575af74c9ad10d148f61c4877fecc767011d6ae52d1622b15c2a45225692a1518d2d899b2dd4a1989726d41f2b67183c58d404bab8cd461ef81173db6ac0a4ba174d9b6d6e59991d128dd163e76d7aa31f512b89013a989db14b066db322df310a42554b66c1bfa0e8d626b61e2b8d1cbb74a41e6ac5b5eaf2b413a49b2dc357481ddc48d21d7a9344d29ef12e6cd61556a4113d6ccd3a669aa149651929a856d1ba046da16525e2a138d144c81f4e4d6ead96a8176e793654b4d81642773394a35815a138e20d3a5318d28a814a8315d9cad2a0de2ac98a6e129133086143b52ef1418761aabb1de39d58c742ea15cbdf295af0a412b3d7ab4b84b615dd8a16336af604d38a152d1ad761529f51e0c32dc5471b21cb46dda3690df12308612a54ab51c566e5fcd9a),
(7, 0, 1, '/var/spool/asterisk/voicemail/default/4001/INBOX', 'macro-stdexten', 'DLPN_VoIP', '"Server" <6000>', '1234615448', '10', '4001', 'default', 0x524946464003000057415645666d74201400000031000100401f00005906000041000000020040016661637404000000000f0000646174610c0300000dec23a789824d27566aedd682c81fc7711cb7852156c33dc51907425ee37095c1dcf971363919e410dd56917215f2e2a49af3c51b4892e28e6aae25a6a7b2bab1cc9ddf6a91930116c775ea5454616cb86a0f2daf4125d5e98a7b9ee154b7b2a2cae0d9b14e3913f055d94aa25c151a4e38a5cef217ca8d7bca6cdb1f3ab2e848d1cc7d212b03bd209385a5cc991301ecd419ad26bf218d277654073d4125e5b061c7e0f87532391372941eb786721728aba988572e13ecb1a34aced013584d9cab4f0c7e2127533c41951cc9d00e5581319747e40c5d81ea564f4eb51541cd387c54c7dc39aa52ae1fc675a2c3125c1d286eb9e2e22d21f074555571d0315072e4486ecc9d1f279373a2ab4a8ea30e954106bb35dd26974155c919b424d661baa66ffac6dc383232e71d9ecadce4892e1dac719baec9f21a4036dc414edc1aac5163e18a0dade326c7cda1ab56c246cb35219cacd1c2cbd5611c37675f6a96e189397c4cd7d09b6e52ba18c06e93a779d31ad689dd48ed5d2bc46e2d7689b11c4cb484ab91916a6b6ba5ab81a1a76b63770621ed56ae044f26413a4a96a3534f6164ac91c5b78df269badf0a48c99aac66720ac8941b49925902b6752b55725e00ca35ad4c591e7bdda16b4fc0ecb87594e71660f4aa6aa3166f8092a979548b2d406be3552af7a5da59b2e902bab22339eee500d24e2a296f4e0db691dbb870d20d164a9d262b1e9ca769cb93e02a499a4d9d0ba12bb75a329314a1ddc6ad9a3e8c00dc1fd67cf9b51a22b2720fa88e951ac92c11a42ddc2416711516c61b47cac6145a925e56365e8bdfa1391741a748b625590f815b275d93874d8125ca71da46aca0a3e17ea91daa57e2d1e50a466eab66f0d81224960a57657709b6aa85d7b9db0a56bd2a4991e28a255e4935a1134a6a57e82e61cd4e89e3360c41dcba66a4008e604256a5120bb67a26b2cd0c3cee2a4dadee10ca882f2b92c21422335c5999cd0e2cb339c74fe0ba2126d9ae6022b447b5a8aea0d6d86e9bc52ea069e8d5f6028f601d968a94dac1fb61924315bcb8a25c87460b64721c95a6c90a884e323576f616b898e5cab5),
(8, 0, 2, '/var/spool/asterisk/voicemail/default/4001/INBOX', 'macro-stdexten', 'DLPN_VoIP', '"Server" <6000>', '1234615733', '1', '4001', 'default', 0x52494646ff02000057415645666d74201400000031000100401f00005906000041000000020040016661637404000000c00d000064617461cb0200004cad65a787820d3b213721a5e2a29447592781e5a2d7c855d4e326e3da1a9771c5d41bb67a5b1f5ab1ccf350671b1cafe9a73ad01b2cb2a9e4e1391b8a8f2897560ccd636b97538194eca00e79d621fb465a5ce5faa155353dd3ec5a22e32a19ddc8d45bb27639114e6f7cacc6d0194c63b4d85572133cea79ec81441f2696dac1714cbd61abb79d413a334bdee4f2011f53a61b07b581a4cae5a2e83a62e4b875dbc1d05bb276d0154eacdce6582e1f3436e5540e5b1b56c26b1e87d01540c3a1d55c4cada1ab779e61a4baea2193d381a0b536eb0a55a18ecc8c9c7e7e825ac96e57ced41cb67aae24be719576ad4517525264e12cf320caa22bac66d01534aeca33764cbd6567d732a2a338aa39babd81741c326dee32e1939e552c58d400a4381e2ed5cc5a76765b23b46e7b4c567813282f359c766227467123370edf20da8d9c1eaece9b2927e7aac11b2976fa04ac81abca4d0febb261e5aa19fb70dce312cb4fe326a13b727a2d048859d3b45d510c365315598ac15fb671e3c6632e1a2e166fc686137ae57297038152358a65acc5611c65a5d43ef6602b8b5e6bff2c01e43852e406aa902eb6d40830911a3bd16a02b8b62257765f04cab5549daef602b6ad24b9aee19ae121990c60254772a3c82d80e4ca726ac90d60e4c8aef4864bc023a96ea5e4b1d69dd9b802c8ad63ca91e20252915ca78ec70e38725cc7d929091698302c3ade8b1fa2e90a815c398b8e6a932046b11573b50b41dfdaa99d4a8ca0a437c9d908ae3a1ab6d0143a4c0d6a71b00c5c91a4db29c50e2ca32ae7c1ab0ae866d11ace627adf224d6ca11349d693ec8d609b3471212bcd40acc872e3ee2e410c67a9a6f6add8a5b2ab145eb1995a4caa0adc8c65c559d20a182656a595bc0ca851ea1c319e8a2362a78cc04c67adbcb8d4a0dc9779cc656d61ecb65aa468cf801c65ad8dfcb95ae2b1e30a5aec6b4ac6c20eb2b03446b9e60c0c524c330ead16228e33897a);
