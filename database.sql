-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_priority_scheduled_date_gmt` (`claim_id`,`status`,`priority`,`scheduled_date_gmt`),
  KEY `status_last_attempt_gmt` (`status`,`last_attempt_gmt`),
  KEY `status_claim_id` (`status`,`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (7,'action_scheduler/migration_hook','complete','2026-10-14 03:42:15','2026-10-14 03:42:15',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1791949335;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1791949335;}',1,1,'2026-10-14 03:42:21','2026-10-13 22:42:21',2,NULL),(8,'action_scheduler_run_recurring_actions_schedule_hook','pending','2026-10-15 03:00:00','2026-10-15 03:00:00',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1792033200;s:18:\"\0*\0first_timestamp\";i:1792033200;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1792033200;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),(9,'wpforms_process_forms_locator_scan','complete','2026-10-14 03:42:22','2026-10-14 03:42:22',10,'{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1791949342;s:18:\"\0*\0first_timestamp\";i:1791949342;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1791949342;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2026-10-14 03:43:04','2026-10-13 22:43:04',4,NULL),(10,'wpforms_process_purge_spam','complete','2026-10-14 03:42:22','2026-10-14 03:42:22',10,'{\"tasks_meta_id\":2}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1791949342;s:18:\"\0*\0first_timestamp\";i:1791949342;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1791949342;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2026-10-14 03:43:04','2026-10-13 22:43:04',4,NULL),(11,'wpforms_email_summaries_fetch_info_blocks','pending','2026-10-19 06:52:11','2026-10-19 06:52:11',10,'{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1792392731;s:18:\"\0*\0first_timestamp\";i:1792392731;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1792392731;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),(12,'wpforms_dashboard_refresh_cache','complete','2026-10-14 03:43:04','2026-10-14 03:43:04',10,'{\"tasks_meta_id\":3}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1791949384;s:18:\"\0*\0first_timestamp\";i:1791949384;s:13:\"\0*\0recurrence\";i:1800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1791949384;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:1800;}',3,1,'2026-10-14 03:43:04','2026-10-13 22:43:04',4,NULL),(13,'wpforms_analytics_aggregate','pending','2026-10-14 06:00:00','2026-10-14 06:00:00',10,'{\"tasks_meta_id\":4}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1791957600;s:18:\"\0*\0first_timestamp\";i:1791957600;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1791957600;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),(14,'wpforms_process_forms_locator_scan','canceled','2026-10-15 03:43:04','2026-10-15 03:43:04',10,'{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1792035784;s:18:\"\0*\0first_timestamp\";i:1791949342;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1792035784;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),(15,'wpforms_process_purge_spam','pending','2026-10-15 03:43:04','2026-10-15 03:43:04',10,'{\"tasks_meta_id\":2}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1792035784;s:18:\"\0*\0first_timestamp\";i:1791949342;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1792035784;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),(16,'wpforms_dashboard_refresh_cache','pending','2026-10-14 04:13:04','2026-10-14 04:13:04',10,'{\"tasks_meta_id\":3}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1791951184;s:18:\"\0*\0first_timestamp\";i:1791949384;s:13:\"\0*\0recurrence\";i:1800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1791951184;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:1800;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),(17,'wpforms_process_forms_locator_scan','complete','2026-10-14 03:43:30','2026-10-13 22:43:30',10,'{\"tasks_meta_id\":5}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1791949410;s:18:\"\0*\0first_timestamp\";i:1791949410;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1791949410;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2026-10-14 03:43:59','2026-10-13 22:43:59',6,NULL),(18,'wpforms_process_forms_locator_scan','pending','2026-10-15 03:43:59','2026-10-14 22:43:59',10,'{\"tasks_meta_id\":5}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1792035839;s:18:\"\0*\0first_timestamp\";i:1791949410;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1792035839;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration'),(2,'ActionScheduler'),(3,'wpforms');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,7,'action created','2026-10-14 03:41:15','2026-10-14 03:41:15'),(2,8,'action created','2026-10-14 03:41:15','2026-10-14 03:41:15'),(3,7,'action started via WP Cron','2026-10-14 03:42:21','2026-10-14 03:42:21'),(4,7,'action complete via WP Cron','2026-10-14 03:42:21','2026-10-14 03:42:21'),(5,9,'action created','2026-10-14 03:42:22','2026-10-14 03:42:22'),(6,10,'action created','2026-10-14 03:42:22','2026-10-14 03:42:22'),(7,11,'action created','2026-10-14 03:42:22','2026-10-14 03:42:22'),(8,12,'action created','2026-10-14 03:43:04','2026-10-14 03:43:04'),(9,13,'action created','2026-10-14 03:43:04','2026-10-14 03:43:04'),(10,9,'action started via WP Cron','2026-10-14 03:43:04','2026-10-14 03:43:04'),(11,9,'action complete via WP Cron','2026-10-14 03:43:04','2026-10-14 03:43:04'),(12,14,'action created','2026-10-14 03:43:04','2026-10-14 03:43:04'),(13,10,'action started via WP Cron','2026-10-14 03:43:04','2026-10-14 03:43:04'),(14,10,'action complete via WP Cron','2026-10-14 03:43:04','2026-10-14 03:43:04'),(15,15,'action created','2026-10-14 03:43:04','2026-10-14 03:43:04'),(16,12,'action started via WP Cron','2026-10-14 03:43:04','2026-10-14 03:43:04'),(17,12,'action complete via WP Cron','2026-10-14 03:43:04','2026-10-14 03:43:04'),(18,16,'action created','2026-10-14 03:43:04','2026-10-14 03:43:04'),(19,14,'action canceled','2026-10-14 03:43:30','2026-10-13 22:43:30'),(20,17,'action created','2026-10-14 03:43:30','2026-10-13 22:43:30'),(21,17,'action started via WP Cron','2026-10-14 03:43:59','2026-10-13 22:43:59'),(22,17,'action complete via WP Cron','2026-10-14 03:43:59','2026-10-13 22:43:59'),(23,18,'action created','2026-10-14 03:43:59','2026-10-13 22:43:59');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_e_events`
--

DROP TABLE IF EXISTS `wp_e_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_e_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_data` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_e_events`
--

LOCK TABLES `wp_e_events` WRITE;
/*!40000 ALTER TABLE `wp_e_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_e_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:10:{i:1791949492;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1791952788;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1791952789;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1791954588;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1791956388;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1792035589;a:3:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:41:\"wp_privacy_personal_data_cleanup_requests\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1792035645;a:1:{s:28:\"elementor/tracker/send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1792386000;a:2:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}s:33:\"wpforms_weekly_entries_count_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1792554033;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on'),(2,'siteurl','https://dhessir-cms.lndo.site','on'),(3,'home','https://dhessir-cms.lndo.site','on'),(4,'blogname','Dhessir Consultant','on'),(5,'blogdescription','','on'),(6,'users_can_register','0','on'),(7,'admin_email','contacto@dhessir.co','on'),(8,'start_of_week','1','on'),(9,'use_balanceTags','0','on'),(10,'use_smilies','1','on'),(11,'require_name_email','1','on'),(12,'comments_notify','1','on'),(13,'posts_per_rss','10','on'),(14,'rss_use_excerpt','0','on'),(15,'mailserver_url','mail.example.com','on'),(16,'mailserver_login','login@example.com','on'),(17,'mailserver_pass','','on'),(18,'mailserver_port','110','on'),(19,'default_category','1','on'),(20,'default_comment_status','open','on'),(21,'default_ping_status','open','on'),(22,'default_pingback_flag','1','on'),(23,'posts_per_page','10','on'),(24,'date_format','j F, Y','on'),(25,'time_format','g:i a','on'),(26,'links_updated_date_format','j F, Y g:i a','on'),(27,'comment_moderation','0','on'),(28,'moderation_notify','1','on'),(29,'permalink_structure','/%postname%/','on'),(30,'rewrite_rules','a:163:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:46:\"e-floating-buttons/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"e-floating-buttons/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"e-floating-buttons/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"e-floating-buttons/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"e-floating-buttons/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"e-floating-buttons/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"e-floating-buttons/([^/]+)/embed/?$\";s:51:\"index.php?e-floating-buttons=$matches[1]&embed=true\";s:39:\"e-floating-buttons/([^/]+)/trackback/?$\";s:45:\"index.php?e-floating-buttons=$matches[1]&tb=1\";s:47:\"e-floating-buttons/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?e-floating-buttons=$matches[1]&paged=$matches[2]\";s:54:\"e-floating-buttons/([^/]+)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?e-floating-buttons=$matches[1]&cpage=$matches[2]\";s:43:\"e-floating-buttons/([^/]+)(?:/([0-9]+))?/?$\";s:57:\"index.php?e-floating-buttons=$matches[1]&page=$matches[2]\";s:35:\"e-floating-buttons/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"e-floating-buttons/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"e-floating-buttons/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"e-floating-buttons/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"e-floating-buttons/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"e-floating-buttons/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"elementor_component/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"elementor_component/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"elementor_component/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"elementor_component/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"elementor_component/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"elementor_component/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"elementor_component/([^/]+)/embed/?$\";s:52:\"index.php?elementor_component=$matches[1]&embed=true\";s:40:\"elementor_component/([^/]+)/trackback/?$\";s:46:\"index.php?elementor_component=$matches[1]&tb=1\";s:48:\"elementor_component/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?elementor_component=$matches[1]&paged=$matches[2]\";s:55:\"elementor_component/([^/]+)/comment-page-([0-9]{1,})/?$\";s:59:\"index.php?elementor_component=$matches[1]&cpage=$matches[2]\";s:44:\"elementor_component/([^/]+)(?:/([0-9]+))?/?$\";s:58:\"index.php?elementor_component=$matches[1]&page=$matches[2]\";s:36:\"elementor_component/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"elementor_component/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"elementor_component/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"elementor_component/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"elementor_component/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"elementor_component/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"e_global_class/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"e_global_class/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"e_global_class/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"e_global_class/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"e_global_class/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"e_global_class/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"e_global_class/([^/]+)/embed/?$\";s:47:\"index.php?e_global_class=$matches[1]&embed=true\";s:35:\"e_global_class/([^/]+)/trackback/?$\";s:41:\"index.php?e_global_class=$matches[1]&tb=1\";s:43:\"e_global_class/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?e_global_class=$matches[1]&paged=$matches[2]\";s:50:\"e_global_class/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?e_global_class=$matches[1]&cpage=$matches[2]\";s:39:\"e_global_class/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?e_global_class=$matches[1]&page=$matches[2]\";s:31:\"e_global_class/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"e_global_class/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"e_global_class/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"e_global_class/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"e_global_class/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"e_global_class/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"e_default_style/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"e_default_style/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"e_default_style/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"e_default_style/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"e_default_style/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"e_default_style/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"e_default_style/([^/]+)/embed/?$\";s:48:\"index.php?e_default_style=$matches[1]&embed=true\";s:36:\"e_default_style/([^/]+)/trackback/?$\";s:42:\"index.php?e_default_style=$matches[1]&tb=1\";s:44:\"e_default_style/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?e_default_style=$matches[1]&paged=$matches[2]\";s:51:\"e_default_style/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?e_default_style=$matches[1]&cpage=$matches[2]\";s:40:\"e_default_style/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?e_default_style=$matches[1]&page=$matches[2]\";s:32:\"e_default_style/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"e_default_style/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"e_default_style/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"e_default_style/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"e_default_style/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"e_default_style/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:23:\"index.php?sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on'),(31,'hack_file','0','on'),(32,'blog_charset','UTF-8','on'),(33,'moderation_keys','','off'),(34,'active_plugins','a:3:{i:0;s:23:\"elementor/elementor.php\";i:1;s:21:\"safe-svg/safe-svg.php\";i:2;s:24:\"wpforms-lite/wpforms.php\";}','on'),(35,'category_base','','on'),(36,'ping_sites','https://rpc.pingomatic.com/','on'),(37,'comment_max_links','2','on'),(38,'gmt_offset','-5','on'),(39,'default_email_category','1','on'),(40,'recently_edited','','off'),(41,'template','hello-elementor','on'),(42,'stylesheet','hello-elementor','on'),(43,'comment_registration','0','on'),(44,'html_type','text/html','on'),(45,'use_trackback','0','on'),(46,'default_role','subscriber','on'),(47,'db_version','61833','on'),(48,'uploads_use_yearmonth_folders','1','on'),(49,'upload_path','','on'),(50,'blog_public','1','on'),(51,'default_link_category','2','on'),(52,'show_on_front','page','on'),(53,'tag_base','','on'),(54,'show_avatars','1','on'),(55,'avatar_rating','G','on'),(56,'upload_url_path','','on'),(57,'thumbnail_size_w','150','on'),(58,'thumbnail_size_h','150','on'),(59,'thumbnail_crop','1','on'),(60,'medium_size_w','300','on'),(61,'medium_size_h','300','on'),(62,'avatar_default','mystery','on'),(63,'large_size_w','1024','on'),(64,'large_size_h','1024','on'),(65,'image_default_link_type','none','on'),(66,'image_default_size','','on'),(67,'image_default_align','','on'),(68,'close_comments_for_old_posts','0','on'),(69,'close_comments_days_old','14','on'),(70,'thread_comments','1','on'),(71,'thread_comments_depth','5','on'),(72,'page_comments','0','on'),(73,'comments_per_page','50','on'),(74,'default_comments_page','newest','on'),(75,'comment_order','asc','on'),(76,'sticky_posts','a:0:{}','on'),(77,'widget_categories','a:0:{}','on'),(78,'widget_text','a:0:{}','on'),(79,'widget_rss','a:0:{}','on'),(80,'uninstall_plugins','a:1:{s:23:\"elementor/elementor.php\";a:2:{i:0;s:21:\"Elementor\\Maintenance\";i:1;s:9:\"uninstall\";}}','off'),(81,'timezone_string','America/Bogota','on'),(82,'page_for_posts','0','on'),(83,'page_on_front','11','on'),(84,'default_post_format','0','on'),(85,'link_manager_enabled','0','on'),(86,'finished_splitting_shared_terms','1','on'),(87,'site_icon','0','on'),(88,'medium_large_size_w','768','on'),(89,'medium_large_size_h','0','on'),(90,'wp_page_for_privacy_policy','3','on'),(91,'show_comments_cookies_opt_in','1','on'),(92,'admin_email_lifespan','1807501188','on'),(93,'disallowed_keys','','off'),(94,'comment_previously_approved','1','on'),(95,'auto_plugin_theme_update_emails','a:0:{}','off'),(96,'auto_update_core_dev','enabled','on'),(97,'auto_update_core_minor','enabled','on'),(98,'auto_update_core_major','enabled','on'),(99,'wp_force_deactivated_plugins','a:0:{}','on'),(100,'wp_attachment_pages_enabled','0','on'),(101,'wp_notes_notify','1','on'),(102,'initial_db_version','61833','on'),(103,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','on'),(104,'fresh_site','0','off'),(105,'user_count','1','off'),(106,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto'),(107,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto'),(108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(110,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(111,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(112,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(113,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(114,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(115,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(116,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(125,'theme_mods_twentytwentyfive','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1791949237;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off'),(128,'recovery_keys','a:0:{}','off'),(130,'_site_transient_timeout_theme_roots','1791951035','off'),(131,'_site_transient_theme_roots','a:5:{s:15:\"hello-elementor\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','off'),(132,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_CO/wordpress-7.1.3.zip\";s:6:\"locale\";s:5:\"es_CO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_CO/wordpress-7.1.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"7.1.3\";s:7:\"version\";s:5:\"7.1.3\";s:11:\"php_version\";s:3:\"7.4\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1791949236;s:15:\"version_checked\";s:5:\"7.1.3\";s:12:\"translations\";a:0:{}}','off'),(134,'current_theme','Hello Elementor','auto'),(135,'theme_switched','','auto'),(137,'_site_transient_timeout_wp_theme_files_patterns-071be293f8935fc449abb47ce3e8cd0c','1791951037','off'),(138,'_site_transient_wp_theme_files_patterns-071be293f8935fc449abb47ce3e8cd0c','a:2:{s:7:\"version\";s:5:\"3.5.1\";s:8:\"patterns\";a:0:{}}','off'),(139,'theme_mods_hello-elementor','a:1:{s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}}','auto'),(142,'elementor_active_kit','5','auto'),(143,'elementor_font_display','swap','auto'),(148,'action_scheduler_hybrid_store_demarkation','6','auto'),(149,'schema-ActionScheduler_StoreSchema','8.0.1791949252','auto'),(150,'schema-ActionScheduler_LoggerSchema','3.0.1791949252','auto'),(153,'wpforms_version','2.0.2.2','auto'),(154,'wpforms_version_lite','2.0.2.2','auto'),(155,'wpforms_activated','a:1:{s:4:\"lite\";i:1791949271;}','auto'),(163,'_wpforms_transient_timeout_existing_tables','1792554074','off'),(164,'_wpforms_transient_existing_tables','a:2:{s:30:\"wp_wpforms_analytics_snapshots\";a:1:{i:0;s:30:\"wp_wpforms_analytics_snapshots\";}s:26:\"wp_wpforms_analytics_forms\";a:1:{i:0;s:26:\"wp_wpforms_analytics_forms\";}}','off'),(166,'wpforms_versions_lite','a:19:{s:5:\"1.5.9\";i:0;s:7:\"1.6.7.2\";i:0;s:5:\"1.6.8\";i:0;s:5:\"1.7.5\";i:0;s:7:\"1.7.5.1\";i:0;s:5:\"1.7.7\";i:0;s:5:\"1.8.2\";i:0;s:5:\"1.8.3\";i:0;s:5:\"1.8.4\";i:0;s:5:\"1.8.6\";i:0;s:5:\"1.8.7\";i:0;s:5:\"1.9.1\";i:0;s:5:\"1.9.2\";i:0;s:5:\"1.9.7\";i:0;s:7:\"1.9.8.6\";i:0;s:5:\"2.0.0\";i:0;s:7:\"2.0.1.1\";i:0;s:7:\"2.0.2.1\";i:0;s:7:\"2.0.2.2\";i:1791949274;}','auto'),(167,'wpforms_templates_cache_version','2.0.2.2','auto'),(168,'wpforms_constant_contact_version','3','auto'),(169,'elementor_landing_pages_activation','0','auto'),(170,'elementor_version','4.3.5','auto'),(171,'elementor_install_history','a:1:{s:5:\"4.3.5\";i:1791949275;}','auto'),(172,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(173,'wpforms_settings','a:3:{s:13:\"modern-markup\";s:1:\"1\";s:20:\"modern-markup-is-set\";b:1;s:26:\"modern-markup-hide-setting\";b:1;}','auto'),(174,'wpforms_analytics_aggregation_interval','86400','auto'),(177,'elementor_events_db_version','1.0.0','off'),(178,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1791949298;s:7:\"checked\";a:5:{s:15:\"hello-elementor\";s:5:\"3.5.1\";s:16:\"twentytwentyfive\";s:3:\"1.5\";s:16:\"twentytwentyfour\";s:3:\"1.6\";s:17:\"twentytwentythree\";s:3:\"1.7\";s:15:\"twentytwentytwo\";s:3:\"2.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:5:{s:15:\"hello-elementor\";a:6:{s:5:\"theme\";s:15:\"hello-elementor\";s:11:\"new_version\";s:5:\"3.5.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/hello-elementor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/hello-elementor.3.5.1.zip\";s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";}s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.5.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.6.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.7.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.2.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','off'),(179,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1791949302;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.7.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:23:\"elementor/elementor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:5:\"4.3.5\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/elementor.4.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.gif?rev=3444228\";s:2:\"1x\";s:62:\"https://ps.w.org/elementor/assets/icon-128x128.gif?rev=3444228\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=3443226\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=3443226\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.2.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2779013\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2779013\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=2683939\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=2683939\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.9\";}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"2.0.2.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.2.0.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=3254748\";s:3:\"svg\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=3254748\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=3091364\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=3091364\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500-rtl.png?rev=3254748\";s:2:\"1x\";s:71:\"https://ps.w.org/wpforms-lite/assets/banner-772x250-rtl.png?rev=3254748\";}s:8:\"requires\";s:3:\"5.5\";}}s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"5.7.2\";s:23:\"elementor/elementor.php\";s:5:\"4.3.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:21:\"safe-svg/safe-svg.php\";s:5:\"2.5.1\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"2.0.2.2\";}}','off'),(183,'action_scheduler_migration_status','complete','auto'),(184,'as_has_wp_comment_logs','no','on'),(186,'wpforms_dashboard_cache_refresh_interval','1800','off'),(188,'_wpforms_transient_timeout_dashboard_cache_0_usd_lite','1791952984','off'),(189,'_wpforms_transient_dashboard_cache_0_usd_lite','a:9:{s:5:\"stats\";a:8:{s:5:\"forms\";i:0;s:13:\"total_entries\";i:0;s:12:\"spam_entries\";i:0;s:11:\"total_views\";i:0;s:14:\"total_payments\";i:0;s:11:\"total_sales\";s:1:\"0\";s:16:\"coupons_redeemed\";i:0;s:14:\"total_refunded\";s:1:\"0\";}s:7:\"entries\";a:2:{s:5:\"graph\";a:0:{}s:5:\"forms\";a:0:{}}s:8:\"payments\";a:2:{s:5:\"tiles\";a:6:{s:14:\"total_payments\";i:0;s:11:\"total_sales\";s:1:\"0\";s:14:\"total_refunded\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:17:\"new_subscriptions\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:8:\"renewals\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:7:\"coupons\";i:0;}s:5:\"graph\";a:0:{}}s:9:\"locations\";a:2:{s:9:\"countries\";a:0:{}s:11:\"donut_total\";i:0;}s:12:\"generated_at\";i:1791949384;s:5:\"range\";s:10:\"0_usd_lite\";s:10:\"generation\";i:0;s:11:\"range_start\";s:10:\"2026-10-13\";s:9:\"range_end\";s:10:\"2026-10-13\";}','off'),(190,'_wpforms_transient_timeout_dashboard_cache_1_usd_lite','1791952984','off'),(191,'_wpforms_transient_dashboard_cache_1_usd_lite','a:9:{s:5:\"stats\";a:8:{s:5:\"forms\";i:0;s:13:\"total_entries\";i:0;s:12:\"spam_entries\";i:0;s:11:\"total_views\";i:0;s:14:\"total_payments\";i:0;s:11:\"total_sales\";s:1:\"0\";s:16:\"coupons_redeemed\";i:0;s:14:\"total_refunded\";s:1:\"0\";}s:7:\"entries\";a:2:{s:5:\"graph\";a:0:{}s:5:\"forms\";a:0:{}}s:8:\"payments\";a:2:{s:5:\"tiles\";a:6:{s:14:\"total_payments\";i:0;s:11:\"total_sales\";s:1:\"0\";s:14:\"total_refunded\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:17:\"new_subscriptions\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:8:\"renewals\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:7:\"coupons\";i:0;}s:5:\"graph\";a:0:{}}s:9:\"locations\";a:2:{s:9:\"countries\";a:0:{}s:11:\"donut_total\";i:0;}s:12:\"generated_at\";i:1791949384;s:5:\"range\";s:10:\"1_usd_lite\";s:10:\"generation\";i:0;s:11:\"range_start\";s:10:\"2026-10-12\";s:9:\"range_end\";s:10:\"2026-10-13\";}','off'),(192,'_wpforms_transient_timeout_dashboard_cache_7_usd_lite','1791952984','off'),(193,'_wpforms_transient_dashboard_cache_7_usd_lite','a:9:{s:5:\"stats\";a:8:{s:5:\"forms\";i:0;s:13:\"total_entries\";i:0;s:12:\"spam_entries\";i:0;s:11:\"total_views\";i:0;s:14:\"total_payments\";i:0;s:11:\"total_sales\";s:1:\"0\";s:16:\"coupons_redeemed\";i:0;s:14:\"total_refunded\";s:1:\"0\";}s:7:\"entries\";a:2:{s:5:\"graph\";a:0:{}s:5:\"forms\";a:0:{}}s:8:\"payments\";a:2:{s:5:\"tiles\";a:6:{s:14:\"total_payments\";i:0;s:11:\"total_sales\";s:1:\"0\";s:14:\"total_refunded\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:17:\"new_subscriptions\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:8:\"renewals\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:7:\"coupons\";i:0;}s:5:\"graph\";a:0:{}}s:9:\"locations\";a:2:{s:9:\"countries\";a:0:{}s:11:\"donut_total\";i:0;}s:12:\"generated_at\";i:1791949384;s:5:\"range\";s:10:\"7_usd_lite\";s:10:\"generation\";i:0;s:11:\"range_start\";s:10:\"2026-10-06\";s:9:\"range_end\";s:10:\"2026-10-13\";}','off'),(194,'_wpforms_transient_timeout_dashboard_cache_30_usd_lite','1791952984','off'),(195,'_wpforms_transient_dashboard_cache_30_usd_lite','a:9:{s:5:\"stats\";a:8:{s:5:\"forms\";i:0;s:13:\"total_entries\";i:0;s:12:\"spam_entries\";i:0;s:11:\"total_views\";i:0;s:14:\"total_payments\";i:0;s:11:\"total_sales\";s:1:\"0\";s:16:\"coupons_redeemed\";i:0;s:14:\"total_refunded\";s:1:\"0\";}s:7:\"entries\";a:2:{s:5:\"graph\";a:0:{}s:5:\"forms\";a:0:{}}s:8:\"payments\";a:2:{s:5:\"tiles\";a:6:{s:14:\"total_payments\";i:0;s:11:\"total_sales\";s:1:\"0\";s:14:\"total_refunded\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:17:\"new_subscriptions\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:8:\"renewals\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:7:\"coupons\";i:0;}s:5:\"graph\";a:0:{}}s:9:\"locations\";a:2:{s:9:\"countries\";a:0:{}s:11:\"donut_total\";i:0;}s:12:\"generated_at\";i:1791949384;s:5:\"range\";s:11:\"30_usd_lite\";s:10:\"generation\";i:0;s:11:\"range_start\";s:10:\"2026-09-13\";s:9:\"range_end\";s:10:\"2026-10-13\";}','off'),(196,'_wpforms_transient_timeout_dashboard_cache_90_usd_lite','1791952984','off'),(197,'_wpforms_transient_dashboard_cache_90_usd_lite','a:9:{s:5:\"stats\";a:8:{s:5:\"forms\";i:0;s:13:\"total_entries\";i:0;s:12:\"spam_entries\";i:0;s:11:\"total_views\";i:0;s:14:\"total_payments\";i:0;s:11:\"total_sales\";s:1:\"0\";s:16:\"coupons_redeemed\";i:0;s:14:\"total_refunded\";s:1:\"0\";}s:7:\"entries\";a:2:{s:5:\"graph\";a:0:{}s:5:\"forms\";a:0:{}}s:8:\"payments\";a:2:{s:5:\"tiles\";a:6:{s:14:\"total_payments\";i:0;s:11:\"total_sales\";s:1:\"0\";s:14:\"total_refunded\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:17:\"new_subscriptions\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:8:\"renewals\";a:2:{s:6:\"amount\";s:1:\"0\";s:5:\"count\";i:0;}s:7:\"coupons\";i:0;}s:5:\"graph\";a:0:{}}s:9:\"locations\";a:2:{s:9:\"countries\";a:0:{}s:11:\"donut_total\";i:0;}s:12:\"generated_at\";i:1791949384;s:5:\"range\";s:11:\"90_usd_lite\";s:10:\"generation\";i:0;s:11:\"range_start\";s:10:\"2026-07-15\";s:9:\"range_end\";s:10:\"2026-10-13\";}','off'),(198,'wp_calendar_block_has_published_posts','1','auto'),(200,'wpforms_process_forms_locator_status','completed','auto');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default'),(3,5,'_elementor_edit_mode','builder'),(4,5,'_elementor_template_type','kit'),(5,6,'_wp_attached_file','2026/10/logo-dhessir.svg'),(6,6,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:451;s:6:\"height\";i:146;s:4:\"file\";s:24:\"2026/10/logo-dhessir.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:16:\"logo-dhessir.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"logo-dhessir.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"logo-dhessir.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"logo-dhessir.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:16:\"logo-dhessir.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:16:\"logo-dhessir.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),(7,6,'_wp_attachment_image_alt','Dhessir Consultant'),(8,7,'_wp_attached_file','2026/10/logo-dhessir-blanco.svg'),(9,7,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:451;s:6:\"height\";i:146;s:4:\"file\";s:31:\"2026/10/logo-dhessir-blanco.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:23:\"logo-dhessir-blanco.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:23:\"logo-dhessir-blanco.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:23:\"logo-dhessir-blanco.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:23:\"logo-dhessir-blanco.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:23:\"logo-dhessir-blanco.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:23:\"logo-dhessir-blanco.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),(10,7,'_wp_attachment_image_alt','Dhessir Consultant'),(11,8,'_wp_attached_file','2026/10/favicon-512.png'),(12,8,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:23:\"2026/10/favicon-512.png\";s:8:\"filesize\";i:11341;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"favicon-512-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8686;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"favicon-512-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4040;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),(13,8,'_wp_attachment_image_alt','Ícono de Dhessir Consultant'),(14,9,'_wp_attached_file','2026/10/hero-sesion.jpg'),(15,9,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1408;s:6:\"height\";i:768;s:4:\"file\";s:23:\"2026/10/hero-sesion.jpg\";s:8:\"filesize\";i:145975;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"hero-sesion-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13472;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"hero-sesion-1024x559.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:559;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:88452;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"hero-sesion-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6365;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"hero-sesion-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56694;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),(16,9,'_wp_attachment_image_alt','Candidata sonriendo durante una sesión diagnóstica por videollamada con un consultor'),(17,10,'_wp_attached_file','2026/10/jeronimo.jpg'),(18,10,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1086;s:6:\"height\";i:1448;s:4:\"file\";s:20:\"2026/10/jeronimo.jpg\";s:8:\"filesize\";i:148874;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"jeronimo-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9320;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"jeronimo-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61540;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"jeronimo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4455;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"jeronimo-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61540;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),(19,10,'_wp_attachment_image_alt','Retrato de Jerónimo Rocha, consultor principal de Dhessir Consultant'),(20,15,'_menu_item_type','post_type'),(21,15,'_menu_item_menu_item_parent','0'),(22,15,'_menu_item_object_id','11'),(23,15,'_menu_item_object','page'),(24,15,'_menu_item_target',''),(25,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(26,15,'_menu_item_xfn',''),(27,15,'_menu_item_url',''),(28,16,'_menu_item_type','post_type'),(29,16,'_menu_item_menu_item_parent','0'),(30,16,'_menu_item_object_id','12'),(31,16,'_menu_item_object','page'),(32,16,'_menu_item_target',''),(33,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(34,16,'_menu_item_xfn',''),(35,16,'_menu_item_url',''),(36,17,'_menu_item_type','post_type'),(37,17,'_menu_item_menu_item_parent','0'),(38,17,'_menu_item_object_id','13'),(39,17,'_menu_item_object','page'),(40,17,'_menu_item_target',''),(41,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(42,17,'_menu_item_xfn',''),(43,17,'_menu_item_url',''),(44,18,'_menu_item_type','post_type'),(45,18,'_menu_item_menu_item_parent','0'),(46,18,'_menu_item_object_id','14'),(47,18,'_menu_item_object','page'),(48,18,'_menu_item_target',''),(49,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(50,18,'_menu_item_xfn',''),(51,18,'_menu_item_url','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `type_status_author` (`post_type`,`post_status`,`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (3,1,'2026-10-13 22:39:48','2026-10-14 03:39:48','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quiénes somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Nuestra dirección de sitio web es: https://dhessir-cms.lndo.site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentarios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en el sitio recopilamos los datos mostrados en el formulario de comentarios, y también la dirección IP del visitante y la cadena del agente de usuario del navegador para ayudar a la detección de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se puede proporcionar una cadena anónima creada a partir de su dirección de correo electrónico (también denominada hash) al servicio gravatar para ver si la está utilizando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, su imagen de perfil será visible para el público en el contexto de tu comentario.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Medios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes al sitio web, debes evitar cargar imágenes con datos de ubicación incrustados (EXIF GPS). Los visitantes del sitio web pueden descargar y extraer los datos de la ubicación de las imágenes en el sitio Web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si deja un comentario en nuestro sitio, puedes optar por guardar tu nombre, dirección de correo electrónico y sitio web en cookies. Estos es para tu comodidad y no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán un año de duración.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si visitas nuestra página de Acceso, se instalará una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Cuando inicies sesión, se instalarán varias cookies para guardar tu información de acceso y opciones de visualización de pantalla. Las cookies de acceso permanecerán por dos días y las cookies de opciones de pantalla se guardarán por un año. Si seleccionas «Recuérdarme» en tu inicio de sesión, estas se guardarán por dos semanas. Si cierra la sesión de tu cuenta, las cookies de acceso se eliminarán.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenido incrustado de otros sitios web</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Con quién compartimos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cuánto tiempo conservamos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar automáticamente cualquier comentario de seguimiento en lugar de mantenerlos en una cola de moderación.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Para los usuarios que se registren en nuestro sitio web (si los hay), se almacenarán todos sus datos de información personal que proporcionen. Cualquier usuario puede ver, editar o eliminar su información personal cuando lo desee (a excepción del nombre de usuario que no se puede editar). Los administradores de sitios web, también pueden ver y editar dicha información. </p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qué derechos tienes sobre tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta en este sitio, o ha dejado comentarios, puedes solicitar la exportación de un archivo con tus datos personales recopilados, incluyendo cualquier otro dato que nos haya proporcionado. También puede solicitar la eliminación de cualquier dato personal que guardemos sobre ti. Esto no incluye los datos que estamos obligados a consevar para fines administrativos, legales o de seguridad.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dónde se envían tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Puede que los comentarios de los visitantes sean validados por un servicio automatico de detección de spam.</p>\n<!-- /wp:paragraph -->\n','Política de privacidad','','draft','closed','open','','política-privacidad','','','2026-10-13 22:39:48','2026-10-14 03:39:48','',0,'https://dhessir-cms.lndo.site/?page_id=3',0,'page','',0),(4,0,'2026-10-13 22:39:49','2026-10-14 03:39:49','<!-- wp:page-list /-->','Navegación','','publish','closed','closed','','navigation','','','2026-10-13 22:39:49','2026-10-14 03:39:49','',0,'https://dhessir-cms.lndo.site/index.php/2026/10/13/navigation/',0,'wp_navigation','',0),(5,0,'2026-10-13 22:40:45','2026-10-14 03:40:45','','Default Kit','','publish','closed','closed','','default-kit','','','2026-10-13 22:40:45','2026-10-14 03:40:45','',0,'https://dhessir-cms.lndo.site/?p=5',0,'elementor_library','',0),(6,1,'2026-10-13 22:42:20','2026-10-14 03:42:20','','Logo Dhessir Consultant','','inherit','open','closed','','logo-dhessir-consultant','','','2026-10-13 22:42:20','2026-10-14 03:42:20','',0,'https://dhessir-cms.lndo.site/wp-content/uploads/2026/10/logo-dhessir.svg',0,'attachment','image/svg+xml',0),(7,1,'2026-10-13 22:42:22','2026-10-14 03:42:22','','Logo Dhessir Consultant (blanco)','','inherit','open','closed','','logo-dhessir-consultant-blanco','','','2026-10-13 22:42:22','2026-10-14 03:42:22','',0,'https://dhessir-cms.lndo.site/wp-content/uploads/2026/10/logo-dhessir-blanco.svg',0,'attachment','image/svg+xml',0),(8,1,'2026-10-13 22:42:24','2026-10-14 03:42:24','','Ícono Dhessir','','inherit','open','closed','','icono-dhessir','','','2026-10-13 22:42:24','2026-10-14 03:42:24','',0,'https://dhessir-cms.lndo.site/wp-content/uploads/2026/10/favicon-512.png',0,'attachment','image/png',0),(9,1,'2026-10-13 22:42:26','2026-10-14 03:42:26','','Sesión diagnóstica por videollamada','','inherit','open','closed','','sesion-diagnostica-por-videollamada','','','2026-10-13 22:42:26','2026-10-14 03:42:26','',0,'https://dhessir-cms.lndo.site/wp-content/uploads/2026/10/hero-sesion.jpg',0,'attachment','image/jpeg',0),(10,1,'2026-10-13 22:42:28','2026-10-14 03:42:28','','Jerónimo Rocha','','inherit','open','closed','','jeronimo-rocha','','','2026-10-13 22:42:28','2026-10-14 03:42:28','',0,'https://dhessir-cms.lndo.site/wp-content/uploads/2026/10/jeronimo.jpg',0,'attachment','image/jpeg',0),(11,0,'2026-10-13 22:43:07','2026-10-14 03:43:07','','Inicio','','publish','closed','closed','','inicio','','','2026-10-13 22:43:07','2026-10-14 03:43:07','',0,'https://dhessir-cms.lndo.site/index.php/inicio/',1,'page','',0),(12,0,'2026-10-13 22:43:09','2026-10-14 03:43:09','','Método','','publish','closed','closed','','metodo','','','2026-10-13 22:43:09','2026-10-14 03:43:09','',0,'https://dhessir-cms.lndo.site/index.php/metodo/',2,'page','',0),(13,0,'2026-10-13 22:43:10','2026-10-14 03:43:10','','Planes','','publish','closed','closed','','planes','','','2026-10-13 22:43:10','2026-10-14 03:43:10','',0,'https://dhessir-cms.lndo.site/index.php/planes/',3,'page','',0),(14,0,'2026-10-13 22:43:13','2026-10-14 03:43:13','','Contacto','','publish','closed','closed','','contacto','','','2026-10-13 22:43:13','2026-10-14 03:43:13','',0,'https://dhessir-cms.lndo.site/index.php/contacto/',4,'page','',0),(15,0,'2026-10-13 22:43:19','2026-10-14 03:43:19',' ','','','publish','closed','closed','','15','','','2026-10-13 22:43:19','2026-10-14 03:43:19','',0,'https://dhessir-cms.lndo.site/index.php/2026/10/13/15/',0,'nav_menu_item','',0),(16,0,'2026-10-13 22:43:21','2026-10-14 03:43:21',' ','','','publish','closed','closed','','16','','','2026-10-13 22:43:21','2026-10-14 03:43:21','',0,'https://dhessir-cms.lndo.site/index.php/2026/10/13/16/',2,'nav_menu_item','',0),(17,0,'2026-10-13 22:43:23','2026-10-14 03:43:23',' ','','','publish','closed','closed','','17','','','2026-10-13 22:43:23','2026-10-14 03:43:23','',0,'https://dhessir-cms.lndo.site/index.php/2026/10/13/17/',3,'nav_menu_item','',0),(18,0,'2026-10-13 22:43:25','2026-10-14 03:43:25',' ','','','publish','closed','closed','','18','','','2026-10-13 22:43:25','2026-10-14 03:43:25','',0,'https://dhessir-cms.lndo.site/index.php/2026/10/13/18/',4,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (15,2,0),(16,2,0),(17,2,0),(18,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0),(2,2,'nav_menu','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Sin categoría','sin-categoria',0),(2,'Principal','principal',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','dhessir'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'infinite_scrolling','true'),(8,1,'comment_shortcuts','false'),(9,1,'admin_color','modern'),(10,1,'use_ssl','0'),(11,1,'show_admin_bar_front','true'),(12,1,'locale',''),(13,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(14,1,'wp_user_level','10'),(15,1,'dismissed_wp_pointers',''),(16,1,'show_welcome_panel','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'dhessir','$wp$2y$10$Q8Bavn/u.YMYjMfPvqq4fedyr8ScALljPA68gBbRjv7YsCj5/.fLa','dhessir','contacto@dhessir.co','https://dhessir-cms.lndo.site','2026-10-14 03:39:48','',0,'dhessir');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_analytics_forms`
--

DROP TABLE IF EXISTS `wp_wpforms_analytics_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpforms_analytics_forms` (
  `form_id` bigint(20) unsigned NOT NULL,
  `period_date` date NOT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT 0,
  `unique_sessions` int(10) unsigned NOT NULL DEFAULT 0,
  `submissions` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`form_id`,`period_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_analytics_forms`
--

LOCK TABLES `wp_wpforms_analytics_forms` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_analytics_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_analytics_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_analytics_snapshots`
--

DROP TABLE IF EXISTS `wp_wpforms_analytics_snapshots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpforms_analytics_snapshots` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) unsigned NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `trigger_type` tinyint(3) unsigned NOT NULL,
  `page_number` tinyint(3) unsigned DEFAULT NULL,
  `form_visible` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `payload` longtext NOT NULL,
  `occurred_at` datetime NOT NULL,
  `processed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_unprocessed` (`processed`,`occurred_at`),
  KEY `idx_session` (`session_id`,`form_id`,`trigger_type`),
  KEY `idx_form_date` (`form_id`,`processed`,`form_visible`,`occurred_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_analytics_snapshots`
--

LOCK TABLES `wp_wpforms_analytics_snapshots` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_analytics_snapshots` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_analytics_snapshots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_logs`
--

DROP TABLE IF EXISTS `wp_wpforms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpforms_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `types` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  `entry_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_logs`
--

LOCK TABLES `wp_wpforms_logs` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_payment_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_payment_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpforms_payment_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `meta_value` (`meta_value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_payment_meta`
--

LOCK TABLES `wp_wpforms_payment_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_payment_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_payment_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_payments`
--

DROP TABLE IF EXISTS `wp_wpforms_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpforms_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '',
  `subtotal_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `discount_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `total_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `currency` varchar(3) NOT NULL DEFAULT '',
  `entry_id` bigint(20) NOT NULL DEFAULT 0,
  `gateway` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `mode` varchar(4) NOT NULL DEFAULT '',
  `transaction_id` varchar(40) NOT NULL DEFAULT '',
  `customer_id` varchar(40) NOT NULL DEFAULT '',
  `subscription_id` varchar(40) NOT NULL DEFAULT '',
  `subscription_status` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `date_created_gmt` datetime NOT NULL,
  `date_updated_gmt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`(8)),
  KEY `total_amount` (`total_amount`),
  KEY `type` (`type`(8)),
  KEY `transaction_id` (`transaction_id`(32)),
  KEY `customer_id` (`customer_id`(32)),
  KEY `subscription_id` (`subscription_id`(32)),
  KEY `subscription_status` (`subscription_status`(8)),
  KEY `title` (`title`(64)),
  KEY `created_form` (`date_created_gmt`,`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_payments`
--

LOCK TABLES `wp_wpforms_payments` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_product_events_queue`
--

DROP TABLE IF EXISTS `wp_wpforms_product_events_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpforms_product_events_queue` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_name` varchar(64) NOT NULL,
  `event_context` varchar(20) NOT NULL DEFAULT 'user',
  `properties` longtext DEFAULT NULL,
  `occurred_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `occurred_at` (`occurred_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_product_events_queue`
--

LOCK TABLES `wp_wpforms_product_events_queue` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_product_events_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_product_events_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

LOCK TABLES `wp_wpforms_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` DISABLE KEYS */;
INSERT INTO `wp_wpforms_tasks_meta` VALUES (1,'wpforms_process_forms_locator_scan','W10=','2026-10-14 03:42:22'),(2,'wpforms_process_purge_spam','W10=','2026-10-14 03:42:22'),(3,'wpforms_dashboard_refresh_cache','W10=','2026-10-14 03:43:04'),(4,'wpforms_analytics_aggregate','W10=','2026-10-14 03:43:04'),(5,'wpforms_process_forms_locator_scan','W10=','2026-10-14 03:43:30');
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-14  3:44:24
