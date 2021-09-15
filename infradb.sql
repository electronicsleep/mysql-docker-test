USE infradb;

CREATE TABLE `events` (
    `event_id` INT(11) NOT NULL AUTO_INCREMENT,
    `service` VARCHAR(255) NULL DEFAULT NULL,
    `event` VARCHAR(255) NULL DEFAULT NULL,
    `event_type` VARCHAR(255) NULL DEFAULT NULL,
    `datetime` DATETIME NULL DEFAULT NULL,
    PRIMARY KEY (`event_id`)
    );

INSERT INTO `events` (`service`, `event`, `event_type`, `datetime`) values ('infrasvc', 'deploy-tag-infrasvc-v0.0.1', 'deploy-prod', '2020-04-13 00:00:00')
