CREATE DATABASE DB_Recu_FB
CREATE TABLE Constructora(
	Id_Constructora int IDENTITY(1,1) NOT NULL,
	Tipo_Construccion_Existente float NULL,
	Tipo_Construccion_Existente_Descripcion varchar(max) NULL,
	Tipo_Construccion_Propuesto float NULL,
	Descripcion_Tipo_Construccion_Propuesta float NULL,
	Id_Permiso int NULL,
 CONSTRAINT PK_Constructora PRIMARY KEY CLUSTERED 
(
	Id_Constructora 
)

CREATE TABLE Lote(
	Id_Lote [int] IDENTITY(1,1) NOT NULL,
	Cuadra varchar(max) NULL,
	Lote] varchar(max) NULL,
	Nombre_Calle varchar(max) NULL,
	Sufijo_Calle varchar(max) NULL,
	Desripcion varchar(max) NULL,
	Estado_Actual varchar(max) NULL,
	Distrito_Supervisor float NULL,
	Vecindarios_Lim_Analisis varchar(max) NULL,
	Ubicacion varchar(max) NULL,
	Id_Constructora int NULL,
 CONSTRAINT PK_Lote PRIMARY KEY CLUSTERED 
(
	Id_Lote 
)

CREATE TABLE Permiso(
	Id_Permiso int IDENTITY(1,1) NOT NULL,
	Num_Permiso int NULL,
	Tipo_Permiso int NULL,
	Definicion_Tipo_Permiso varchar(max) NULL,
	Fecha_Creacion_Permiso date NULL,
	Identificacion_Permiso varchar(max) NULL,
	Permiso_Sitio varchar(max) NULL,
 CONSTRAINT PK_Permiso PRIMARY KEY CLUSTERED 
(
	Id_Permiso 
)


ALTER TABLE Constructora  WITH CHECK ADD  CONSTRAINT [FK_Constructora_Permiso] FOREIGN KEY([Id_Permiso])
REFERENCES Permiso ([Id_Permiso])
GO
ALTER TABLE Constructora CHECK CONSTRAINT [FK_Constructora_Permiso]
GO
ALTER TABLE Lote  WITH CHECK ADD  CONSTRAINT [FK_Lote_Constructora] FOREIGN KEY([Id_Constructora])
REFERENCES Constructora ([Id_Constructora])
GO
ALTER TABLE Lote CHECK CONSTRAINT [FK_Lote_Constructora]
GO
