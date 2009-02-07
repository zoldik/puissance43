-- Créer une DB RedNeckMail

CREATE TABLE `domaines` (
 `domaine` varchar(100) NOT NULL default '',
 UNIQUE KEY `domaine` (`domaine`)
) TYPE=MyISAM;
CREATE TABLE `forward` (
 `source` varchar(255) NOT NULL default '',
 `destination` varchar(255) NOT NULL default '',
 PRIMARY KEY  (`source`)
) TYPE=MyISAM;
CREATE TABLE `compte` (
 `login` varchar(255) NOT NULL default '',
 `motdepasse` varchar(255) NOT NULL default '',
 `emplacement` varchar(255) NOT NULL default '',
 PRIMARY KEY  (`login`)
) TYPE=MyISAM;