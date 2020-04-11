/* Удаление таблицы Privileges */
DROP TABLE Privileges;

/* Создание таблицы Privileges */
CREATE TABLE Privileges (
	id SERIAL,
	name VARCHAR(15) UNIQUE NOT NULL,
	description VARCHAR(150) NOT NULL,
	date_of_creation TIMESTAMP NOT NULL DEFAULT NOW(),
	deleted boolean DEFAULT FALSE,
	PRIMARY KEY (id)
);

/* Заполнение таблицы Privileges */
INSERT INTO Privileges
	(name, description)
VALUES
	('New User', 'Add new users.'),
	('Delete User', 'Delete Users.');

/* Вывод таблицы Privileges */
SELECT * FROM Privileges;
