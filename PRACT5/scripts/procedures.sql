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
-- procedure add_camera
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_camera`(maker varchar(50), model varchar(50), matrix varchar(50),lens varchar(50))
BEGIN
INSERT INTO camera(maker,model,matrix,lens)
VALUES (maker, model, matrix, lens);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure add_photo
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_photo`(name_photo varchar(50), content blob, size varchar(25), color varchar(10),id_format int,id_type int, id_genre int)
BEGIN
INSERT INTO photo VALUES(name_photo, content, size, color,id_format,id_type, id_genre);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure add_ptgrapher
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_ptgrapher`(first_name varchar(50), last_name varchar(50), middle_name varchar(50), work_exp float)
BEGIN
iNSERT INTO ptgrapher(first_name, last_name, middle_name, work_exp)
VALUES (first_name, last_name, middle_name, work_exp);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_attOfptgrapher
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_attOfptgrapher`(id int,first_name varchar(50), last_name varchar(50), middle_name varchar(50), work_exp float)
BEGIN
UPDATE ptgrapher 
set first_name=first_name,
last_name=last_name,
middle_name=middle_name,
work_exp=worrk_exp
WHERE id_ptgrapher=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_attOfptgrapherfirst_name
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_attOfptgrapherfirst_name`(id int,first_name varchar(50))
BEGIN
UPDATE ptgrapher 
set first_name=first_name
WHERE id_ptgrapher=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_attOfptgrapherlast_name
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_attOfptgrapherlast_name`(id int,last_name varchar(50))
BEGIN
UPDATE ptgrapher 
set last_name=last_name
WHERE id_ptgrapher=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_attOfptgraphermiddle_name
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_attOfptgraphermiddle_name`(id int,last_name varchar(50))
BEGIN
UPDATE ptgrapher 
set middle_name=middle_name
WHERE id_ptgrapher=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_attOfptgrapherwork_exp
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_attOfptgrapherwork_exp`(id int,work_exp float)
BEGIN
UPDATE ptgrapher 
set work_exp=work_exp
WHERE id_ptgrapher=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_att_camera_lens
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_att_camera_lens`(id int, lens varchar(50))
BEGIN
UPDATE camera set lens=lens WHERE id_camera=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_att_camera_maker
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_att_camera_maker`(id int, maker varchar(50))
BEGIN
UPDATE camera set maker=maker WHERE id_camera=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_att_camera_matrix
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_att_camera_matrix`(id int, matrix varchar(50))
BEGIN
UPDATE camera set matrix=matrix WHERE id_camera=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_att_camera_model
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_att_camera_model`(id int, model varchar(50))
BEGIN
UPDATE camera set model=model WHERE id_camera=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_att_photo_color
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_att_photo_color`(id int, color varchar(30))
BEGIN
UPDATE photos set color=color WHERE id_photo=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_att_photo_content
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_att_photo_content`(id int, content blob)
BEGIN
UPDATE photos set content=content WHERE id_photo=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_att_photo_format
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_att_photo_format`(id int, id_format int)
BEGIN
UPDATE photos set id_format=id_format WHERE id_photo=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_att_photo_genre
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_att_photo_genre`(id int, id_genre int)
BEGIN
UPDATE photos set id_genre=id_genre WHERE id_photo=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_att_photo_name
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_att_photo_name`(id int, name_photo varchar(50))
BEGIN
UPDATE photos set name_photo=name_photo WHERE id_photo=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_att_photo_size
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_att_photo_size`(id int, size varchar(25))
BEGIN
UPDATE photos set size=size WHERE id_photo=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure change_att_photo_type
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_att_photo_type`(id int, id_type int)
BEGIN
UPDATE photos set id_type=id_type WHERE id_photo=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure del_camera
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `del_camera`(id int)
BEGIN
DELETE FROM camera  WHERE id_camera=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure del_photo
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `del_photo`(id int)
BEGIN
DELETE FROM photo WHERE id_photo=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure del_ptgrapher
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `del_ptgrapher`(id int)
BEGIN
DELETE FROM ptgrapher WHERE id_ptgrapher=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure get_information_camera
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_information_camera`(id int)
BEGIN
SELECT maker, model, matrix, lens FROM camera WHERE id_camera=id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure get_information_photo
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_information_photo`(id int)
BEGIN
SELECT p.name_photo, p.content, p.size, p.color, f.id_format,t.id_type, g.id_genre
FROM photos AS p INNER JOIN formats AS f on f.id_format=p.id_format
INNER JOIN types AS t on t.id_type=p.id_type
INNER JOIN genres AS g on g.id_genre=p.id_genre;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure get_information_ptgrapher
-- -----------------------------------------------------

DELIMITER $$
USE `bdphotos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_information_ptgrapher`(id int)
BEGIN
SELECT first_name, last_name, middle_name, work_exp WHERE id_ptgrapher=id;
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
