USE temporal;

DROP TABLE IF EXISTS TMP;   
DROP TABLE IF EXISTS TMPERROR;

/*
CREATE TABLE TMP (
	LINEA     int auto_increment  primary key,
    YEAR      varchar(128)  null,
    CATEGORY  varchar(128)  null,
    VARIABLE  varchar(128)  null,
    UNITS     varchar(128)  null,
    MAGNITUDE varchar(128)  null,
    SOURCE    varchar(128)  null,
    DATAVALUE varchar(128)  null,
    FLAG      varchar(128)  null
);
*/

CREATE TABLE TMPERROR (
	LINEA       int auto_increment  primary key,
    DESCRIPCION varchar(128)  null,
    ERROR       varchar(128)  null
);




CREATE TABLE TMP (
	LINEA int auto_increment  primary key,
    COD_HOSPITAL       varchar(128)  null,
    NOMBRE_HOSPITAL    varchar(128)  null,
    DIRECCION_HOSPITAL varchar(128)  null,
    REGION             varchar(128)  null,
    DEPARTAMENTO       varchar(128)  null,
    COD_DOCTOR         varchar(128)  null,
    NOMBRE_DOCTOR      varchar(128)  null,
    FECHACASO          varchar(128)  null,
    DPI                varchar(128)  null,
    NOMBREPACIENTE     varchar(128)  null,
    FECHAPERSONA       varchar(128)  null,
    GENERO             varchar(128)  null,
    TIPOCASO           varchar(128)  null
);
