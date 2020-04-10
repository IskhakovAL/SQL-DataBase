/* Удаление таблицы Users */
DROP TABLE Users;

/* Создание таблицы Users */
CREATE TABLE Users (
	id SERIAL,
	name VARCHAR(15) NOT NULL,
	surname VARCHAR(25) NOT NULL,
	patronymic VARCHAR(25) NOT NULL,
	date_of_birth DATE NOT NULL,
	email VARCHAR (50) UNIQUE NOT NULL,
	date_of_creation TIMESTAMP NOT NULL DEFAULT NOW(),
	deleted boolean DEFAULT FALSE,
	PRIMARY KEY (id)
);

/* Заполнение таблицы Users */
INSERT INTO Users
	(name, surname, patronymic, date_of_birth, email)
VALUES
	('Admin518_name', 'Admin518_surname', 'Admin518_patronymic',
	 '2020-04-10', 'Admin518_email@gmail.com'),
	('User518_name', 'User518_surname', 'User518_patronymic',
	 '2020-04-10', 'User518_email@gmail.com');

/* Вывод таблицы Users */
select * from Users;
