/* Удаление представления Users_Information */
DROP VIEW Users_Information;

/* Создание представления Users_Information */
CREATE VIEW Users_Information AS
SELECT
	Users.id as user_id,
	Users.name as user_name,
	Users.surname as user_surname,
	Users.patronymic as user_patronymic,
	Users.date_of_birth as user_date_of_birth,
	Users.email as user_email,
	Roles.name as role_name
FROM Users
INNER JOIN Users_Roles on Users.id=Users_Roles.user_id
INNER JOIN Roles on Users_Roles.role_id=Roles.id;

/* Вывод представления Users_Information */
SELECT *
FROM Users_Information;
