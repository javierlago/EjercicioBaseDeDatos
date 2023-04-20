#*******************************************************************************************
#	CREACIÓN Y USO DE LA BASE DE DATOS 'CInformatica e comunicaciónslosInformatInformatica e comunicaciónsa'
#*******************************************************************************************
drop database if exists 	CiclosdeInformatica;
create database 			CiclosdeInformatica;
use							CiclosdeInformatica;

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
#		cInformatica e comunicaciónslo			text
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
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IC",	'MP3009',	'Ciencias aplicadas I',											175,	1,	'Informatica e comunicacións');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IC",	'MP3011',	'Comunicacion e sociedade',										206,	1,	'Informatica e comunicacións');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IC",	'MP3015',	'Equipamientos eléctricos e electrónicos',						233,	1,	'Informatica e comunicacións');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IC",	'MP3029',	'Montaxe e mantemento de sistemas e compoñentes informáticos',	296,	1,	'Informatica e comunicacións');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IC",	'MP3019',	'Ciencias aplicadas II',										162,	2,	'Informatica e comunicacións');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IC",	'MP3012',	'Comunicación e sociedade II',									135,	2,	'Informatica e comunicacións');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IC",	'MP3032',	'Formación en centros de traballo',								320,	2,	'Informatica e comunicacións');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IC",	'MP3016',	'Instalación e mantemento de redes para transmisión de datos',	206,	2,	'Informatica e comunicacións');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IC",	'MP3030',	'Operacións auxiliares para a configuración e a explotación',	205,	2,	'Informatica e comunicacións');
######################################################################################################################################################################################################
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IO",	'MP3009',	'Ciencias aplicadas I',											175,	1,	'Informatica de oficina');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IO",	'MP3011',	'Comunicacion e sociedade',										206,	1,	'Informatica de oficina');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IO",	'MP3015',	'Equipamientos eléctricos e electrónicos',						233,	1,	'Informatica de oficina');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IO",	'MP3029',	'Montaxe e mantemento de sistemas e compoñentes informáticos',	296,	1,	'Informatica de oficina');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IO",	'MP3019',	'Ciencias aplicadas II',										162,	2,	'Informatica de oficina');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IO",	'MP3012',	'Comunicación e sociedade II',									135,	2,	'Informatica de oficina');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IO",	'MP3032',	'Formación en centros de traballo',								320,	2,	'Informatica de oficina');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IO",	'MP3016',	'Instalación e mantemento de redes para transmisión de datos',	206,	2,	'Informatica de oficina');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("IO",	'MP3030',	'Operacións auxiliares para a configuración e a explotación',	205,	2,	'Informatica de oficina');
####################################################################################################################################################################################
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("SMR",	'MP0223',	'Aplicacións ofimáticas',										240,	1,	'Sistemas microinformaticos e redes');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("SMR",	'MP0229',	'Formación e orientación laboral',								107,	1,	'Sistemas microinformaticos e redes');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("SMR",	'MP0221',	'Montaxe e mantemento de equipamentos',							240,	1,	'Sistemas microinformaticos e redes');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("SMR",	'MP0225',	'Redes locais',													213,	1,	'Sistemas microinformaticos e redes');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("SMR",	'MP0222',	'Sistemas operativos monoposto',								216,	1,	'Sistemas microinformaticos e redes');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("SMR",	'MP0228',	'Aplicacións web',												123,	2,	'Sistemas microinformaticos e redes');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("SMR",	'MP0230',	'Empresa e iniciativa emprendedora',							53,		2,	'Sistemas microinformaticos e redes');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("SMR",	'MP0231',	'Formación en centros de traballo',								410,	2,	'Sistemas microinformaticos e redes');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("SMR",	'MP0226',	'Seguridade informática',										140,	2,	'Sistemas microinformaticos e redes');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("SMR",	'MP0227',	'Servizos en rede',												157,	2,	'Sistemas microinformaticos e redes');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("SMR",	'MP0224',	'Sistemas operativos en rede',									157,	2,	'Sistemas microinformaticos e redes');
####################################################################################################################################################################################
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0380'	'Formación e orientación laboral',									107,	1	,'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0371',	'Fundamentos de hardware',											107,	1,	'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0369',	'Implantación de sistemas operativos',								213,	1,	'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0373',	'Linguaxes de marcas e sistemas de xestión de información',			133,	1,	'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0370',	'Planificación e administración de redess',							213,	1,	'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0372',	'Xestión de bases de datos',										187,	1,	'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0374',	'Administración de sistemas operativos',							140,	2,	'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0377',	'Administración de sistemas xestores de bases de datos',			70,		2,	'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0381',	'Empresa e iniciativa emprendedora',								53,		2,	'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0382',	'Formación en centros de traballo',									384,	2,	'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0376',	'Implantación de aplicacións web',									122,	2,	'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0379',	'Proxecto de administración de sistemas informáticos en rede',		26,		2,	'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0378',	'Seguridade e alta dispoñibilidade',								105,	2,	'Administracion de sistemas informaticos en rede');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0375',	'Servizos de rede e internet',										157,	2,	'Administracion de sistemas informaticos en rede');
####################################################################################################################################################################################
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0484',	'Bases de datos',														187,	1	,'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0487',	'Contornos de desenvolvemento',											107,	1,	'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0493',	'Formación e orientación laboral',										107,	1,	'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0373',	'Linguaxes de marcas e sistemas de xestión de información',				133,	1,	'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0485',	'Programación',															240,	1,	'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0483',	'Sistemas informáticos',												186,	1,	'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0486',	'Acceso a datos',														157,	2,	'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0488',	'Desenvolvemento de interfaces',										140,	2,	'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0494',	'Empresa e iniciativa emprendedora',									53,		2,	'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0495',	'Formación en centros de traballo',										384,	2,	'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0490',	'Programación de servizos e procesos',									70,		2,	'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0489',	'Programación multimedia e dispositivos móbile',						123,	2,	'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0492',	'Proxecto de desenvolvemento de aplicacións multiplataforma',			26,		2,	'Desenvolvemento de aplicacións multiplataforma');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0491',	'Sistemas de xestión empresarial',										87,		2,	'Desenvolvemento de aplicacións multiplataforma');
####################################################################################################################################################################################
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0484',	'Bases de datos',														187,	1	,'Desenvolvemento de aplicacións web');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0487',	'Contornos de desenvolvemento',											107,	1,	'Desenvolvemento de aplicacións web');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0617',	'Formación e orientación laboral',										107,	1,	'Desenvolvemento de aplicacións web');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0373',	'Linguaxes de marcas e sistemas de xestión de información',				133,	1,	'Desenvolvemento de aplicacións web');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0485',	'Programación',															240,	1,	'Desenvolvemento de aplicacións web');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0483',	'Sistemas informáticos',												186,	1,	'Desenvolvemento de aplicacións web');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0615',	'Deseño de interfaces web',												157,	2,	'Desenvolvemento de aplicacións web');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0612',	'Desenvolvemento web en contorno cliente',								140,	2,	'Desenvolvemento de aplicacións web');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0613',	'Desenvolvemento web en contorno servidor',								53,		2,	'Desenvolvemento de aplicacións web');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0614',	'Despregamento de aplicacións web',										384,	2,	'Desenvolvemento de aplicacións web');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0618',	'Empresa e iniciativa emprendedora',									70,		2,	'Desenvolvemento de aplicacións web');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0619',	'Formación en centros de traballoe',									123,	2,	'Desenvolvemento de aplicacións web');
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0616',	'Proxecto de desenvolvemento de aplicacións web',						26,		2,	'Desenvolvemento de aplicacións web');

select * from Modulo;
#*******************************************************************************************

#	CREAMOS LOS GRUPOS DE USUARIOS:	Direccion, Alumnado, Profesorado
#		En Alumnado -> AlumnadoDAM, AlumnadoDAW, AlumnadoASIR, AlumnadoSMR, AlumnadoIO, AlumnadoIC
#		En Profesorado -> ProfesoradoDAM, ProfesoradoDAW, ProfesoradoASIR, ProfesoradoSMR, ProfesoradoIO, ProfesoradoIC


CREATE USER 'Direccion' IDENTIFIED BY '1234';
CREATE USER 'Alumnado' IDENTIFIED BY '1234';
create user 'Profesorado' identified by '1234';
 
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