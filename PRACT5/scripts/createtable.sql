-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bdphotos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bdphotos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bdphotos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `bdphotos` ;

-- -----------------------------------------------------
-- Table `bdphotos`.`camera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdphotos`.`camera` (
  `id_camera` INT NOT NULL AUTO_INCREMENT,
  `maker` VARCHAR(50) NOT NULL,
  `model` VARCHAR(50) NOT NULL,
  `matrix` VARCHAR(50) NOT NULL,
  `lens` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_camera`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bdphotos`.`formats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdphotos`.`formats` (
  `id_format` INT NOT NULL AUTO_INCREMENT,
  `name_format` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id_format`),
  UNIQUE INDEX `name_format` (`name_format` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bdphotos`.`genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdphotos`.`genres` (
  `id_genre` INT NOT NULL AUTO_INCREMENT,
  `name_genre` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_genre`),
  UNIQUE INDEX `name_genre` (`name_genre` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bdphotos`.`types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdphotos`.`types` (
  `id_type` INT NOT NULL AUTO_INCREMENT,
  `name_type` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id_type`),
  UNIQUE INDEX `name_type` (`name_type` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bdphotos`.`ptgrapher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdphotos`.`ptgrapher` (
  `id_ptgrapher` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(30) NOT NULL,
  `last_name` VARCHAR(30) NOT NULL,
  `middle_name` VARCHAR(30) NOT NULL,
  `work_exp` FLOAT NOT NULL,
  `id_camera` INT NOT NULL,
  PRIMARY KEY (`id_ptgrapher`),
  INDEX `id_camera` (`id_camera` ASC),
  CONSTRAINT `ptgrapher_ibfk_1`
    FOREIGN KEY (`id_camera`)
    REFERENCES `bdphotos`.`camera` (`id_camera`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bdphotos`.`photos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdphotos`.`photos` (
  `id_photo` INT NOT NULL AUTO_INCREMENT,
  `name_photo` VARCHAR(50) NOT NULL,
  `content` BLOB NOT NULL,
  `size` VARCHAR(25) NOT NULL,
  `color` VARCHAR(10) NOT NULL,
  `id_format` INT NOT NULL,
  `id_type` INT NOT NULL,
  `id_genre` INT NOT NULL,
  `id_ptgrapher` INT NOT NULL,
  PRIMARY KEY (`id_photo`),
  INDEX `id_format` (`id_format` ASC),
  INDEX `id_type` (`id_type` ASC),
  INDEX `id_genre` (`id_genre` ASC),
  INDEX `id_ptgrapher` (`id_ptgrapher` ASC),
  CONSTRAINT `photos_ibfk_1`
    FOREIGN KEY (`id_format`)
    REFERENCES `bdphotos`.`formats` (`id_format`),
  CONSTRAINT `photos_ibfk_2`
    FOREIGN KEY (`id_type`)
    REFERENCES `bdphotos`.`types` (`id_type`),
  CONSTRAINT `photos_ibfk_3`
    FOREIGN KEY (`id_genre`)
    REFERENCES `bdphotos`.`genres` (`id_genre`),
  CONSTRAINT `photos_ibfk_4`
    FOREIGN KEY (`id_ptgrapher`)
    REFERENCES `bdphotos`.`ptgrapher` (`id_ptgrapher`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
