/* Удаление таблицы Roles_Privileges */
DROP TABLE Roles_Privileges;

/* Создание таблицы Roles_Privileges */
CREATE TABLE Roles_Privileges (
	role_id INT NOT NULL,
	privilege_id INT NOT NULL,
	date_of_creation TIMESTAMP NOT NULL DEFAULT NOW(),
	deleted boolean DEFAULT FALSE,
	PRIMARY KEY (role_id, privilege_id),
	
	CONSTRAINT roles_privileges_role_id_fkey
	FOREIGN KEY (role_id) REFERENCES Roles (id)
	MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
	
	CONSTRAINT roles_privileges_privilege_id_fkey
	FOREIGN KEY (privilege_id) REFERENCES Privileges (id)
	MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
);

/* Заполнение таблицы Roles_Privileges */
INSERT INTO Roles_Privileges
	(role_id, privilege_id)
VALUES
	(1, 1),
	(1, 2);

/* Вывод таблицы Roles_Privileges */
SELECT * FROM Roles_Privileges;
