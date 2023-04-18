#*******************************************************************************************
#	CREACIÓN Y USO DE LA BASE DE DATOS 'CiclosInformatica'
#*******************************************************************************************
drop database if exists CicloInformatica;
create database Ciclosinformatica;
use CiclosInformatica;

#*******************************************************************************************
#	CREACIÓN DE LAS TABLAS DE LA BASE DE DATOS
#*******************************************************************************************
drop table if exists Modulo;
create table Modulo (
		idModulo		int					auto_increment,
		sigla			varchar(5),
		codigo			varchar(6),
		nombre			text,
		horas			int,
		curso			int,
		ciclo			text,
        primary key (idModulo)
)auto_increment=50;
alter table Modulo 
add constraint sigla_no_nulo check ( sigla is not null),
add constraint codigo_no_nulo check (codigo is not null),
add constraint nombre_no_nulo check(nombre is not null),
add constraint horas_no_nulo check (horas is not null),
add constraint sigla_no_vacio check(sigla !=''),
add constraint codigo_no_vacio check(codigo !=''),
add constraint nombre_no_vacio check (nombre !=''),
add constraint horas_positivo check (horas>0);

#		TABLA Modulo
#*******************************************************************************************
#		idModulo		int				auto_increment desde 50
#		sigla			varchar(5)
#		codigo			varchar(6)
#		nombre			text
#		horas			int
#		curso			int
#		ciclo			text
#
#		Llave primaria 			->	idModulo
#		Valor único    			->	codigo
#		Comprobación de Valor no nulo	->	sigla, codigo, nombre, horas
#		Comprobación de Valor no vacío	->	sigla, codigo, nombre
#		Comprobación de Valor positivo	->	horas
#		Índice				->	codigo
#*******************************************************************************************

#*******************************************************************************************
#	AÑADIMOS LOS DATOS
#*******************************************************************************************
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("CA",'MP3009','Ciencias aplicadas I',175,1,'IC');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("CE",'MP3010','Ciencias aplicadas I',206,1,'IC');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("CE",'MP3010','Ciencias aplicadas I',206,1,'IC');
select * from Modulo;
#*******************************************************************************************

#	CREAMOS LOS GRUPOS DE USUARIOS:	Direccion, Alumnado, Profesorado
#		En Alumnado -> AlumnadoDAM, AlumnadoDAW, AlumnadoASIR, AlumnadoSMR, AlumnadoIO, AlumnadoIC
#		En Profesorado -> ProfesoradoDAM, ProfesoradoDAW, ProfesoradoASIR, ProfesoradoSMR, ProfesoradoIO, ProfesoradoIC
#-------------------------------------------------------------------------------------------
#	DROP ROLE IF EXISTS <Rol1>, <Rol2>, ..., <RolN>;
#	CREATE ROLE 	    <Rol1>, <Rol2>, ..., <RolN>;
#*******************************************************************************************

#*******************************************************************************************
#	ASIGNAMOS LOS MISMOS PRIVILEGIOS A LOS COMPONENTES DE LOS GRUPOS ALUMNADO Y PROFESORADO
#-------------------------------------------------------------------------------------------
#	GRANT <RolGrupo> TO <RolComponente1>, <RolComponente2>, ..., <RolComponenteN>;
#*******************************************************************************************

#*******************************************************************************************
#	CREAMOS LAS VISTAS ASOCIADAS A CADA CICLO FORMATIVO
#-------------------------------------------------------------------------------------------
#	DROP VIEW IF EXISTS ..., ..., ...;
#	CREATE VIEW ... AS SELECT ...;
#*******************************************************************************************

#*******************************************************************************************
#	ASIGNAMOS LOS PERMISOS A DIRECCIÓN Y A LOS GRUPOS DEL PROFESORADO
#-------------------------------------------------------------------------------------------
#	GRANT <permiso> ON <tabla> TO <Rol1>, <Rol2>, ..., <Rol3>;
#*******************************************************************************************

#*******************************************************************************************
#	CREAMOS LOS USUARIOS DE DIRECCIÓN CON DEFAULT ROLE
#-------------------------------------------------------------------------------------------
#	DROP USER IF EXISTS <direccion1>, <direccion2>, ..., <direccionN>;
#	CREATE USER <direccion1> IDENTIFIED BY 'dir' DEFAULT ROLE 'Rol1';
#	...........................
#	CREATE USER <direccionN> IDENTIFIED BY 'dir' DEFAULT ROLE 'Rol1';
#*******************************************************************************************

#*******************************************************************************************
#	CREAMOS LOS USUARIOS DEL PROFESORADO CON DEFAULT ROLE
#-------------------------------------------------------------------------------------------
#	DROP USER IF EXISTS <profesor1>, <profesor2>, ..., <profesorN>;
#	CREATE USER <profesor1> IDENTIFIED BY 'pro' DEFAULT ROLE 'Rol2';
#	...........................
#	CREATE USER <profesorN> IDENTIFIED BY 'pro' DEFAULT ROLE 'Rol2';
#*******************************************************************************************

#*******************************************************************************************
#	DAMOS LOS RESPECTIVOS PRIVILEGIOS A LOS GRUPOS DEL ALUMNADO
#-------------------------------------------------------------------------------------------
#	GRANT <permiso> ON <tabla> TO <Rol1>;
#	---------------------
#	GRANT <permiso> ON <tabla> TO <RolN>;
#*******************************************************************************************

#*******************************************************************************************
#	CREAMOS LOS USUARIOS, ASIGNÁNDOLES LOS ROLES CORRESPONDIENTES
#-------------------------------------------------------------------------------------------
#	DROP USER IF EXISTS <usuario1>, <usuario2>, ..., <usuarioN>;
#	CREATE USER <usuario1> IDENTIFIED BY 'use' DEFAULT ROLE 'Rol3';
#	...........................
#	CREATE USER <usuarioN> IDENTIFIED BY 'use' DEFAULT ROLE 'Rol3';
#*******************************************************************************************

#*******************************************************************************************
#*******************************************************************************************