-- Создание базы данных в MySQL
CREATE DATABASE TASK1 

-- Создание таблицы сотрудников
CREATE TABLE `employees` (
	`id` INT(11) NOT NULL,
	`surname` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb3_general_ci',
	`experience` INT(11) NOT NULL,
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;

-- SQL-запрос, который вернет фамилию сотрудника со вторым максимальным опытом работы.
SELECT employees.surname
FROM employees
WHERE employees.experience < (
SELECT MAX(employees.experience) 
FROM employees)
ORDER BY experience DESC
LIMIT 1 