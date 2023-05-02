#*******************************************************************************************
#	CREACIÓN Y USO DE LA BASE DE DATOS 'BancoTeis'
#*******************************************************************************************
	drop database if exists	BancoTeis;
	create database 		BancoTeis;
	use 					BancoTeis;
#*******************************************************************************************
#	CREACIÓN DE LAS TABLAS DE LA BASE DE DATOS
#-------------------------------------------------------------------------------------------
#	idCliente	entero, clave primaria, autoincremental
#	propietaria	cadena de 30 caracteres
#	balance		entero
#*******************************************************************************************
	create table Cuentas (
		idCliente	integer	auto_increment primary key,
        propietaria	varchar( 30 ),
        balance		integer
    );
#*******************************************************************************************
#	INICIAMOS LAS CUENTAS CON 1000 €
#-------------------------------------------------------------------------------------------
#	Fulgencia, Pancracia y Guillermina con un balance inicial de 1000€
#*******************************************************************************************
	START TRANSACTION;
	#LOCK TABLES Cuentas write; -- Bloqueo de las tablas Cuentas y USER
    
	insert into Cuentas ( propietaria, balance ) values 
		( "Fulgencia", 1000 ),
        ( "Pancracia", 1000 ),
        ( "Guillermina", 1000 );

    #UNLOCK TABLES;
    COMMIT;	-- Confirma los datos introducidos
    #ROLLBACK;	-- Devuelve a la base de datos al estado previo al inicio de la transacción
#*******************************************************************************************
#	CREAMOS LAS TRES USUARIAS Y LES DAMOS TODOS LOS PERMISOS EN LA BASE DE DATOS CREADA
#*******************************************************************************************
	drop user if exists Fulgencia, Pancracia, Guillermina;
    create user Fulgencia identified by 'abc', Pancracia identified by 'abc', Guillermina identified by 'abc';
    grant all on BancoTeis.* TO Fulgencia, Pancracia, Guillermina;
    
    select * from Cuentas;