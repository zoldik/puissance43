CREATE DATABASE `RedNeckMail`;
USE `RedNeckMail`;
-- Dans la table domaines, entrez vos domaines qui recevront du courrier, par exemple RedNeck.fr (pas de sous domaine)
    CREATE TABLE `domaines` (
     `domaine` varchar(100) NOT NULL default '',
     UNIQUE KEY `domaine` (`domaine`)
    ) TYPE=MyISAM;
-- Dans forward, entrez tout vos forwards, par ex contact@RedNeck.com vers webmaster@RedNeck.fr
    CREATE TABLE `forward` (
     `source` varchar(255) NOT NULL default '',
     `destination` varchar(255) NOT NULL default '',
     PRIMARY KEY  (`source`)
    ) TYPE=MyISAM;
-- Enfin cette dernière table définie vos comptes. Le login est de la forme d’un email (par ex contact@RedNeck.fr), ensuite emplacement contient un chemin relatif au répertoire de base (normalement /home/vmail/) de type contact/ pour un format de boite aux lettres maildir
    CREATE TABLE `compte` (
     `login` varchar(255) NOT NULL default '',
     `motdepasse` varchar(255) NOT NULL default '',
     `emplacement` varchar(255) NOT NULL default '',
     PRIMARY KEY  (`login`)
    ) TYPE=MyISAM;

-- Values table compte
INSERT INTO `RedNeckMail`.`compte` (`login`,`motdepasse`,`emplacement`)
VALUES ('voip@RedNeck.fr','adminmailvoip','/home/vmail/RedNeck.fr/voip');
--Values table domaines
INSERT INTO `RedNeckMail`.`domaines` (`domaine`)
VALUES ('RedNeck.fr');