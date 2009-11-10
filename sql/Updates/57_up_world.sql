DELETE FROM `command` WHERE `name` = 'save';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('save', 1, 'Syntax: .save Saves your character.');
