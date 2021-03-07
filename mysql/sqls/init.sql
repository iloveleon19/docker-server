CREATE DATABASE `homestead` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER 'homestead'@'localhost' IDENTIFIED BY 'secret';
CREATE USER 'homestead'@'%' IDENTIFIED BY 'secret';

GRANT ALL PRIVILEGES ON  `homestead\_%`.* TO  'homestead'@'localhost' IDENTIFIED BY 'secret';
GRANT ALL PRIVILEGES ON  `homestead\_%`.* TO  'homestead'@'%' IDENTIFIED BY 'secret';

GRANT ALL PRIVILEGES ON  `homestead`.* TO  'homestead'@'localhost' IDENTIFIED BY 'secret';
GRANT ALL PRIVILEGES ON  `homestead`.* TO  'homestead'@'%' IDENTIFIED BY 'secret';

FLUSH PRIVILEGES;
