-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_crud_mvc_natif
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_crud_mvc_natif
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_crud_mvc_natif` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `db_crud_mvc_natif` ;

-- -----------------------------------------------------
-- Table `db_crud_mvc_natif`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_crud_mvc_natif`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_crud_mvc_natif`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_crud_mvc_natif`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `description` BLOB NULL,
  `categories_id` INT NOT NULL,
  PRIMARY KEY (`id`, `categories_id`),
  INDEX `fk_products_categories_idx` (`categories_id` ASC),
  CONSTRAINT `fk_products_categories`
    FOREIGN KEY (`categories_id`)
    REFERENCES `db_crud_mvc_natif`.`categories` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
