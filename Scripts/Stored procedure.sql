USE [PasswordRespondent]
GO
CREATE PROCEDURE sp_insert_role
@name NVARCHAR(25)
AS
INSERT INTO [dbo].[role]([name])
VALUES(@name)
GO
CREATE PROCEDURE sp_insert_sector
@name NVARCHAR(25)
AS
INSERT INTO [dbo].[sector]([name])
VALUES(@name)
GO
CREATE PROCEDURE sp_insert_user
@login NVARCHAR(255),
@password NVARCHAR(25),
@sector_id INT,
@role_id INT
AS
INSERT INTO [dbo].[user]([login],[password],[date_create],[sector_id],[role_id])
VALUES(@login, @password, GETDATE(), @sector_id, @role_id)
