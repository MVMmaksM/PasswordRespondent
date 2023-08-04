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
CREATE TABLE [dbo].[user]
(
	[id] INT IDENTITY(1,1) NOT NULL,
	[name] NVARCHAR(24) NOT NULL


	CONSTRAINT PK__user_id PRIMARY KEY CLUSTERED ([id]),
	CONSTRAINT UQ__user_name UNIQUE ([name])
)
GO
CREATE TABLE [dbo].[respondent_asgs]
(
	[id] INT IDENTITY(1,1) NOT NULL,	
	[full_name] NVARCHAR(MAX) NOT NULL,
	[short_name] NVARCHAR(255) NOT NULL,
	[okpo] NVARCHAR(15) NOT NULL,
	[okpo_ul] NVARCHAR(15) NOT NULL,
	[inn] BIGINT NOT NULL,
	[adress] NVARCHAR(255) NOT NULL,
	[telephone] NVARCHAR(64) NULL,
	[dop_telephone]
	

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