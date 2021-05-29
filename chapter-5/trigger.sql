--ms sql
--Nadaje status waiting nowemu userowi przy dodaniu 
CREATE TRIGGER CreateUser ON dbo."user" 
AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO dbo.UserStatusChange(
		changeDateTime,
		userKey,
		userStatusKey)
	SELECT
		GETDATE(),
		i.userKey,
		4
	FROM INSERTED AS i
END