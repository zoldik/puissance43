CREATE TABLE voip_user (idUser INT NOT NULL AUTO_INCREMENT, user_type VARCHAR(15) NOT NULL, account_level INT NOT NULL,nom VARCHAR(15) NOT NULL,prenom VARCHAR(15) NOT NULL,num_tel VARCHAR(12) ,email VARCHAR(20),PRIMARY KEY(idUser));

CREATE TABLE contact_perso (idContactPerso INT NOT NULL AUTO_INCREMENT,nom VARCHAR(15) NOT NULL,prenom VARCHAR(15) NOT NULL,num_tel VARCHAR(12) ,email VARCHAR(20),PRIMARY KEY(idContact));

CREATE TABLE contact_pro (idContactPro INT NOT NULL AUTO_INCREMENT,titre VARCHAR(15) NOT NULL,catégorie VARCHAR(15) NOT NULL, nom VARCHAR(15) NOT NULL,prenom VARCHAR(15) NOT NULL,num_tel VARCHAR(12) ,email VARCHAR(20),PRIMARY KEY(idContact_annuaire));

CREATE TABLE a_contact_perso (idUser INT NOT NULL,idContactPerso INT NOT NULL,nombre_contact_perso INT NULL);

CREATE TABLE a_contact_pro (idUser INT NOT NULL,idContactPro INT NOT NULL,nombre_contact_pro INT NULL);

CREATE TABLE flux_rss (idRss INT NOT NULL AUTO_INCREMENT,type_flux VARCHAR(15) NOT NULL,description TEXT NOT NULL,PRIMARY KEY(idRss));

CREATE TABLE possede_rss (idUser INT NOT NULL,idRss INT NOT NULL,nombre_flux INT);
