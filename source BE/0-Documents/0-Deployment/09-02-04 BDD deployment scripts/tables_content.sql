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
`valid`
)
VALUES
(99 ,'',NULL ,'Compte','non validé','user','pwd','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',0,0),
(100 ,'',NULL ,'Utilisateur','sans abonnement','user0','pwd0','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',0,1),
(101 ,'',NULL ,'Utilisateur','VoIP','user1','pwd1','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',1,1),
(102 ,'',NULL ,'Utilisateur','VOD','user2','pwd2','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',2,1),
(103 ,'',NULL ,'Utilisateur','VOD+VoIP','user3','pwd3','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',3,1),
(104 ,'',NULL ,'Utilisateur','FAI','user4','pwd4','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',4,1),
(105 ,'',NULL ,'Utilisateur','FAI+VoIP','user5','pwd5','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',5,1),
(106 ,'',NULL ,'Utilisateur','FAI+VOD','user6','pwd6','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',6,1),
(107 ,'',NULL ,'Utilisateur','TriplePlay','user7','pwd7','albert.einstein@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',7,1),
(108 ,'',NULL ,'Admin','VoIP','admin1','admin1','admin1@redneck.fr','M', '19/03/1950','03 20 00 76 43','06 12 58 37 29','physicien','relativeCoporation',8,1);

INSERT INTO `voip_rss` (
`id_voip_rss` ,
`id_voip_line` ,
`url` ,
`update_rss`
) VALUES
(1, 1, 'rss_voip_line_6008.xml', 1 ),
(2, 3, 'rss_voip_line_6006.xml', 0 ),
(3, 6, 'rss_voip_line_6026.xml', 1 );


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


INSERT INTO `voip_line` (`id_voip_line`, `id_customer`, `name`, `host`, `call-limit`, `type`, `accountcode`, `amaflags`, `callgroup`, `callerid`, `cancallforward`, `canreinvite`, `context`, `defaultip`, `dtmfmode`, `fromuser`, `fromdomain`, `insecure`, `language`, `mailbox`, `md5secret`, `deny`, `permit`, `mask`, `musiconhold`, `pickupgroup`, `qualify`, `regexten`, `restrictcid`, `rtptimeout`, `rtpholdtimeout`, `secret`, `setvar`, `disallow`, `allow`, `fullcontact`, `ipaddr`, `port`, `regserver`, `regseconds`, `username`, `nat`, `visible`) VALUES
(1, 1, '4000', 'dynamic', NULL, 'friend', NULL, NULL, NULL, '"francois kan" <4000>', NULL, NULL, 'DLPN_VOIP', NULL, 'rfc2833', NULL, NULL, NULL, 'fr', '4000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4000', 'no', 0),
(2, 1, '4001', 'dynamic', NULL, 'friend', NULL, NULL, NULL, '"valerie kan" <4000>', NULL, NULL, 'DLPN_voip', NULL, 'rfc2833', NULL, NULL, NULL, 'fr', '4001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4001', 'no', 0);


