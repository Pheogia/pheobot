-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

USE `pheobot`;

DROP PROCEDURE IF EXISTS `get_all_commands`;
CREATE DEFINER=`blenau`@`localhost` PROCEDURE `get_all_commands`(
IN this_channel VARCHAR(50)
)
BEGIN
	SELECT name FROM commands
	WHERE channel = this_channel;
END 