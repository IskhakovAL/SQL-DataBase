/* Удаление представления Roles_Privileges_Descriptions */
DROP VIEW Roles_Privileges_Descriptions;

/* Создание представления Roles_Privileges_Descriptions */
CREATE VIEW Roles_Privileges_Descriptions AS
SELECT
	Roles.id AS role_id,
	Roles.name AS role_name,
	Roles.description as role_description,
	array_agg(DISTINCT Privileges.id ORDER BY Privileges.id) as role_privileges
FROM Roles
LEFT JOIN Roles_Privileges on Roles.id=Roles_Privileges.role_id
LEFT JOIN Privileges on Roles_Privileges.privilege_id=Privileges.id
GROUP BY Roles.id;

/* Вывод представления Roles_Privileges_Descriptions */
SELECT *
FROM Roles_Privileges_Descriptions;
