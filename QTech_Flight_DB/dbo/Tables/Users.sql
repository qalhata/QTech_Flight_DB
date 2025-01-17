﻿CREATE TABLE dbo.Users
(
	UserId				INTEGER		IDENTITY(1,1)	NOT NULL 
	, UserIdentifier	UNIQUEIDENTIFIER			NOT NULL CONSTRAINT DF_Users_UserIdentifier DEFAULT NEWID()
	, UserName			NVARCHAR(100)				NOT NULL
	, [Password]		NVARCHAR(100)				NOT NULL
	, Email				NVARCHAR(100)				NOT NULL
	, CONSTRAINT PK_Users_UserId PRIMARY KEY (UserId) 
)
