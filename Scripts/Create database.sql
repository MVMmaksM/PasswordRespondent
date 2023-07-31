USE [master]

DECLARE @kill VARCHAR(8000) = '';  
SELECT @kill = @kill + 'kill ' + CONVERT(VARCHAR(5), session_id) + ';'  
FROM sys.dm_exec_sessions
WHERE database_id  = db_id('PasswordRespondent')

EXEC(@kill);

GO

IF DB_ID('PasswordRespondent') IS NOT NULL
	DROP DATABASE PasswordRespondent
GO
CREATE DATABASE PasswordRespondent
GO
USE PasswordRespondent
GO
CREATE TABLE [dbo].[sector]
(
	[id] INT IDENTITY(1,1) NOT NULL,
	[name] NVARCHAR(25) NOT NULL,

	CONSTRAINT PK__sector_id PRIMARY KEY CLUSTERED([id]),
	CONSTRAINT UQ__sector_name UNIQUE([name]) 
)
GO
CREATE TABLE [dbo].[role]
(
	[id] INT IDENTITY(1,1) NOT NULL,
	[name] NVARCHAR(25) NOT NULL,

	CONSTRAINT PK__role_id PRIMARY KEY CLUSTERED([id]),
	CONSTRAINT UQ__role_name UNIQUE([name])
)
GO
CREATE TABLE [dbo].[user]
(
	[id] INT IDENTITY(1,1) NOT NULL,
	[login] NVARCHAR(255) NOT NULL,
	[password] NVARCHAR(25) NOT NULL,
	[date_create] DATE DEFAULT GETDATE(),
	[sector_id] INT NOT NULL,
	[role_id] INT NOT NULL

	CONSTRAINT PK__user_id PRIMARY KEY CLUSTERED ([id]),
	CONSTRAINT UQ__user_login UNIQUE ([login]),
	CONSTRAINT FK__user_sector_id FOREIGN KEY ([sector_id]) REFERENCES [dbo].[sector]([id]),
	CONSTRAINT FK__user_role_id FOREIGN KEY([role_id]) REFERENCES [dbo].[role]([id])
)
GO
CREATE TABLE [dbo].[respondent]
(
	[id] INT IDENTITY(1,1) NOT NULL,
	[okpo] NVARCHAR(15) NOT NULL,
	[full_name] NVARCHAR(MAX) NOT NULL,
	[short_name] NVARCHAR(255) NOT NULL,
	[okato_fact] BIGINT NOT NULL,
	[okved2007_base] NVARCHAR(25) NULL,
	[okved2_base] NVARCHAR(25) NOT NULL,
	[adress] NVARCHAR(MAX) NOT NULL,
	[telephone] NVARCHAR(64) NULL,
	[email_contact] NVARCHAR(255) NULL,
	[email_asgs] NVARCHAR(255) NULL,
	[inn] BIGINT NOT NULL,
	[ogrn] BIGINT NOT NULL,

	CONSTRAINT PK__respondent_id PRIMARY KEY CLUSTERED([id]),
	CONSTRAINT UQ__respondent_okpo UNIQUE([okpo])
)
GO
CREATE TABLE [dbo].[password]
(
	[id] INT IDENTITY(1,1) NOT NULL,
	[okpo] NVARCHAR(15) NOT NULL,
	[password] NVARCHAR(25) NOT NULL,
	[date_create] DATE NOT NULL,
	[create_user_id] INT NOT NULL,

	CONSTRAINT PK__password_id PRIMARY KEY CLUSTERED([id]),
	CONSTRAINT UQ__password_okpo UNIQUE([okpo]),
	CONSTRAINT FK__password_okpo FOREIGN KEY([okpo]) REFERENCES [dbo].[respondent]([okpo]),
	CONSTRAINT FK__password_create_user FOREIGN KEY([create_user_id]) REFERENCES [dbo].[user]([id])
)