-- MySQL Script generated by MySQL Workbench
-- Tue Feb 21 09:14:13 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`book` (
  `idbook` INT(11) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idbook`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `idcustomer` INT(11) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idcustomer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`transaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`transaction` (
  `idtransaction` INT(11) NOT NULL,
  `price` DOUBLE NULL DEFAULT NULL,
  `book_idbook` INT(11) NOT NULL,
  `customer_idcustomer` INT(11) NOT NULL,
  PRIMARY KEY (`idtransaction`),
  INDEX `fk_transaction_book_idx` (`book_idbook` ASC) VISIBLE,
  INDEX `fk_transaction_customer1_idx` (`customer_idcustomer` ASC) VISIBLE,
  CONSTRAINT `fk_transaction_book`
    FOREIGN KEY (`book_idbook`)
    REFERENCES `mydb`.`book` (`idbook`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_transaction_customer1`
    FOREIGN KEY (`customer_idcustomer`)
    REFERENCES `mydb`.`customer` (`idcustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
