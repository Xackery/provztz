#This converts the VZTZ0.7.0 DB Source into the 0.8.0 structure.
USE neq; #Change to your DB name. THIS THING TAKES A LONG TIME, ESPECIALLY THE ITEM DB ADDITIONS

ALTER TABLE `neq`.`account` ADD `karma` int(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`account` MODIFY  `minilogin_ip` varchar(32) NOT NULL;


ALTER TABLE `neq`.`altadv_vars` ADD `aa_expansion` tinyint(3) unsigned NOT NULL DEFAULT '3';
ALTER TABLE `neq`.`altadv_vars` ADD `special_category` int(10) unsigned NOT NULL DEFAULT '4294967295';
ALTER TABLE `neq`.`altadv_vars` ADD `sof_type` tinyint(3) unsigned NOT NULL DEFAULT '1';
ALTER TABLE `neq`.`altadv_vars` ADD `sof_cost_inc` tinyint(3) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`altadv_vars` ADD `sof_max_level` tinyint(3) unsigned NOT NULL DEFAULT '1';
ALTER TABLE `neq`.`altadv_vars` ADD `sof_next_skill` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`altadv_vars` ADD `clientver` tinyint(3) unsigned NOT NULL DEFAULT '1';
#ALTER TABLE `neq`.`banned_ips` DELETE `enabled` int(10) unsigned DEFAULT NULL,
#  `BannedBy` varchar(32) DEFAULT NULL,
#  `UnBannedBy` varchar(32) DEFAULT NULL,
#  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
ALTER TABLE `neq`.`character_` ADD `instanceid` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`character_` ADD `lfp` tinyint(1) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`character_` ADD `lfg` tinyint(1) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`character_` ADD `mailkey` char(16) NOT NULL DEFAULT '0';
  
ALTER TABLE `neq`.`doors` ADD `version` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`doors` MODIFY `name` varchar(32) NOT NULL DEFAULT ''; #This needs to change from varchar 32 to varchar 16;
ALTER TABLE `neq`.`doors` ADD `nokeyring` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`doors` ADD `buffer` float DEFAULT '0';
ALTER TABLE `neq`.`doors` ADD `is_ldon_door` smallint(6) NOT NULL DEFAULT '0';

ALTER TABLE `neq`.`eventlog` MODIFY `accountname` varchar(30) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`eventlog` MODIFY `accountid` int(10) unsigned DEFAULT '0';
ALTER TABLE `neq`.`eventlog` MODIFY `status` int(5) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`eventlog` MODIFY `charname` varchar(64) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`eventlog` MODIFY `target` varchar(64) DEFAULT 'None';
ALTER TABLE `neq`.`eventlog` MODIFY `descriptiontype` varchar(50) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`eventlog` MODIFY `event_nid` int(11) NOT NULL DEFAULT '0';


ALTER TABLE `neq`.`faction_list` ADD `mod_c16` smallint(6) NOT NULL DEFAULT '0';

ALTER TABLE `neq`.`ground_spawns` ADD `version` smallint(5) unsigned NOT NULL DEFAULT '0';
 
ALTER TABLE `neq`.`group_leaders` ADD `marknpc` varchar(64) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`group_leaders` ADD `leadershipaa` tinyblob NOT NULL;
 

ALTER TABLE `neq`.`items` MODIFY `augslot2type` tinyint(3) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` MODIFY `augslot3type` tinyint(3) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` MODIFY `augslot4type` tinyint(3) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` MODIFY `augslot5type` tinyint(3) NOT NULL DEFAULT '0';

ALTER TABLE `neq`.`items` ADD `augslot1visible` tinyint(3) DEFAULT NULL;
ALTER TABLE `neq`.`items` ADD `augslot2visible` tinyint(3) DEFAULT NULL;
ALTER TABLE `neq`.`items` ADD `augslot3visible` tinyint(3) DEFAULT NULL;
ALTER TABLE `neq`.`items` ADD `augslot4visible` tinyint(3) DEFAULT NULL;
ALTER TABLE `neq`.`items` ADD `augslot5visible` tinyint(3) DEFAULT NULL;

ALTER TABLE `neq`.`items` ADD `lorefile` varchar(32) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`items` ADD `UNK014` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `svcorruption` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `UNK038` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `UNK060` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `augslot1unk2` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `augslot2unk2` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `augslot3unk2` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `augslot4unk2` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `augslot5unk2` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `UNK098` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `UNK109` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `UNK120` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `UNK121` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `questitemflag` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `UNK131` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `UNK132` text NOT NULL;
ALTER TABLE `neq`.`items` ADD `clickunk5` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `clickunk6` varchar(32) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`items` ADD `clickunk7` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `procunk1` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `procunk2` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `procunk3` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `procunk4` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `procunk6` varchar(32) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`items` ADD `procunk7` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `wornunk1` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `wornunk2` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `wornunk3` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `wornunk4` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `wornunk5` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `wornunk6` varchar(32) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`items` ADD `wornunk7` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `focusunk1` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `focusunk2` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `focusunk3` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `focusunk4` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `focusunk5` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `focusunk6` varchar(32) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`items` ADD `focusunk7` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `scrollunk1` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `scrollunk2` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `scrollunk3` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `scrollunk4` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `scrollunk5` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `scrollunk6` varchar(32) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`items` ADD `scrollunk7` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `UNK193` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `purity` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `evolvinglevel` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `UNK129` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `clickname` varchar(64) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`items` ADD `procname` varchar(64) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`items` ADD `wornname` varchar(64) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`items` ADD `focusname` varchar(64) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`items` ADD `scrollname` varchar(64) NOT NULL DEFAULT '';
ALTER TABLE `neq`.`items` ADD `dsmitigation` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_str` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_int` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_wis` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_agi` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_dex` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_sta` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_cha` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_pr` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_dr` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_fr` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_cr` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_mr` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `heroic_svcorrup` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `healamt` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `spelldmg` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `clairvoyance` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `backstabdmg` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`items` ADD `created` varchar(64) NOT NULL DEFAULT '';
 
ALTER TABLE `neq`.`npc_faction_entries` MODIFY `npc_faction_id` int(11) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`npc_faction_entries` MODIFY `faction_id` int(11) unsigned NOT NULL DEFAULT '0';

ALTER TABLE `neq`.`npc_spells` MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
ALTER TABLE `neq`.`npc_spells` MODIFY `parent_list` int(11) unsigned NOT NULL DEFAULT '0';

ALTER TABLE `neq`.`npc_spells_entries` MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;

ALTER TABLE `neq`.`npc_types` ADD `adventure_template_id` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`npc_types` ADD `trap_template` int(10) unsigned DEFAULT '0';
ALTER TABLE `neq`.`npc_types` ADD `drakkin_heritage` int(10) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`npc_types` ADD `drakkin_tattoo` int(10) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`npc_types` ADD `drakkin_details` int(10) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`npc_types` ADD `armortint_id` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`npc_types` ADD `armortint_red` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`npc_types` ADD `armortint_green` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`npc_types` ADD `armortint_blue` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`npc_types` MODIFY `isbot` tinyint(4) NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`npc_types` ADD `exclude` tinyint(4) NOT NULL DEFAULT '1';
ALTER TABLE `neq`.`npc_types` ADD `slow_mitigation` float unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`npc_types` ADD `version` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`npc_types` ADD `maxlevel` tinyint(3) NOT NULL default '0';
ALTER TABLE `neq`.`npc_types` ADD `scalerate` int(11) NOT NULL default '100';

ALTER TABLE `neq`.`object` MODIFY `zoneid` int(11) unsigned NOT NULL DEFAULT '0';
 
ALTER TABLE `neq`.`object` ADD `version` smallint(5) unsigned NOT NULL DEFAULT '0';
 
ALTER TABLE `neq`.`object_contents` MODIFY `zoneid` int(11) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`object_contents` MODIFY `parentid` int(11) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`object_contents` MODIFY `bagidx` int(11) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`object_contents` MODIFY `itemid` int(11) unsigned NOT NULL DEFAULT '0';
 
ALTER TABLE `neq`.`player_corpses` ADD `instanceid` smallint(5) unsigned NOT NULL DEFAULT '0';
  

ALTER TABLE `neq`.`spawn2` ADD `version` smallint(5) unsigned NOT NULL DEFAULT '0';
  
ALTER TABLE `neq`.`traps` ADD `version` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`traps` ADD `level` mediumint(4) unsigned NOT NULL DEFAULT '1';
ALTER TABLE `neq`.`traps` ADD `respawn_time` int(11) unsigned NOT NULL DEFAULT '60';
ALTER TABLE `neq`.`traps` ADD `respawn_var` int(11) unsigned NOT NULL DEFAULT '0';
  
ALTER TABLE `neq`.`zone` ADD `insttype` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0';
ALTER TABLE `neq`.`zone` ADD `peqzone` tinyint(4) NOT NULL DEFAULT '1';


ALTER TABLE `neq`.`zone_points` ADD  `buffer` float DEFAULT '0';
  
CREATE TABLE  `neq`.`aa_actions` (
  `aaid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reuse_time` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `target` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nonspell_action` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nonspell_mana` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `nonspell_duration` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `redux_aa` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `redux_rate` tinyint(4) NOT NULL DEFAULT '0',
  `redux_aa2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `redux_rate2` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aaid`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`aa_effects`;
CREATE TABLE  `neq`.`aa_effects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aaid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `effectid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `base1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `base2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`aaid`,`slot`)
) ENGINE=MyISAM AUTO_INCREMENT=418 DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`aa_timers`;
CREATE TABLE  `neq`.`aa_timers` (
  `charid` int(12) unsigned NOT NULL DEFAULT '0',
  `ability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `begin` int(10) unsigned NOT NULL DEFAULT '0',
  `end` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charid`,`ability`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE  `neq`.`activities` (
  `taskid` int(11) unsigned NOT NULL DEFAULT '0',
  `activityid` int(11) unsigned NOT NULL DEFAULT '0',
  `step` int(11) unsigned NOT NULL DEFAULT '0',
  `activitytype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `text1` varchar(64) NOT NULL DEFAULT '',
  `text2` varchar(64) NOT NULL DEFAULT '',
  `text3` varchar(128) NOT NULL DEFAULT '',
  `goalid` int(11) unsigned NOT NULL DEFAULT '0',
  `goalmethod` int(10) unsigned NOT NULL DEFAULT '0',
  `goalcount` int(11) DEFAULT '1',
  `delivertonpc` int(11) unsigned NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `optional` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`taskid`,`activityid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`adventure_details`;
CREATE TABLE  `neq`.`adventure_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adventure_id` smallint(5) unsigned NOT NULL,
  `instance_id` int(11) NOT NULL DEFAULT '-1',
  `count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assassinate_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time_created` int(10) unsigned NOT NULL DEFAULT '0',
  `time_zoned` int(10) unsigned NOT NULL DEFAULT '0',
  `time_completed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`adventure_members`;
CREATE TABLE  `neq`.`adventure_members` (
  `id` int(10) unsigned NOT NULL,
  `charid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`charid`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`adventure_stats`;
CREATE TABLE  `neq`.`adventure_stats` (
  `player_id` int(10) unsigned NOT NULL,
  `guk_wins` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mir_wins` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mmc_wins` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ruj_wins` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tak_wins` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `guk_losses` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mir_losses` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mmc_losses` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ruj_losses` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tak_losses` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player_id` (`player_id`),
  KEY `player_id_2` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`adventure_template`;
CREATE TABLE  `neq`.`adventure_template` (
  `id` int(10) unsigned NOT NULL,
  `zone` varchar(64) NOT NULL,
  `zone_version` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_hard` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_raid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `max_level` tinyint(3) unsigned NOT NULL DEFAULT '65',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type_data` int(10) unsigned NOT NULL DEFAULT '0',
  `type_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assa_x` float NOT NULL DEFAULT '0',
  `assa_y` float NOT NULL DEFAULT '0',
  `assa_z` float NOT NULL DEFAULT '0',
  `assa_h` float NOT NULL DEFAULT '0',
  `text` varchar(512) NOT NULL,
  `duration` int(10) unsigned NOT NULL DEFAULT '7200',
  `zone_in_time` int(10) unsigned NOT NULL DEFAULT '1800',
  `win_points` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lose_points` smallint(5) unsigned NOT NULL DEFAULT '0',
  `theme` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `zone_in_zone_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone_in_x` float NOT NULL DEFAULT '0',
  `zone_in_y` float NOT NULL DEFAULT '0',
  `zone_in_object_id` smallint(4) NOT NULL DEFAULT '0',
  `dest_x` float NOT NULL DEFAULT '0',
  `dest_y` float NOT NULL DEFAULT '0',
  `dest_z` float NOT NULL DEFAULT '0',
  `dest_h` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`adventure_template_entry`;
CREATE TABLE  `neq`.`adventure_template_entry` (
  `id` int(10) unsigned NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`,`template_id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`adventure_template_entry_flavor`;
CREATE TABLE  `neq`.`adventure_template_entry_flavor` (
  `id` int(10) unsigned NOT NULL,
  `text` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`blocked_spells`;
CREATE TABLE  `neq`.`blocked_spells` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spellid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `zoneid` int(4) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `x_diff` float NOT NULL DEFAULT '0',
  `y_diff` float NOT NULL DEFAULT '0',
  `z_diff` float NOT NULL DEFAULT '0',
  `message` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=413 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `neq`.`bugs`;
CREATE TABLE  `neq`.`bugs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `zone` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `ui` varchar(128) NOT NULL,
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `type` varchar(64) NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `target` varchar(64) DEFAULT NULL,
  `bug` varchar(1024) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`buyer`;
CREATE TABLE  `neq`.`buyer` (
  `charid` int(11) NOT NULL,
  `buyslot` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itemname` varchar(65) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`charid`,`buyslot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE  `neq`.`damageshieldtypes` (
  `spellid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spellid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE  `neq`.`db_version` (
  `Revision` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Last applied sql update to DB';



CREATE TABLE  `neq`.`character_activities` (
  `charid` int(11) unsigned NOT NULL,
  `taskid` int(11) unsigned NOT NULL,
  `activityid` int(11) unsigned NOT NULL DEFAULT '0',
  `donecount` int(11) unsigned NOT NULL DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`charid`,`taskid`,`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE  `neq`.`completed_tasks` (
  `charid` int(11) unsigned NOT NULL,
  `completedtime` int(11) unsigned NOT NULL,
  `taskid` int(11) unsigned NOT NULL,
  `activityid` int(11) NOT NULL,
  PRIMARY KEY (`charid`,`completedtime`,`taskid`,`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`character_enabledtasks`;
CREATE TABLE  `neq`.`character_enabledtasks` (
  `charid` int(11) unsigned NOT NULL,
  `taskid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`charid`,`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`character_tasks`;
CREATE TABLE  `neq`.`character_tasks` (
  `charid` int(11) unsigned NOT NULL,
  `taskid` int(11) unsigned NOT NULL,
  `slot` int(11) unsigned NOT NULL,
  `acceptedtime` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`charid`,`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`chatchannels`;
CREATE TABLE  `neq`.`chatchannels` (
  `name` varchar(64) NOT NULL,
  `owner` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `minstatus` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


#DROP TABLE IF EXISTS `neq`.`friends`;
CREATE TABLE  `neq`.`friends` (
  `charid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1 = Friend, 0 = Ignore',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`charid`,`type`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`goallists`;
CREATE TABLE  `neq`.`goallists` (
  `listid` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `neq`.`guild_alliances`;
CREATE TABLE  `neq`.`guild_alliances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guildone` int(11) NOT NULL DEFAULT '0',
  `guildtwo` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `neq`.`guild_controllers`;
CREATE TABLE  `neq`.`guild_controllers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `npc_id` int(11) NOT NULL DEFAULT '0',
  `owned_guild_id` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `terrainarea` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `npc_id` (`npc_id`),
  UNIQUE KEY `zoneid` (`zoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#DROP TABLE IF EXISTS `neq`.`horses`;
CREATE TABLE  `neq`.`horses` (
  `filename` varchar(32) NOT NULL DEFAULT '',
  `race` smallint(3) NOT NULL DEFAULT '216',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `texture` tinyint(2) NOT NULL DEFAULT '0',
  `mountspeed` float(4,2) NOT NULL DEFAULT '0.75',
  `notes` varchar(64) DEFAULT 'Notes',
  PRIMARY KEY (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`instance_lockout`;
CREATE TABLE  `neq`.`instance_lockout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` int(11) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `duration` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`instance_lockout_player`;
CREATE TABLE  `neq`.`instance_lockout_player` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `charid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`keyring`;
CREATE TABLE  `neq`.`keyring` (
  `char_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`ldon_trap_entries`;
CREATE TABLE  `neq`.`ldon_trap_entries` (
  `id` int(10) unsigned NOT NULL,
  `trap_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`trap_id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`ldon_trap_templates`;
CREATE TABLE  `neq`.`ldon_trap_templates` (
  `id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `spell_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `skill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`mail`;
CREATE TABLE  `neq`.`mail` (
  `msgid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `charid` int(10) unsigned NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `from` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `to` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`msgid`),
  KEY `charid` (`charid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`npc_types_metadata`;
CREATE TABLE  `neq`.`npc_types_metadata` (
  `npc_types_id` int(11) NOT NULL DEFAULT '0',
  `isPKMob` tinyint(4) NOT NULL DEFAULT '0',
  `isNamedMob` tinyint(4) NOT NULL DEFAULT '0',
  `isRaidTarget` tinyint(4) NOT NULL DEFAULT '0',
  `isCreatedMob` tinyint(4) NOT NULL DEFAULT '0',
  `isCustomFeatureNPC` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`npc_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`npc_types_tint`;
CREATE TABLE  `neq`.`npc_types_tint` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `tint_set_name` text NOT NULL,
  `red1h` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grn1h` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blu1h` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `red2c` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grn2c` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blu2c` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `red3a` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grn3a` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blu3a` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `red4b` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grn4b` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blu4b` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `red5g` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grn5g` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blu5g` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `red6l` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grn6l` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blu6l` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `red7f` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grn7f` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blu7f` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `red8x` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grn8x` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blu8x` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `red9x` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grn9x` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blu9x` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#DROP TABLE IF EXISTS `neq`.`proximities`;
CREATE TABLE  `neq`.`proximities` (
  `zoneid` int(10) unsigned NOT NULL DEFAULT '0',
  `exploreid` int(10) unsigned NOT NULL DEFAULT '0',
  `minx` float(14,6) NOT NULL DEFAULT '0.000000',
  `maxx` float(14,6) NOT NULL DEFAULT '0.000000',
  `miny` float(14,6) NOT NULL DEFAULT '0.000000',
  `maxy` float(14,6) NOT NULL DEFAULT '0.000000',
  `minz` float(14,6) NOT NULL DEFAULT '0.000000',
  `maxz` float(14,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`zoneid`,`exploreid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`raid_details`;
CREATE TABLE  `neq`.`raid_details` (
  `raidid` int(4) NOT NULL,
  `loottype` int(4) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  PRIMARY KEY (`raidid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`raid_members`;
CREATE TABLE  `neq`.`raid_members` (
  `raidid` int(4) NOT NULL,
  `charid` int(4) NOT NULL,
  `groupid` int(4) NOT NULL,
  `_class` tinyint(4) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `name` varchar(64) NOT NULL,
  `isgroupleader` tinyint(1) NOT NULL,
  `israidleader` tinyint(1) NOT NULL,
  `islooter` tinyint(1) NOT NULL,
  PRIMARY KEY (`charid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`respawn_times`;
CREATE TABLE  `neq`.`respawn_times` (
  `id` int(11) NOT NULL DEFAULT '0',
  `start` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `instance_id` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`instance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`saylink`;
CREATE TABLE  `neq`.`saylink` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`spells_new`;
CREATE TABLE  `neq`.`spells_new` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `player_1` varchar(64) DEFAULT 'BLUE_TRAIL',
  `teleport_zone` varchar(64) DEFAULT NULL,
  `you_cast` varchar(120) DEFAULT NULL,
  `other_casts` varchar(120) DEFAULT NULL,
  `cast_on_you` varchar(120) DEFAULT NULL,
  `cast_on_other` varchar(120) DEFAULT NULL,
  `spell_fades` varchar(120) DEFAULT NULL,
  `range` int(11) NOT NULL DEFAULT '100',
  `aoerange` int(11) NOT NULL DEFAULT '0',
  `pushback` int(11) NOT NULL DEFAULT '0',
  `pushup` int(11) NOT NULL DEFAULT '0',
  `cast_time` int(11) NOT NULL DEFAULT '0',
  `recovery_time` int(11) NOT NULL DEFAULT '0',
  `recast_time` int(11) NOT NULL DEFAULT '0',
  `buffdurationformula` int(11) NOT NULL DEFAULT '7',
  `buffduration` int(11) NOT NULL DEFAULT '65',
  `AEDuration` int(11) NOT NULL DEFAULT '0',
  `mana` int(11) NOT NULL DEFAULT '0',
  `effect_base_value1` int(11) NOT NULL DEFAULT '100',
  `effect_base_value2` int(11) NOT NULL DEFAULT '0',
  `effect_base_value3` int(11) NOT NULL DEFAULT '0',
  `effect_base_value4` int(11) NOT NULL DEFAULT '0',
  `effect_base_value5` int(11) NOT NULL DEFAULT '0',
  `effect_base_value6` int(11) NOT NULL DEFAULT '0',
  `effect_base_value7` int(11) NOT NULL DEFAULT '0',
  `effect_base_value8` int(11) NOT NULL DEFAULT '0',
  `effect_base_value9` int(11) NOT NULL DEFAULT '0',
  `effect_base_value10` int(11) NOT NULL DEFAULT '0',
  `effect_base_value11` int(11) NOT NULL DEFAULT '0',
  `effect_base_value12` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value1` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value2` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value3` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value4` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value5` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value6` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value7` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value8` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value9` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value10` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value11` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value12` int(11) NOT NULL DEFAULT '0',
  `max1` int(11) NOT NULL DEFAULT '0',
  `max2` int(11) NOT NULL DEFAULT '0',
  `max3` int(11) NOT NULL DEFAULT '0',
  `max4` int(11) NOT NULL DEFAULT '0',
  `max5` int(11) NOT NULL DEFAULT '0',
  `max6` int(11) NOT NULL DEFAULT '0',
  `max7` int(11) NOT NULL DEFAULT '0',
  `max8` int(11) NOT NULL DEFAULT '0',
  `max9` int(11) NOT NULL DEFAULT '0',
  `max10` int(11) NOT NULL DEFAULT '0',
  `max11` int(11) NOT NULL DEFAULT '0',
  `max12` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `memicon` int(11) NOT NULL DEFAULT '0',
  `components1` int(11) NOT NULL DEFAULT '-1',
  `components2` int(11) NOT NULL DEFAULT '-1',
  `components3` int(11) NOT NULL DEFAULT '-1',
  `components4` int(11) NOT NULL DEFAULT '-1',
  `component_counts1` int(11) NOT NULL DEFAULT '1',
  `component_counts2` int(11) NOT NULL DEFAULT '1',
  `component_counts3` int(11) NOT NULL DEFAULT '1',
  `component_counts4` int(11) NOT NULL DEFAULT '1',
  `NoexpendReagent1` int(11) NOT NULL DEFAULT '-1',
  `NoexpendReagent2` int(11) NOT NULL DEFAULT '-1',
  `NoexpendReagent3` int(11) NOT NULL DEFAULT '-1',
  `NoexpendReagent4` int(11) NOT NULL DEFAULT '-1',
  `formula1` int(11) NOT NULL DEFAULT '100',
  `formula2` int(11) NOT NULL DEFAULT '100',
  `formula3` int(11) NOT NULL DEFAULT '100',
  `formula4` int(11) NOT NULL DEFAULT '100',
  `formula5` int(11) NOT NULL DEFAULT '100',
  `formula6` int(11) NOT NULL DEFAULT '100',
  `formula7` int(11) NOT NULL DEFAULT '100',
  `formula8` int(11) NOT NULL DEFAULT '100',
  `formula9` int(11) NOT NULL DEFAULT '100',
  `formula10` int(11) NOT NULL DEFAULT '100',
  `formula11` int(11) NOT NULL DEFAULT '100',
  `formula12` int(11) NOT NULL DEFAULT '100',
  `LightType` int(11) NOT NULL DEFAULT '0',
  `goodEffect` int(11) NOT NULL DEFAULT '0',
  `Activated` int(11) NOT NULL DEFAULT '0',
  `resisttype` int(11) NOT NULL DEFAULT '0',
  `effectid1` int(11) NOT NULL DEFAULT '254',
  `effectid2` int(11) NOT NULL DEFAULT '254',
  `effectid3` int(11) NOT NULL DEFAULT '254',
  `effectid4` int(11) NOT NULL DEFAULT '254',
  `effectid5` int(11) NOT NULL DEFAULT '254',
  `effectid6` int(11) NOT NULL DEFAULT '254',
  `effectid7` int(11) NOT NULL DEFAULT '254',
  `effectid8` int(11) NOT NULL DEFAULT '254',
  `effectid9` int(11) NOT NULL DEFAULT '254',
  `effectid10` int(11) NOT NULL DEFAULT '254',
  `effectid11` int(11) NOT NULL DEFAULT '254',
  `effectid12` int(11) NOT NULL DEFAULT '254',
  `targettype` int(11) NOT NULL DEFAULT '2',
  `basediff` int(11) NOT NULL DEFAULT '0',
  `skill` int(11) NOT NULL DEFAULT '98',
  `zonetype` int(11) NOT NULL DEFAULT '-1',
  `EnvironmentType` int(11) NOT NULL DEFAULT '0',
  `TimeOfDay` int(11) NOT NULL DEFAULT '0',
  `classes1` int(11) NOT NULL DEFAULT '255',
  `classes2` int(11) NOT NULL DEFAULT '255',
  `classes3` int(11) NOT NULL DEFAULT '255',
  `classes4` int(11) NOT NULL DEFAULT '255',
  `classes5` int(11) NOT NULL DEFAULT '255',
  `classes6` int(11) NOT NULL DEFAULT '255',
  `classes7` int(11) NOT NULL DEFAULT '255',
  `classes8` int(11) NOT NULL DEFAULT '255',
  `classes9` int(11) NOT NULL DEFAULT '255',
  `classes10` int(11) NOT NULL DEFAULT '255',
  `classes11` int(11) NOT NULL DEFAULT '255',
  `classes12` int(11) NOT NULL DEFAULT '255',
  `classes13` int(11) NOT NULL DEFAULT '255',
  `classes14` int(11) NOT NULL DEFAULT '255',
  `classes15` int(11) NOT NULL DEFAULT '255',
  `classes16` int(11) NOT NULL DEFAULT '255',
  `CastingAnim` int(11) NOT NULL DEFAULT '44',
  `TargetAnim` int(11) NOT NULL DEFAULT '13',
  `TravelType` int(11) NOT NULL DEFAULT '0',
  `SpellAffectIndex` int(11) NOT NULL DEFAULT '-1',
  `field124` int(11) NOT NULL DEFAULT '0',
  `field125` int(11) NOT NULL DEFAULT '0',
  `deities1` int(11) NOT NULL DEFAULT '0',
  `deities2` int(11) NOT NULL DEFAULT '0',
  `deities3` int(11) NOT NULL DEFAULT '0',
  `deities4` int(11) NOT NULL DEFAULT '0',
  `deities5` int(11) NOT NULL DEFAULT '0',
  `deities6` int(11) NOT NULL DEFAULT '0',
  `deities7` int(11) NOT NULL DEFAULT '0',
  `deities8` int(11) NOT NULL DEFAULT '0',
  `deities9` int(11) NOT NULL DEFAULT '0',
  `deities10` int(11) NOT NULL DEFAULT '0',
  `deities11` int(11) NOT NULL DEFAULT '0',
  `deities12` int(12) NOT NULL DEFAULT '0',
  `deities13` int(11) NOT NULL DEFAULT '0',
  `deities14` int(11) NOT NULL DEFAULT '0',
  `deities15` int(11) NOT NULL DEFAULT '0',
  `deities16` int(11) NOT NULL DEFAULT '0',
  `field142` int(11) NOT NULL DEFAULT '100',
  `field143` int(11) NOT NULL DEFAULT '0',
  `new_icon` int(11) NOT NULL DEFAULT '161',
  `spellanim` int(11) NOT NULL DEFAULT '0',
  `uninterruptable` int(11) NOT NULL DEFAULT '0',
  `ResistDiff` int(11) NOT NULL DEFAULT '-150',
  `dot_stacking_exempt` int(11) NOT NULL DEFAULT '0',
  `deleteable` int(11) NOT NULL DEFAULT '0',
  `RecourseLink` int(11) NOT NULL DEFAULT '0',
  `field151` int(11) NOT NULL DEFAULT '0',
  `field152` int(11) NOT NULL DEFAULT '0',
  `field153` int(11) NOT NULL DEFAULT '0',
  `short_buff_box` int(11) NOT NULL DEFAULT '-1',
  `descnum` int(11) NOT NULL DEFAULT '0',
  `typedescnum` int(11) DEFAULT NULL,
  `effectdescnum` int(11) DEFAULT NULL,
  `field158` int(11) DEFAULT NULL,
  `field159` int(11) NOT NULL DEFAULT '0',
  `field160` int(11) NOT NULL DEFAULT '0',
  `field161` int(11) NOT NULL DEFAULT '0',
  `bonushate` int(11) NOT NULL DEFAULT '0',
  `field163` int(11) NOT NULL DEFAULT '100',
  `field164` int(11) NOT NULL DEFAULT '-150',
  `field165` int(11) NOT NULL DEFAULT '0',
  `EndurCost` int(11) NOT NULL DEFAULT '0',
  `EndurTimerIndex` int(11) NOT NULL DEFAULT '0',
  `field168` int(11) NOT NULL DEFAULT '0',
  `field169` int(11) NOT NULL DEFAULT '0',
  `field170` int(11) NOT NULL DEFAULT '0',
  `field171` int(11) NOT NULL DEFAULT '0',
  `field172` int(11) NOT NULL DEFAULT '0',
  `HateAdded` int(11) NOT NULL DEFAULT '0',
  `EndurUpkeep` int(11) NOT NULL DEFAULT '0',
  `field175` int(11) DEFAULT NULL,
  `numhits` int(11) NOT NULL DEFAULT '0',
  `pvpresistbase` int(11) NOT NULL DEFAULT '-150',
  `pvpresistcalc` int(11) NOT NULL DEFAULT '100',
  `pvpresistcap` int(11) NOT NULL DEFAULT '-150',
  `spell_category` int(11) NOT NULL DEFAULT '-99',
  `field181` int(11) NOT NULL DEFAULT '7',
  `field182` int(11) NOT NULL DEFAULT '65',
  `field183` int(11) NOT NULL DEFAULT '0',
  `field184` int(11) NOT NULL DEFAULT '0',
  `can_mgb` int(11) NOT NULL DEFAULT '0',
  `nodispell` int(11) NOT NULL DEFAULT '-1',
  `npc_category` int(11) NOT NULL DEFAULT '0',
  `npc_usefulness` int(11) NOT NULL DEFAULT '0',
  `field189` int(11) NOT NULL DEFAULT '0',
  `field190` int(11) NOT NULL DEFAULT '0',
  `field191` int(11) NOT NULL DEFAULT '0',
  `field192` int(11) NOT NULL DEFAULT '0',
  `field193` int(11) NOT NULL DEFAULT '0',
  `field194` int(11) NOT NULL DEFAULT '0',
  `field195` int(11) NOT NULL DEFAULT '0',
  `field196` int(11) NOT NULL DEFAULT '0',
  `field197` int(11) NOT NULL DEFAULT '0',
  `field198` int(11) NOT NULL DEFAULT '0',
  `field199` int(11) NOT NULL DEFAULT '1',
  `field200` int(11) NOT NULL DEFAULT '0',
  `field201` int(11) NOT NULL DEFAULT '0',
  `field202` int(11) NOT NULL DEFAULT '0',
  `field203` int(11) DEFAULT '0',
  `field204` int(11) DEFAULT '0',
  `field205` int(11) DEFAULT '0',
  `field206` int(11) DEFAULT '-1',
  `spellgroup` int(11) DEFAULT '0',
  `field208` int(11) DEFAULT '0',
  `field209` int(11) DEFAULT '0',
  `field210` int(11) DEFAULT '1',
  `field211` int(11) DEFAULT '0',
  `field212` int(11) DEFAULT '0',
  `field213` int(11) DEFAULT '1',
  `field214` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`tasks`;
CREATE TABLE  `neq`.`tasks` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `duration` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `reward` varchar(64) NOT NULL DEFAULT '',
  `rewardid` int(11) unsigned NOT NULL DEFAULT '0',
  `cashreward` int(11) unsigned NOT NULL DEFAULT '0',
  `xpreward` int(10) unsigned NOT NULL DEFAULT '0',
  `rewardmethod` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `startzone` int(11) NOT NULL DEFAULT '0',
  `minlevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxlevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `repeatable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`tasksets`;
CREATE TABLE  `neq`.`tasksets` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `taskid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`taskid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`titles`;
CREATE TABLE  `neq`.`titles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `skill_id` tinyint(3) NOT NULL DEFAULT '-1',
  `min_skill_value` mediumint(8) NOT NULL DEFAULT '-1',
  `max_skill_value` mediumint(8) NOT NULL DEFAULT '-1',
  `min_aa_points` mediumint(8) NOT NULL DEFAULT '-1',
  `max_aa_points` mediumint(8) NOT NULL DEFAULT '-1',
  `class` tinyint(4) NOT NULL DEFAULT '-1',
  `gender` tinyint(1) NOT NULL DEFAULT '-1' COMMENT '-1 = either, 0 = male, 1 = female',
  `char_id` int(11) NOT NULL DEFAULT '-1',
  `status` int(11) NOT NULL DEFAULT '-1',
  `item_id` int(11) NOT NULL DEFAULT '-1',
  `prefix` varchar(32) NOT NULL DEFAULT '',
  `suffix` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

#DROP TABLE IF EXISTS `neq`.`trader`;
CREATE TABLE  `neq`.`trader` (
  `char_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `serialnumber` int(10) unsigned NOT NULL DEFAULT '0',
  `charges` int(11) NOT NULL DEFAULT '0',
  `item_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `slot_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`slot_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#DROP TABLE IF EXISTS `neq`.`trader_audit`;
CREATE TABLE  `neq`.`trader_audit` (
  `time` datetime NOT NULL,
  `seller` varchar(64) NOT NULL,
  `buyer` varchar(64) NOT NULL,
  `itemname` varchar(64) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalcost` int(11) NOT NULL,
  `trantype` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

