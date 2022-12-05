USE infradb;

CREATE TABLE `topscore` (
    `topscore_id` VARCHAR(36),
    `name` VARCHAR(255),
    `score` INT,
    `datetime` DATETIME,
    PRIMARY KEY (`topscore_id`)
    );

INSERT INTO `topscore` (`topscore_id`, `name`, `score`, `datetime`) values (UUID(), 'chris', '100', '2022-11-30 00:00:00')
