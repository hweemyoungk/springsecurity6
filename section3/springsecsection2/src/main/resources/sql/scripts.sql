create
database eazybank;

use
eazybank;

CREATE TABLE `users`
(
    `id`       INT         NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(45) NOT NULL,
    `password` VARCHAR(45) NOT NULL,
    `enabled`  INT         NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `authorities`
(
    `id`        int         NOT NULL AUTO_INCREMENT,
    `username`  varchar(45) NOT NULL,
    `authority` varchar(45) NOT NULL,
    PRIMARY KEY (`id`)
);

INSERT
IGNORE INTO `users` VALUES (NULL, 'happy', '12345', '1');
INSERT
IGNORE INTO `authorities` VALUES (NULL, 'happy', 'write');

CREATE TABLE `customer`
(
    `id`    int          NOT NULL AUTO_INCREMENT,
    `email` varchar(45)  NOT NULL,
    `pwd`   varchar(200) NOT NULL,
    `role`  varchar(45)  NOT NULL,
    PRIMARY KEY (`id`)
);

INSERT INTO `customer` (`email`, `pwd`, `role`)
VALUES ('johndoe@example.com', '54321', 'admin');

create table `eazybank`.`customer`
(
    `id`    int          not null auto_increment,
    `email` varchar(45)  not null,
    `pwd`   varchar(200) not null,
    `role`  varchar(45)  not null,
    primary key (`id`)
);

insert into `eazybank`.`customer` (`email`, `pwd`, `role`)
values ('johndoe@example.com', '12345', 'admin');