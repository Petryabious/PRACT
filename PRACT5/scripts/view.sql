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
USE `bdphotos` ;

-- -----------------------------------------------------
-- Placeholder table for view `bdphotos`.`information_about_photo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdphotos`.`information_about_photo` (`name_photo` INT, `content` INT, `size` INT, `color` INT, `name_format` INT, `name_type` INT, `name_genre` INT, `last_name` INT);

-- -----------------------------------------------------
-- Placeholder table for view `bdphotos`.`information_about_ptgrapher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdphotos`.`information_about_ptgrapher` (`last_name` INT, `first_name` INT, `middle_name` INT, `work_exp` INT, `maker` INT, `model` INT);

-- -----------------------------------------------------
-- View `bdphotos`.`information_about_photo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bdphotos`.`information_about_photo`;
USE `bdphotos`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bdphotos`.`information_about_photo` AS select `p`.`name_photo` AS `name_photo`,`p`.`content` AS `content`,`p`.`size` AS `size`,`p`.`color` AS `color`,`f`.`name_format` AS `name_format`,`t`.`name_type` AS `name_type`,`g`.`name_genre` AS `name_genre`,`ptg`.`last_name` AS `last_name` from ((((`bdphotos`.`photos` `p` join `bdphotos`.`formats` `f` on((`p`.`id_format` = `f`.`id_format`))) join `bdphotos`.`types` `t` on((`t`.`id_type` = `p`.`id_type`))) join `bdphotos`.`genres` `g` on((`g`.`id_genre` = `p`.`id_genre`))) join `bdphotos`.`ptgrapher` `ptg` on((`ptg`.`id_ptgrapher` = `p`.`id_ptgrapher`)));

-- -----------------------------------------------------
-- View `bdphotos`.`information_about_ptgrapher`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bdphotos`.`information_about_ptgrapher`;
USE `bdphotos`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bdphotos`.`information_about_ptgrapher` AS select `ptg`.`last_name` AS `last_name`,`ptg`.`first_name` AS `first_name`,`ptg`.`middle_name` AS `middle_name`,`ptg`.`work_exp` AS `work_exp`,`c`.`maker` AS `maker`,`c`.`model` AS `model` from (`bdphotos`.`ptgrapher` `ptg` join `bdphotos`.`camera` `c` on((`ptg`.`id_camera` = `c`.`id_camera`)));

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
