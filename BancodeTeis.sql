#*******************************************************************************************
#	CREACIÓN Y USO DE LA BASE DE DATOS 'BancoTeis'
#*******************************************************************************************
drop database if exists BancodeTeis;
create database BancodeTeis;
use BancodeTeis;
#*******************************************************************************************
#	CREACIÓN DE LAS TABLAS DE LA BASE DE DATOS
#-------------------------------------------------------------------------------------------
#	idCliente	entero, clave primaria, autoincremental
#	propietaria	cadena de 30 caracteres
#	balance		entero
#*******************************************************************************************

#lock tables Cuentas write;
create table Cuentas(
idCliente 				int 			primary key 	auto_increment,
propietaria				varchar(30),
balance					integer
);

#*******************************************************************************************
#	INICIAMOS LAS CUENTAS CON 1000 €
#-------------------------------------------------------------------------------------------
#	Fulgencia, Pancracia y Guillermina con un balance inicial de 1000€
#*******************************************************************************************
start transaction;
insert into Cuentas (propietaria,balance) values 	('Fulgencia',1000),
													('Pancracia',1000),
													('Guillermina',1000);
#unlock tables;
commit;
#rollback;
#*******************************************************************************************

#	CREAMOS LAS TRES USUARIAS Y LES DAMOS TODOS LOS PERMISOS EN LA BASE DE DATOS CREADA
#*******************************************************************************************


drop user if exists Fulgencia,Pancracia,Guillermina;
create user Fulgencia identified by 'abc' , Pancracia identified by 'abc', Guillermina identified by 'abc';
grant all on BancodeTeis.* to Fulgencia,Pancracia,Guillermina;
flush privileges;

select * from Cuentas;
