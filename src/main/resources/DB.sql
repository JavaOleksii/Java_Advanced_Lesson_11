DROP DATABASE IF EXISTS magazine_store;

CREATE DATABASE magazine_store CHAR SET UTF8;

SHOW DATABASES;

USE magazine_store;

CREATE TABLE user
(
    id         INT          NOT NULL AUTO_INCREMENT,
    email      VARCHAR(50)  NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name  VARCHAR(255) NOT NULL,
    role       VARCHAR(255) NOT NULL,
    password   VARCHAR(18)  NOT NULL,
    PRIMARY KEY (id)
) ENGINE = INNODB;

CREATE TABLE product
(
    id          INT NOT NULL AUTO_INCREMENT,
    name        VARCHAR(60)  DEFAULT NULL,
    description VARCHAR(255) DEFAULT NULL,
    price       INT          DEFAULT NULL,
    PRIMARY KEY (id)
) ENGINE = INNODB;

CREATE TABLE bucket
(
    id            INT NOT NULL AUTO_INCREMENT,
    user_id       INT       DEFAULT NULL,
    product_id    INT       DEFAULT NULL,
    purchase_date TIMESTAMP DEFAULT NULL,
    price         INT       DEFAULT NULL,
    PRIMARY KEY (id),
    CONSTRAINT product_id_FK FOREIGN KEY (product_id)
        REFERENCES product (id) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT user_id_FK FOREIGN KEY (user_id)
        REFERENCES user (id) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = INNODB;

DESCRIBE user;

SELECT *
FROM user;

DESCRIBE product;

SELECT *
FROM product;

DESCRIBE bucket;

SELECT *
FROM bucket;