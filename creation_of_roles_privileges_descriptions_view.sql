/* Удаление представления Roles_Privileges_Descriptions */
DROP VIEW Roles_Privileges_Descriptions;

/* Создание представления Roles_Privileges_Descriptions */
CREATE VIEW Roles_Privileges_Descriptions AS
SELECT
	Roles.id,
	Roles.name,
	Roles.description,
	array_agg(DISTINCT Privileges.id ORDER BY Privileges.id)
FROM Roles
LEFT JOIN Roles_Privileges on Roles.id=Roles_Privileges.role_id
LEFT JOIN Privileges on Roles_Privileges.privilege_id=Privileges.id
GROUP BY Roles.id

/* Вывод представления Roles_Privileges_Descriptions */
SELECT *
FROM Roles_Privileges_Descriptions;
