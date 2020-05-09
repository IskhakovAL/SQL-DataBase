/* Удаление представления Roles_Privileges_Description */
DROP VIEW Roles_Privileges_Description;

/* Создание представления Roles_Privileges_Description */
CREATE VIEW Roles_Privileges_Description AS
SELECT
	Roles.id,
	Roles.name,
	Roles.description,
	array_agg(DISTINCT Privileges.id ORDER BY Privileges.id)
FROM Roles
LEFT JOIN Roles_Privileges on Roles.id=Roles_Privileges.role_id
LEFT JOIN Privileges on Roles_Privileges.privilege_id=Privileges.id
GROUP BY Roles.id

/* Вывод представления Roles_Privileges_Description */
SELECT *
FROM Roles_Privileges_Description;
