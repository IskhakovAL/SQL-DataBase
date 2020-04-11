/* Удаление таблицы Roles */
DROP TABLE Roles;

/* Создание таблицы Roles */
CREATE TABLE Roles (
	id SERIAL,
	name VARCHAR(15) UNIQUE NOT NULL,
	description VARCHAR(150) NOT NULL,
	date_of_creation TIMESTAMP NOT NULL DEFAULT NOW(),
	deleted boolean DEFAULT FALSE,
	PRIMARY KEY (id)
);

/* Заполнение таблицы Roles */
INSERT INTO Roles
	(name, description)
VALUES
	('Admin', 'Application admin.'),
	('User', 'Application user.');

/* Вывод таблицы Roles */
SELECT * FROM Roles;
