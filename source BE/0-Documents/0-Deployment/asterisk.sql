-- phpMyAdmin SQL Dump
-- version 2.11.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 27, 2009 at 04:52 PM
-- Server version: 5.0.67
-- PHP Version: 5.2.6-2ubuntu4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `asterisk`
--

-- --------------------------------------------------------

--
-- Table structure for table `extensions_table`
--

CREATE TABLE IF NOT EXISTS `extensions_table` (
  `id` int(11) NOT NULL auto_increment,
  `context` varchar(20) NOT NULL default '',
  `exten` varchar(20) NOT NULL default '',
  `priority` tinyint(4) NOT NULL default '0',
  `app` varchar(20) NOT NULL default '',
  `appdata` varchar(128) NOT NULL default '',
  `cat_metric` int(4) NOT NULL default '0',
  `category` varchar(128) NOT NULL default 'default',
  `var_name` varchar(128) NOT NULL default '''''',
  `var_val` varchar(128) NOT NULL default '''''',
  `filename` varchar(128) NOT NULL default '''''',
  `commented` int(2) NOT NULL default '0',
  `var_metric` int(4) NOT NULL default '0',
  PRIMARY KEY  (`context`,`exten`,`priority`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `extensions_table`
--

INSERT INTO `extensions_table` (`id`, `context`, `exten`, `priority`, `app`, `appdata`, `cat_metric`, `category`, `var_name`, `var_val`, `filename`, `commented`, `var_metric`) VALUES
(2, 'default', '1111', 1, 'Dial', 'Zap/1', 0, 'default', '''''', '''''', '''''', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cdr`
--

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cdr`
--

INSERT INTO `cdr` (`calldate`, `clid`, `src`, `dst`, `dcontext`, `channel`, `dstchannel`, `lastapp`, `lastdata`, `duration`, `billsec`, `disposition`, `amaflags`, `accountcode`, `uniqueid`, `userfield`) VALUES
('2009-01-22 16:15:15', '"6000" <6000>', '6000', 's', 'default', 'SIP/6000-091d65e8', '', 'BackGround', 'demo-congrats', 4, 3, 'ANSWERED', 3, '', '1232637315.0', ''),
('2009-01-22 16:15:52', '"6000" <6000>', '6000', 's', 'default', 'SIP/6000-091d65e8', '', 'BackGround', 'demo-congrats', 24, 23, 'ANSWERED', 3, '', '1232637352.1', ''),
('2009-01-25 14:38:13', '"6000" <6000>', '6000', 's', 'default', 'SIP/6000-081a9840', '', 'BackGround', 'demo-congrats', 5, 4, 'ANSWERED', 3, '', '1232890693.0', ''),
('2009-01-25 14:44:12', '"6005" <6005>', '6005', '#', 'default', 'SIP/6005-09813da8', '', 'Hangup', '', 11, 10, 'ANSWERED', 3, '', '1232891052.0', ''),
('2009-01-25 14:47:46', '"6005" <6005>', '6005', '#', 'default', 'SIP/6005-0980e118', '', 'Hangup', '', 11, 10, 'ANSWERED', 3, '', '1232891266.3', ''),
('2009-01-25 14:53:59', '"6006" <6006>', '6006', '#', 'default', 'SIP/6006-0981b5f8', '', 'Hangup', '', 12, 11, 'ANSWERED', 3, '', '1232891639.4', ''),
('2009-01-25 15:02:10', '"6006" <6006>', '6006', '#', 'default', 'SIP/6006-08760108', '', 'Hangup', '', 11, 10, 'ANSWERED', 3, '', '1232892130.0', ''),
('2009-01-25 15:02:31', '"6006" <6006>', '6006', 's', 'default', 'SIP/6006-08760108', '', 'WaitExten', '', 0, 0, 'ANSWERED', 3, '', '1232892151.1', ''),
('2009-01-25 15:04:00', '"6005" <6005>', '6005', '#', 'default', 'SIP/6005-08760108', '', 'Hangup', '', 11, 10, 'ANSWERED', 3, '', '1232892240.2', ''),
('2009-01-25 15:09:19', '"6001" <6001>', '6001', 's', 'default', 'SIP/6001-08767e40', '', 'BackGround', 'demo-congrats', 6, 5, 'ANSWERED', 3, '', '1232892559.3', ''),
('2009-01-25 15:10:38', '"6006" <6006>', '6006', '#', 'default', 'SIP/6006-08762170', '', 'Hangup', '', 11, 10, 'ANSWERED', 3, '', '1232892638.6', ''),
('2009-01-25 15:27:34', '"6006" <6006>', '6006', '#', 'default', 'SIP/6006-099f7c90', '', 'Hangup', '', 11, 10, 'ANSWERED', 3, '', '1232893654.0', ''),
('2009-01-25 15:28:36', '"6006" <6006>', '6006', '#', 'default', 'SIP/6006-099f37e8', '', 'Hangup', '', 11, 10, 'ANSWERED', 3, '', '1232893716.1', ''),
('2009-01-25 15:29:14', '"6006" <6006>', '6006', '#', 'default', 'SIP/6006-099f37e8', '', 'Hangup', '', 11, 10, 'ANSWERED', 3, '', '1232893754.2', ''),
('2009-01-25 15:30:07', '"6006" <6006>', '6006', '#', 'default', 'SIP/6006-099f37e8', '', 'Hangup', '', 11, 10, 'ANSWERED', 3, '', '1232893807.3', ''),
('2009-01-25 15:44:26', '"6006" <6006>', '6006', '#', 'default', 'SIP/6006-09a98198', '', 'Hangup', '', 11, 10, 'ANSWERED', 3, '', '1232894666.0', ''),
('2009-01-25 15:47:58', '"6006" <6006>', '6006', '#', 'default', 'SIP/6006-088a7968', '', 'Hangup', '', 12, 11, 'ANSWERED', 3, '', '1232894878.0', ''),
('2009-01-25 15:51:22', '"6006" <6006>', '6006', '#', 'default', 'SIP/6006-088a9710', '', 'Hangup', '', 11, 10, 'ANSWERED', 3, '', '1232895082.1', ''),
('2009-01-25 15:53:53', '"6000" <6000>', '6000', '6005', 'default', 'SIP/6000-0958e5a0', 'SIP/6005-095939e0', 'Dial', 'SIP/6005|20|rt', 2, 0, 'BUSY', 3, '', '1232895233.0', ''),
('2009-01-25 15:54:40', '"6000" <6000>', '6000', '6005', 'default', 'SIP/6000-0958c5f0', 'SIP/6005-0958e5a0', 'Dial', 'SIP/6005|20|rt', 51, 39, 'ANSWERED', 3, '', '1232895280.2', ''),
('2009-01-25 15:57:02', '"6000" <6000>', '6000', '6006', 'default', 'SIP/6000-088591d0', 'SIP/6006-0885e3e0', 'Dial', 'SIP/6006|20|rt', 20, 0, 'NO ANSWER', 3, '', '1232895422.0', ''),
('2009-01-25 16:04:22', '"6000" <6000>', '6000', '6006', 'default', 'SIP/6000-0a211500', 'SIP/6006-0a216ca8', 'Dial', 'SIP/6006|20|rt', 21, 14, 'ANSWERED', 3, '', '1232895862.0', '');

-- --------------------------------------------------------

--
-- Table structure for table `voip_ligne`
--

CREATE TABLE IF NOT EXISTS `voip_ligne` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `host` varchar(31) NOT NULL default '',
  `nat` varchar(5) NOT NULL default 'no',
  `type` enum('user','peer','friend') NOT NULL default 'friend',
  `accountcode` varchar(20) default NULL,
  `amaflags` varchar(13) default NULL,
  `callgroup` varchar(10) default NULL,
  `callerid` varchar(80) default NULL,
  `cancallforward` char(3) default 'yes',
  `canreinvite` char(3) default 'yes',
  `context` varchar(80) default NULL,
  `defaultip` varchar(15) default NULL,
  `dtmfmode` varchar(7) default NULL,
  `fromuser` varchar(80) default NULL,
  `fromdomain` varchar(80) default NULL,
  `insecure` varchar(4) default NULL,
  `language` char(2) default NULL,
  `mailbox` varchar(50) default NULL,
  `md5secret` varchar(80) default NULL,
  `deny` varchar(95) default NULL,
  `permit` varchar(95) default NULL,
  `mask` varchar(95) default NULL,
  `musiconhold` varchar(100) default NULL,
  `pickupgroup` varchar(10) default NULL,
  `qualify` char(3) default NULL,
  `regexten` varchar(80) default NULL,
  `restrictcid` char(3) default NULL,
  `rtptimeout` char(3) default NULL,
  `rtpholdtimeout` char(3) default NULL,
  `secret` varchar(80) default NULL,
  `setvar` varchar(100) default NULL,
  `disallow` varchar(100) default 'all',
  `allow` varchar(100) default 'g729;ilbc;gsm;ulaw;alaw',
  `fullcontact` varchar(80) NOT NULL default '',
  `ipaddr` varchar(15) NOT NULL default '',
  `port` mediumint(8) unsigned NOT NULL default '0',
  `regserver` varchar(100) default NULL,
  `regseconds` int(11) NOT NULL default '0',
  `username` varchar(80) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `name_2` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=3 ;

--
-- Dumping data for table `voip_ligne`
--

INSERT INTO `voip_ligne` (`id`, `name`, `host`, `nat`, `type`, `accountcode`, `amaflags`, `callgroup`, `callerid`, `cancallforward`, `canreinvite`, `context`, `defaultip`, `dtmfmode`, `fromuser`, `fromdomain`, `insecure`, `language`, `mailbox`, `md5secret`, `deny`, `permit`, `mask`, `musiconhold`, `pickupgroup`, `qualify`, `regexten`, `restrictcid`, `rtptimeout`, `rtpholdtimeout`, `secret`, `setvar`, `disallow`, `allow`, `fullcontact`, `ipaddr`, `port`, `regserver`, `regseconds`, `username`) VALUES
(1, '6005', 'dynamic', 'no', 'friend', NULL, NULL, NULL, NULL, 'yes', 'yes', 'default', NULL, 'rfc2833', NULL, NULL, NULL, 'en', '6005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, 'all', 'g729;ilbc;gsm;ulaw;alaw', '', '0.0.0.0', 0, '', 1232898718, '6005'),
(2, '6006', 'dynamic', 'no', 'friend', NULL, NULL, NULL, NULL, 'yes', 'yes', 'default', NULL, 'rfc2833', NULL, NULL, NULL, NULL, '6006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, 'all', 'g729;ilbc;gsm;ulaw;alaw', 'sip:6006@192.168.0.8:5060;rinstance=a3c12cdb3e2b5fe0;transport=UDP', '192.168.0.8', 5060, '', 1232916688, '6006');

