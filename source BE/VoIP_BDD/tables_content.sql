SET NAMES 'utf8';
INSERT INTO voip_user (idUser ,user_type ,account_level ,nom ,prenom ,num_tel ,email ) VALUES (1,'admin',1,'rasoa','thomas','123456789','thomas.rasoa@redneck.com');
INSERT INTO voip_user (idUser ,user_type ,account_level ,nom ,prenom ,num_tel ,email ) VALUES (2,'user',2,'dupont','francois','987654321','francois.dupont@redneck.com');
INSERT INTO user_contact (idContact ,nom ,prenom ,num_tel ,email ) VALUES (1,'dupont','francois','987654321','francois.dupont@redneck.com');
INSERT INTO a_contact (idUser,idContact,nombre_contact) VALUES (1,1,1);
INSERT INTO flux_rss (idRss ,type_flux ,description) VALUES (1,'avertissement','appel manqué');
