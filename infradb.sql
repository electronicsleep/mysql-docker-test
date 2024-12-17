USE infradb;

CREATE TABLE `events` (
    `event_id` VARCHAR(36),
    `service` VARCHAR(255) NOT NULL,
    `event` VARCHAR(255) NOT NULL,
    `event_type` VARCHAR(255) NOT NULL,
    `datetime` DATETIME NOT NULL,
    PRIMARY KEY (`event_id`)
    );

INSERT INTO `events` (`event_id`, `service`, `event`, `event_type`, `datetime`) values (UUID(), 'infrasvc', 'deploy-tag-infrasvc-v0.0.1', 'deploy-prod', '2020-04-13 00:00:00')
