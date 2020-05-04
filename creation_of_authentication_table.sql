/* Удаление таблицы Authentication */
DROP TABLE Authentication;

/* Создание таблицы Authentication */
CREATE TABLE Authentication (
	user_id INT NOT NULL,
	login VARCHAR(40) UNIQUE NOT NULL,
	password VARCHAR(40) NOT NULL,
	date_of_creation TIMESTAMP NOT NULL DEFAULT NOW(),
	deleted boolean DEFAULT FALSE,
	PRIMARY KEY (user_id),
	
	CONSTRAINT authentication_user_id_fkey FOREIGN KEY (user_id) 
	REFERENCES Users (id) ON DELETE CASCADE
);

/* Заполнение таблицы Authentication */
INSERT INTO Authentication
	(user_id, login, password)
VALUES
	(1, 'Admin518_login', 'Admin518_password'),
	(2, 'User518_login', 'User518_password');

/* Вывод таблицы Authentication */
SELECT * FROM Authentication;
