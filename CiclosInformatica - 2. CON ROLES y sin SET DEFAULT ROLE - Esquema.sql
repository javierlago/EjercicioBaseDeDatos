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
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("ASIR",	'MP0380',	'Formación e orientación laboral',									107,	1	,'Administracion de sistemas informaticos en rede');
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
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAM",	'MP0484',	'Bases de datos',														187,	1,	'Desenvolvemento de aplicacións multiplataforma');
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
insert into Modulo (sigla,codigo,nombre,horas,curso,ciclo)values("DAW",	'MP0484',	'Bases de datos',														187,	1,	'Desenvolvemento de aplicacións web');
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

create view Ciclo_Informatica_Comunicacion 							as select * 		from modulo 			where sigla='IC';
create view Ciclo_Informatica_Oficina				 				as select *			from modulo 			where sigla='IO';
create view Ciclo_Sistemas_Microinformaticos_Redes 					as select * 		from modulo 			where sigla='SMR';
create view Ciclo_Administracion_Sitemas_Informaticos_Redes 		as select * 		from modulo 			where sigla='ASIR';
create view Ciclo_Desarrollo_Aplicaciones_Multiplataforma 			as select * 		from modulo 			where sigla='DAM';
create view Ciclo_Desarrolo_Aplicaciones_Web 						as select * 		from modulo 			where sigla='DAW';


#	CREAMOS LOS GRUPOS DE USUARIOS:	Direccion, Alumnado, Profesorado
#		En Alumnado -> AlumnadoDAM, AlumnadoDAW, AlumnadoASIR, AlumnadoSMR, AlumnadoIO, AlumnadoIC
#		En Profesorado -> ProfesoradoDAM, ProfesoradoDAW, ProfesoradoASIR, ProfesoradoSMR, ProfesoradoIO, ProfesoradoIC

drop role if exists direccion; 
CREATE ROLE direccion;
grant all on Ciclo_Informatica_Comunicacion 										to Direccion;
grant all on Ciclo_Informatica_Oficina		 										to Direccion;
grant all on Ciclo_Sistemas_Microinformaticos_Redes 	 							to Direccion;	
grant all on Ciclo_Administracion_Sitemas_Informaticos_Redes 	 					to Direccion;	
grant all on Ciclo_Desarrollo_Aplicaciones_Multiplataforma 	 						to Direccion;	
grant all on Ciclo_Desarrolo_Aplicaciones_Web 	 									to Direccion;	


drop role if exists ProfesorIC; 
Create role ProfesorIC;
grant all on Ciclo_Informatica_Comunicacion to ProfesorIC;
drop role if exists ProfesorIO; 
create role ProfesorIO;
grant all on Ciclo_Informatica_Oficina to ProfesorIO;
drop role if exists ProfesorSMR; 
create role ProfesorSMR;
grant all on Ciclo_Sistemas_Microinformaticos_Redes  to ProfesorSMR;
drop role if exists ProfesorASIR; 
create role ProfesorASIR;
grant all on Ciclo_Administracion_Sitemas_Informaticos_Redes to ProfesorASIR;
drop role if exists  ProfesorDAM; 
create role ProfesorDAM;
grant all on Ciclo_Desarrollo_Aplicaciones_Multiplataforma 	to ProfesorDAM;
drop role if exists ProfesorDAW; 
create role ProfesorDAW;
grant all on Ciclo_Desarrolo_Aplicaciones_Web  to ProfesorDAW;

drop role if exists AlumnoIC; 
Create role AlumnoIC;
grant select on Ciclo_Informatica_Comunicacion to AlumnoIC;
drop role if exists AlumnoIO; 
create role AlumnoIO;
grant select on Ciclo_Informatica_Oficina to AlumnoIO;
drop role if exists AlumnoSMR; 
create role AlumnoSMR;
grant select on Ciclo_Sistemas_Microinformaticos_Redes  to AlumnoSMR;
drop role if exists AlumnoASIR; 
create role AlumnoASIR;
grant select on Ciclo_Administracion_Sitemas_Informaticos_Redes to AlumnoASIR;
drop role if exists  AlumnoDAM; 
create role AlumnoDAM;
grant select on Ciclo_Desarrollo_Aplicaciones_Multiplataforma 	to AlumnoDAM;
drop role if exists AlumnoDAW; 
create role AlumnoDAW;
grant select on Ciclo_Desarrolo_Aplicaciones_Web  to AlumnoDAW;


######################## CREACION DE LOS USUARIOS DE EL GRUPO DIRECCION ################################################################
drop user if exists Director;																					                       
create user Director 							identified by 'Dir' 			default role Direccion;                                
drop user if exists Vicedirector;
create user Vicedirector  						identified by 'Vic'				default role Direccion;
drop user if exists Secretario;
create user  Secretario 						identified by 'Sec'				default role Direccion;
drop user if exists JefedeEstudiosDiurno;
create user JefedeEstudiosDiurno 				identified by 'jed'				default role Direccion;
drop user if exists JefedeEstudiosNocturno;
create user JefedeEstudiosNocturno 				identified by 'jen'				default role Direccion;
########################################################################################################################################

######################## CREACION DE LOS USUARIOS DE EL GRUPO PROFESORADO ##############################################################
# Profesosores de Informartica Comunicacion
drop user if exists Prof_01IC , Prof_02IC, Prof_03IC ,Prof_04IC ,Prof_05IC;
create user Prof_01IC identified by 'prof' default role ProfesorIC;
create user	Prof_02IC identified by 'prof' default role ProfesorIC;
create user Prof_03IC identified by 'prof' default role ProfesorIC;
create user Prof_04IC identified by 'prof' default role ProfesorIC;
create user Prof_05IC identified by 'prof' default role ProfesorIC;
###########################################################################
#Pofesores de Informatica de Oficina            
drop user if exists Prof_01IO , Prof_02IO, Prof_03IO ,Prof_04IO ,Prof_05IO;

create user Prof_01IO identified by 'prof' default role ProfesorIO;
create user	Prof_02IO identified by 'prof' default role ProfesorIO;
create user Prof_03IO identified by 'prof' default role ProfesorIO;
create user Prof_04IO identified by 'prof' default role ProfesorIO;
create user Prof_05IO identified by 'prof' default role ProfesorIO;
 ###########################################################################           
 #Profesores de Sistemas Microinformaticos redes           
drop user if exists Prof_01SMR , Prof_02SMR, Prof_03SMR ,Prof_04SMR ,Prof_05SMR;
create user Prof_01SMR identified by 'prof' default role ProfesorSMR;
create user	Prof_02SMR identified by 'prof' default role ProfesorSMR;
create user Prof_03SMR identified by 'prof' default role ProfesorSMR;
create user Prof_04SMR identified by 'prof' default role ProfesorSMR;
create user Prof_05SMR identified by 'prof' default role ProfesorSMR;         
 ###########################################################################   
 # Profesores de Administracion de Sistemas Informaticos Redes
drop user if exists Prof_01ASIR , Prof_02ASIR, Prof_03ASIR ,Prof_04ASIR ,Prof_05ASIR;
create user Prof_01ASIR identified by 'prof' default role ProfesorASIR;
create user	Prof_02ASIR identified by 'prof' default role ProfesorASIR;
create user Prof_03ASIR identified by 'prof' default role ProfesorASIR;
create user Prof_04ASIR identified by 'prof' default role ProfesorASIR;
create user Prof_05ASIR identified by 'prof' default role ProfesorASIR;         
###########################################################################
# Profesores de Desarrollo de Aplicaciones Multiplataforma
drop user if exists Prof_01DAM , Prof_02DAM, Prof_03DAM ,Prof_04DAM ,Prof_05DAM;
create user Prof_01DAM identified by 'prof' default role ProfesorDAM;
create user	Prof_02DAM identified by 'prof' default role ProfesorDAM;
create user Prof_03DAM identified by 'prof' default role ProfesorDAM;
create user Prof_04DAM identified by 'prof' default role ProfesorDAM;
create user Prof_05DAM identified by 'prof' default role ProfesorDAM;
###########################################################################
# Profesores de Desarrollo de Aplicaciones Web
drop user if exists Prof_01DAW , Prof_02DAW, Prof_03DAW ,Prof_04DAW ,Prof_05DAW;
create user Prof_01DAW identified by 'prof' default role ProfesorDAW;
create user	Prof_02DAW identified by 'prof' default role ProfesorDAW;
create user Prof_03DAW identified by 'prof' default role ProfesorDAW;
create user Prof_04DAW identified by 'prof' default role ProfesorDAW;
create user Prof_05DAW identified by 'prof' default role ProfesorDAW;
          
###########################################################################
######################## CREACION DE LOS USUARIOS DE EL GRUPO ALUMNADO ##############################################
#Alumnos de Informatica de Oficina
drop user if exists Al_01IO , Al_02IO, Al_03IO ,Al_04IO ,Al_05IO;
create user Al_01IO identified by 'abc' default role AlumnoIO;
create user	Al_02IO identified by 'abc' default role AlumnoIO;
create user Al_03IO identified by 'abc' default role AlumnoIO;
create user Al_04IO identified by 'abc' default role AlumnoIO;
create user Al_05IO identified by 'abc' default role AlumnoIO;
###########################################################################
#Alumnos de Informatica Comuinicacion
drop user if exists Al_01IC , Al_02IC, Al_03IC ,Al_04IC ,Al_05IC;
create user Al_01IC identified by 'abc' default role AlumnoIC;
create user	Al_02IC identified by 'abc' default role AlumnoIC;
create user Al_03IC identified by 'abc' default role AlumnoIC;
create user Al_04IC identified by 'abc' default role AlumnoIC;
create user Al_05IC identified by 'abc' default role AlumnoIC;
###########################################################################
#Alumnos Sistema Microinformatico Redes            	
 drop user if exists Al_01SMR , Al_02SMR, Al_03SMR ,Al_04SMR ,Al_05SMR;
create user Al_01SMR identified by 'abc' default role AlumnoSMR;
create user	Al_02SMR identified by 'abc' default role AlumnoSMR;
create user Al_03SMR identified by 'abc' default role AlumnoSMR;
create user Al_04SMR identified by 'abc' default role AlumnoSMR;
create user Al_05SMR identified by 'abc' default role AlumnoSMR;
###########################################################################
# Alumnod de Administracion de Sistemas Informaticos Redes
drop user if exists Al_01ASIR , Al_02ASIR, Al_03ASIR ,Al_04ASIR ,Al_05ASIR;
create user Al_01ASIR identified by 'abc' default role AlumnoASIR;
create user	Al_02ASIR identified by 'abc' default role AlumnoASIR;
create user Al_03ASIR identified by 'abc' default role AlumnoASIR;
create user Al_04ASIR identified by 'abc' default role AlumnoASIR;
create user Al_05ASIR identified by 'abc' default role AlumnoASIR;
###########################################################################
# Alumnos de Desarrollo de Aplicaciones Web
drop user if exists Al_01DAW , Al_02DAW, Al_03DAW ,Al_04DAW ,Al_05DAW;
create user Al_01DAW identified by 'abc' default role AlumnoDAW;
create user	Al_02DAW identified by 'abc' default role AlumnoDAW;
create user Al_03DAW identified by 'abc' default role AlumnoDAW;
create user Al_04DAW identified by 'abc' default role AlumnoDAW;
create user Al_05DAW identified by 'abc' default role AlumnoDAW;
###########################################################################
# Alumnos de Desarrollo de Aplicaciones Multiplataforma
drop user if exists Al_01DAM , Al_02DAM, Al_03DAM ,Al_04DAM ,Al_05DAM;
create user Al_01DAM identified by 'abc' default role AlumnoDAM;
create user	Al_02DAM identified by 'abc' default role AlumnoDAM;
create user Al_03DAM identified by 'abc' default role AlumnoDAM;
create user Al_04DAM identified by 'abc' default role AlumnoDAM;
create user Al_05DAM identified by 'abc' default role AlumnoDAM;

show grants for current_user;


