SET NAMES 'utf8';

INSERT INTO `item` (`id_item`, `name`, `type`, `description`, `unit_price`, `stock`) VALUES
(1, 'routeur X200', 'routeur', 'implémente les fonctions NAT, DHCP, ', 11, 120),
(2, 'switch 200', 'switch', '4 ports', 21, 130),
(3, 'routeur X800', 'routeur', 'routeur implémentant les fonctions NAT', 12, 149),
(4, 'switch 600', 'switch', '8 ports', 22, 150),
(5, 'hub a', 'hub', 'USB', 31, 120),
(6, 'hub b', 'hub', 'RJ45', 32, 130),
(7, 'hub c', 'hub', 'RJ45', 33, 140);

--
-- Contenu de la table `CUSTOMER`
--

--INSERT INTO `customer` (`id_customer`, `id_address`, `int_id_internet_subscribe`, `first_name`, `last_name`, `login`, `password`, `mail`, `sexe`, `birthday`, `phone`, `cell_phone`, `profession`, `company`, `account_level`, `vod_debit`, `BORN`, `USER_ID2`, `ID_ABONNEMENT`, `USER_ID3`, `ID_ADDRESS`) VALUES
--(1, NULL, NULL, 'prénom', 'nom', 'pseudo', 'Truc', 'M', 'SuperSociete', 'machintruc@supersociete.fr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
