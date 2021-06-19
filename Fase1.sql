DROP TABLE IF EXISTS Caso;
DROP TABLE IF EXISTS Paciente;
DROP TABLE IF EXISTS Tipo;
DROP TABLE IF EXISTS Fecha;
DROP TABLE IF EXISTS Hospital;
DROP TABLE IF EXISTS Region;
DROP TABLE IF EXISTS Doctor;
DROP TABLE IF EXISTS Error;

CREATE TABLE Paciente(
	ID_Paciente INT IDENTITY (1,1) PRIMARY KEY,
	COD_Paciente INT NOT NULL,
	Nombre VARCHAR(50) NOT NULL,
	FechaNac DATE NOT NULL,
	Edad INT NOT NULL,
	Genero VARCHAR(50) NOT NULL
);

CREATE TABLE Tipo(
	ID_Tipo INT IDENTITY (1,1) PRIMARY KEY,
	Tipo VARCHAR(50) NOT NULL
);

CREATE TABLE Fecha(
	ID_Fecha INT IDENTITY (1,1) PRIMARY KEY,
	Fecha DATE NOT NULL,
	Dia INT NOT NULL,
	Mes VARCHAR(15) NOT NULL,
	Anio INT NOT NULL,
	Semestre INT NOT NULL
);

CREATE TABLE Hospital(
	ID_Hospital INT IDENTITY (1,1) PRIMARY KEY,
	COD_Hospita VARCHAR(10) NOT NULL,
	Nombre VARCHAR(100) NOT NULL,
	Direccion VARCHAR(250) NOT NULL
);

CREATE TABLE Region(
	ID_Region INT IDENTITY (1,1) PRIMARY KEY,
	Region VARCHAR(50) NOT NULL,
	Departamento VARCHAR(50) NOT NULL
);

CREATE TABLE Doctor(
	ID_Doctor INT IDENTITY (1,1) PRIMARY KEY,
	COD_Doctor VARCHAR(10) NOT NULL,
	Nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Caso(
	COD_Caso INT IDENTITY (1,1) PRIMARY KEY,
	ID_Paciente INT,
	ID_Hospital INT,
	ID_Doctor INT,
	ID_Region INT,
	ID_Fecha INT,
	ID_Tipo INT,
	Cantidad INT DEFAULT 1,
	FOREIGN KEY (ID_Paciente) REFERENCES Paciente(ID_Paciente),
	FOREIGN KEY (ID_Hospital) REFERENCES Hospital(ID_Hospital),
	FOREIGN KEY (ID_Doctor) REFERENCES Doctor(ID_Doctor),
	FOREIGN KEY (ID_Region) REFERENCES Region(ID_Region),
	FOREIGN KEY (ID_Fecha) REFERENCES Fecha(ID_Fecha),
	FOREIGN KEY (ID_Tipo) REFERENCES Tipo(ID_Tipo)
);

CREATE TABLE Error(
	linea INT,
	descripcion VARCHAR(255),
	Completitud INT,
	Credibilidad INT,
	Precision INT,
	Consistencia INT,
	interpretabilidad INT	
);