-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema BD_triggers
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BD_triggers
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BD_triggers` DEFAULT CHARACTER SET utf8 ;
USE `BD_triggers` ;

-- -----------------------------------------------------
-- Table `BD_triggers`.`louca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_triggers`.`louca` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `qntd_na_pia` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_triggers`.`lavar_louca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_triggers`.`lavar_louca` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `bem_feitor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_triggers`.`lavado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_triggers`.`lavado` (
  `id_lavar` INT NOT NULL,
  `id_louca` INT NOT NULL,
  `qntd` INT NOT NULL,
  INDEX `fk_louca_Lsuja_idx` (`id_louca` ASC) VISIBLE,
  INDEX `fk_lavar_lavado_idx` (`id_lavar` ASC) VISIBLE,
  CONSTRAINT `fk_louca_lavado`
    FOREIGN KEY (`id_louca`)
    REFERENCES `BD_triggers`.`louca` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lavar_lavado`
    FOREIGN KEY (`id_lavar`)
    REFERENCES `BD_triggers`.`lavar_louca` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
