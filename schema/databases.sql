SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `phalcon-db-test` ;
CREATE SCHEMA IF NOT EXISTS `phalcon-db-test` DEFAULT CHARACTER SET utf8 ;
DROP SCHEMA IF EXISTS `phalcon-db2-test` ;
CREATE SCHEMA IF NOT EXISTS `phalcon-db2-test` DEFAULT CHARACTER SET utf8 ;
USE `phalcon-db-test` ;
USE `phalcon-db2-test` ;

-- -----------------------------------------------------
-- Table `phalcon-db-test`.`join_table1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phalcon-db-test`.`join_table1` ;

CREATE  TABLE IF NOT EXISTS `phalcon-db-test`.`join_table1` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `data` TEXT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `phalcon-db-test`.`table1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phalcon-db-test`.`table1` ;

CREATE  TABLE IF NOT EXISTS `phalcon-db-test`.`table1` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(255) NOT NULL ,
  `content` TEXT NOT NULL ,
  `date` DATETIME NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;

USE `phalcon-db2-test` ;

-- -----------------------------------------------------
-- Table `phalcon-db2-test`.`join_table2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phalcon-db2-test`.`join_table2` ;

CREATE  TABLE IF NOT EXISTS `phalcon-db2-test`.`join_table2` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `data` TEXT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `phalcon-db2-test`.`table2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phalcon-db2-test`.`table2` ;

CREATE  TABLE IF NOT EXISTS `phalcon-db2-test`.`table2` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `headline` VARCHAR(255) NOT NULL ,
  `content` TEXT NOT NULL ,
  `date` DATETIME NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
