/* Удаление таблицы Users_Roles */
DROP TABLE Users_Roles;

/* Создание таблицы Users_Roles */
CREATE TABLE Users_Roles (
	user_id INT NOT NULL,
	role_id INT NOT NULL,
	date_of_creation TIMESTAMP NOT NULL DEFAULT NOW(),
	deleted boolean DEFAULT FALSE,
	PRIMARY KEY (user_id, role_id),
	
	CONSTRAINT users_roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES Users (id)
	MATCH SIMPLE ON UPDATE NO ACTION ON DELETE CASCADE,
	
	CONSTRAINT users_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES Roles (id)
	MATCH SIMPLE ON UPDATE NO ACTION ON DELETE RESTRICT
);

/* Заполнение таблицы Users_Roles */
INSERT INTO Users_Roles
	(user_id, role_id)
VALUES
	(1, 1),
	(2, 2);

/* Вывод таблицы Users_Roles */
SELECT * FROM Users_Roles;
