# ----------------------------------------------------------------------------------------------------------
#	En la Base de Datos ConcellosGalicia haz, al menos, una transacción para agregar datos con, al menos,
# 	tres puntos de restauración.
#	Provoca que haya un error tras el primer punto de restauración y otro tras el último punto de restauración.
#	
#	Ejecuta el código de creación de tablas y agregación de datos, habrá un error en algún punto tras el primer
#	punto de restauración: restaura desde ese punto, muestra los datos y copia los INSERT que consideres.
#
#	Ejecuta nuevamente las líneas que has incorporado y el sistema volverá a fallar tras el tercer punto de restauración
#	haz nuevamente un proceso similar al paso anterior.
#
#	Ahora haz este mismo ejercicio empleando bloqueo de tablas: procura bloquear las cuatro tablas. ¿ Cuál te parece más sencillo?
# ----------------------------------------------------------------------------------------------------------
#	Escribe a continuación el código que emplearías: sólo las tablas Provincias, Comarcas y Concello
#*******************************************************************************************
#	CREACIÓN DE LA BASE DE DATOS ConcellosGalicia_Existencia


#*******************************************************************************************
	drop database if exists ConcellosGalicia;
	create database 		ConcellosGalicia
							collate	ucs2_spanish2_ci;
	use 					ConcellosGalicia;
#*******************************************************************************************
#	CREACIÓN DE LAS TABLAS DE LA BASE DE DATOS
#*******************************************************************************************
#	CREACIÓN DE LA TABLA ProvinciasGalicia
#*******************************************************************************************
  create table ProvinciasGalicia (
	Provincia		int							AUTO_INCREMENT,
    nombre 			varchar(20),
    Constraint		PK_Provincia				Primary Key( Provincia ),
    Constraint		Nombre_Provincia_NO_NULO		check( nombre IS NOT NULL ),
    Constraint		Nombre_Provincia_NO_VACÍO		check( nombre != '' ),
    Constraint		Nombre_Provincia_ERRÓNEO		check( nombre IN ("A Coruña", "Lugo", "Ourense", "Pontevedra") )
);

#*******************************************************************************************
#	CREACIÓN DE LA TABLA ComarcasGalicia
#*******************************************************************************************
  create table ComarcasGalicia (
	Comarca		int							AUTO_INCREMENT,
    nombre			varchar( 30 ),
    Provincia		int,
    Constraint		PK_Comarca					Primary Key( Comarca ),
    Constraint		FK_Comarca_Provincia		Foreign Key( Provincia )	REFERENCES	ProvinciasGalicia( Provincia )
					
                    ON UPDATE CASCADE,
    Constraint		Nombre_Comarca_NO_NULO			check( nombre 		IS NOT NULL ),

    Constraint		Nombre_Comarca_NO_VACÍO			check( nombre 		!= '' )
    
);

#*******************************************************************************************
#	CREACIÓN DE LA TABLA ConcellosGalicia
#*******************************************************************************************
  create table ConcellosGalicia (
	Concello		int							AUTO_INCREMENT,
    nombre			varchar( 30 ),
    superficie		float,
    Comarca		int,
    Constraint		PK_Concello					Primary Key( Concello ),
    Constraint		FK_Concello_Comarca			Foreign Key( Comarca )	REFERENCES	ComarcasGalicia( Comarca )
					
                    ON UPDATE CASCADE,
    Constraint		Nombre_Concello_NO_NULO			check( nombre 		IS NOT NULL ),
    Constraint		Superficie_Concello_NO_NULO		check( superficie 	IS NOT NULL ),
  
    Constraint		Nombre_Concello_NO_VACÍO		check( nombre 		!= '' ),
    Constraint		Superficie_Concello_NO_VACÍO	check( superficie 	!= '' )
    
);

#*******************************************************************************************
#*******************************************************************************************
#	CREACIÓN DE LA TABLA PoblacionGalicia
#*******************************************************************************************
  create table PoblacionGalicia (
	Poblacion		int							AUTO_INCREMENT,
    año				int,
    Concello		int,
    mujeres			int,
    hombres			int,
    Constraint		PK_Poblacion				Primary Key( Poblacion ),
    Constraint		FK_Poblacion_Concello		Foreign Key( Concello )	REFERENCES	ConcellosGalicia( Concello ),
    Constraint		Concello_NO_NULO				check( Concello	IS NOT NULL ),
    Constraint		mujeres_NO_NULO					check( mujeres		IS NOT NULL ),
    Constraint		hombres_NO_NULO					check( hombres		IS NOT NULL ),
    Constraint		Concello_NO_VACÍO				check( Concello		!= '' ),
    Constraint		mujeres_NO_VACÍO				check( mujeres		!= '' ),
    Constraint		hombres_NO_VACÍO				check( hombres		!= '' ),
    Constraint		mujeres_NÚMERO_ERRÓNEO			check( mujeres		> 0 ),
    Constraint		hombres_NÚMERO_ERRÓNEO			check( hombres		> 0 )
);

#*******************************************************************************************
#*******************************************************************************************
#	DATOS DE LAS PROVINCIAS - AGREGAR POR EXISTENCIA
#*******************************************************************************************
    INSERT INTO ProvinciasGalicia
		VALUES	( 10, 'A Coruña' ),
				( 11, 'Lugo' ),
				( 12, 'Ourense' ),
				( 13, 'Pontevedra' );    
#*******************************************************************************************
#	DATOS DE LAS ComarcasGalicia
#*******************************************************************************************


		
select * from comarcasgalicia;
START TRANSACTION;
SAVEPOINT	INICIO;
  INSERT INTO	ComarcasGalicia
		VALUES 	( 100, 'Arzúa', 10 ),
				( 101, 'Barbanza', 10 ),
				( 102, 'A Barcala', 10 ),
                ( 103, 'Bergantiños', 10 ),
                ( 104, 'Betanzos', 10 ),
                ( 105, 'A Coruña', 10 ),
                ( 106, 'Eume', 10 ),
                ( 107, 'Ferrol', 10 ),
                ( 108, 'Fisterra', 10 ),
                ( 109, 'Muros', 10 ),
                ( 110, 'Noia', 10 ),
                ( 111, 'Ordes', 10 ),
                ( 112, 'Ortegal', 10 ),
                ( 113, 'Santiago', 10 ),
                ( 114, 'O Sar', 10 ),
                ( 115, 'Terra de Melide', 10 );

              
	savepoint p1;
      INSERT INTO	ComarcasGalicia
		values( 116, '', 11 ),
                ( 117, 'Xallas', 10 ),
                ( 118, 'Os Ancares', 11 ),
                ( 119, 'Chantada', 11 ),
                ( 120, 'A Fonsagrada', 11 ),
                ( 121, 'Lugo', 11 ),
                ( 122, 'A Mariña Central', 11 ),
                ( 123, 'A Mariña Occidental', 11 ),
                ( 124, 'A Mariña Oriental', 11 ),
                ( 125, 'Meira', 11 ),
                ( 126, 'Quiroga', 11 ),
                ( 127, 'Sarria', 11 ),
                ( 128, 'Terra Chá', 11 ),
                ( 129, 'Terra de Lemos', 11 ),
                ( 130, 'A Ulloa', 11 );
savepoint p2;
		INSERT INTO	ComarcasGalicia             
		  values( 131, 'Allariz-Maceda', 12 ),
                ( 132, 'Baixa Limia', 12 ),
                ( 133, 'O Carballiño', 12 ),
                ( 134, 'A Limia', 12 ),
                ( 135, 'Ourense', 12 ),
                ( 136, 'O Ribadeo', 12 ),
                ( 137, 'Terra de Caldelas', 12 ),
                ( 138, 'Terra de Celanova', 12 ),
                ( 139, 'Terra de Trives', 12 ),
                ( 140, 'Valdeorras', 12 ),
                ( 141, 'Verín', 12 );
savepoint P3;
		insert into ComarcasGalicia
		values ( 142, 'Viana', 12 ),
                ( 143, 'O Baixo Miño', 13 ),
                ( 144, 'Caldas', 13 ),
                ( 145, 'O Condado', 13 ),
                ( 146, 'Deza', 13 ),
                ( 147, 'O Morrazo', 13 ),
                ( 148, 'A Paradanta', 13 ),
                ( 149, 'Pontevedra', 13 ),
                ( 150, 'O Salnés', 13 ),
                ( 151, 'Tabeirós-Terra de Montes', 13 ),
                ( 152, 'Vigo', 13 );
  commit;
#*******************************************************************************************
    -- DESPUÉS DEL ERROR
		select * from comarcasgalicia;
        ROLLBACK TO p1;
 #*******************************************************************************************       
     -- Continuamos con la inserccion de datos 
           INSERT INTO	ComarcasGalicia
		values( 116, 'Terra de Soneira', 11 ),
                ( 117, 'Xallas', 10 ),
                ( 118, 'Os Ancares', 11 ),
                ( 119, 'Chantada', 11 ),
                ( 120, 'A Fonsagrada', 11 ),
                ( 121, 'Lugo', 11 ),
                ( 122, 'A Mariña Central', 11 ),
                ( 123, 'A Mariña Occidental', 11 ),
                ( 124, 'A Mariña Oriental', 11 ),
                ( 125, 'Meira', 11 ),
                ( 126, 'Quiroga', 11 ),
                ( 127, 'Sarria', 11 ),
                ( 128, 'Terra Chá', 11 ),
                ( 129, 'Terra de Lemos', 11 ),
                ( 130, 'A Ulloa', 11 );
savepoint p2;
		INSERT INTO	ComarcasGalicia             
		  values( 131, '', 12 ),
                ( 132, 'Baixa Limia', 12 ),
                ( 133, 'O Carballiño', 12 ),
                ( 134, 'A Limia', 12 ),
                ( 135, 'Ourense', 12 ),
                ( 136, 'O Ribadeo', 12 ),
                ( 137, 'Terra de Caldelas', 12 ),
                ( 138, 'Terra de Celanova', 12 ),
                ( 139, 'Terra de Trives', 12 ),
                ( 140, 'Valdeorras', 12 ),
                ( 141, 'Verín', 12 );
savepoint P3;
		insert into ComarcasGalicia
		values 	(142, 'Viana', 12 ),
                ( 143, 'O Baixo Miño', 13 ),
                ( 144, 'Caldas', 13 ),
                ( 145, 'O Condado', 13 ),
                ( 146, 'Deza', 13 ),
                ( 147, 'O Morrazo', 13 ),
                ( 148, 'A Paradanta', 13 ),
                ( 149, 'Pontevedra', 13 ),
                ( 150, 'O Salnés', 13 ),
                ( 151, 'Tabeirós-Terra de Montes', 13 ),
                ( 152, 'Vigo', 13 );
  commit;
  #*******************************************************************************************
    -- DESPUÉS DEL ERROR 
		select * from comarcasgalicia;
        ROLLBACK TO p2;
 #******************************************************************************************* 
 		INSERT INTO	ComarcasGalicia             
		  values( 131, 'Allariz-Maceda', 12 ),
                ( 132, 'Baixa Limia', 12 ),
                ( 133, 'O Carballiño', 12 ),
                ( 134, 'A Limia', 12 ),
                ( 135, 'Ourense', 12 ),
                ( 136, 'O Ribadeo', 12 ),
                ( 137, 'Terra de Caldelas', 12 ),
                ( 138, 'Terra de Celanova', 12 ),
                ( 139, 'Terra de Trives', 12 ),
                ( 140, 'Valdeorras', 12 ),
                ( 141, 'Verín', 12 );
savepoint P3;
		insert into ComarcasGalicia
		values ( 142, 'Viana', 12 ),
                ( 143, 'O Baixo Miño', 13 ),
                ( 144, 'Caldas', 13 ),
                ( 145, 'O Condado', 13 ),
                ( 146, 'Deza', 13 ),
                ( 147, 'O Morrazo', 13 ),
                ( 148, 'A Paradanta', 13 ),
                ( 149, 'Pontevedra', 13 ),
                ( 150, 'O Salnés', 13 ),
                ( 151, 'Tabeirós-Terra de Montes', 13 ),
                ( 152, 'Vigo', 13 );
  commit;
  select * from ComarcasGalicia; 