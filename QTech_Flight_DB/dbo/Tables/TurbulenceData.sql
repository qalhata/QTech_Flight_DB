﻿CREATE TABLE dbo.TurbulenceData
(
	TurbulenceDataId		INTEGER IDENTITY(1,1)		NOT NULL
	, FlightDataId			INTEGER						NOT NULL --FK from Parent Table's PK FlightData
	, ScenarioId			INTEGER						NULL
	, UserIdentifier		UNIQUEIDENTIFIER			NULL
	, Start_Timestamp		DECIMAL(8,4)				NULL 
	, Duration				DECIMAL(5,1)				NULL
	, Start_Frame_Index		INTEGER						NULL
	, End_Frame_Index		INTEGER						NULL
	, Norm_Pos_X			DECIMAL(16,15)				NULL
	, Norm_Pos_Y			DECIMAL(16,15)				NULL
	, Dispersion			DECIMAL(16,15)				NULL
	, Confidence			DECIMAL(6,5)				NULL
	, Method				NVARCHAR(5)					NULL CONSTRAINT DF_TurbulenceData_Method DEFAULT 'Pupil'
	, Gaze_Point_3d_X		DECIMAl(15,12)				NULL
	, Gaze_Point_3d_Y		DECIMAL(15,12)				NULL
	, Gaze_Point_3d_Z		DECIMAL(15,12)				NULL
	, CONSTRAINT PK_TurbulenceData_TurbulenceDataId PRIMARY KEY (TurbulenceDataId)
)
