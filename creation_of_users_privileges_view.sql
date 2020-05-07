/* Удаление представления Users_Privileges */
DROP VIEW Users_Privileges;

/* Создание представления Users_Privileges */
CREATE VIEW Users_Privileges AS
SELECT
	Users.id as user_id,
	array_agg(DISTINCT Privileges.id ORDER BY Privileges.id) as user_privileges
FROM Users
LEFT JOIN Users_Roles on Users.id=Users_Roles.user_id
LEFT JOIN Roles on Users_Roles.role_id=Roles.id
LEFT JOIN Roles_Privileges on Roles.id=Roles_Privileges.role_id
LEFT JOIN Privileges on Roles_Privileges.privilege_id=Privileges.id
GROUP BY Users.id;

/* Вывод представления Users_Privileges */
SELECT *
FROM Users_Privileges;
