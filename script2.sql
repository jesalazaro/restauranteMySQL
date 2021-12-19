CREATE SCHEMA libreria;
USE libreria;
CREATE TABLE libro(
	libId 			integer		NOT NULL PRIMARY KEY,
    libNombre		char(50) 	NOT NULL,	
    libPub			smallint	NULL
					);
                    
CREATE TABLE autor(
	autId			integer 		AUTO_INCREMENT 	PRIMARY KEY,
    autApellido		varchar(30)		NOT NULL DEFAULT "",
    autNombre 		varchar(50)		NOT NULL,
    autEmail		char(30)		NULL,
    autPais			ENUM('Argentina', 'Alemania', 'Colombia', 'Italia', 'México', 'España', 'EUA')
					DEFAULT  "Colombia"
					);
                    
CREATE TABLE venta (
	vtaId			integer 		AUTO_INCREMENT PRIMARY KEY,
    vtaFecha		date			NOT NULL,
    libId 			integer			NOT NULL,
    vtaCantidad 	smallint		NOT NULL,
    FOREIGN KEY(libId) REFERENCES libro(libId)
    );

-- inserta un registro en la table libro usando lista de columnas. Asume que la llave primary es autoincremental 
insert into libro (libId, libNombre, libPub) values (200, "El olvido que seremos", 2005);
-- inserta un resgistor en la table libvro. Se inserta la llave
insert into libro values (201, "El renacuajo paseador", 1867);

update libro set libNombre = "renacuajo" where libNombre = "El renacuajo paseador"; 

insert into libro (libId, libNombre, libPub) values (1001, "Cien años de soledad", 1967);
insert into libro (libId, libNombre, libPub) values (1002, "La Vorágine", 1924);
insert into libro (libId, libNombre, libPub) values (1003, "Maria", 1867);

insert into autor (autApellido, autNombre) VALUES ("García Márquez", "Gabriel");
insert into autor (autApellido, autNombre) values ("Isaacs", "Jorge");
insert into autor (autApellido, autNombre, autPais) values ("Alighieri", "Dante", "Italia");
insert into autor (autApellido, autNombre, autEmail) values ("Trueba", "fernando", "salazar_64@live.com");

select * from libro;

update libro set libPub = 3000 where libId = 200;

delete from libro where libId = 200;

delete from libro where libPub < 1990;

delete from libro;

alter table libro add libPrecio double(7,1) default 0;

alter table autor add fechaNto int default 0;
 
alter table autor drop fechaNto;

select * from autor;

select * from libro;

alter table libro add autId integer;

alter table libro add foreign key(autId) references autor(autId);

update libro set autId = 1 where libId = 1001;

select * from libro where concat(libNombre, libPub);

select libPub, libNombre from libro order by libPub;

select count(libNombre) from libro;

select max(libNombre), min(libNombre) from libro;
select min(libNombre) from libro;


select * from libro;

select libNombre as titulo from libro where libId = 1003;

select concat(autNombre, " ", autApellido) as "Nombre Autor" from autor where autPais="colombia";

select * from libro, autor;

select * from autor, libro;

select libNombre, autNombre, autApellido from libro, autor where libro.autId = autor.autId;

select * from libro;

select * from autor;

select * from libro join autor using(autId);

select distinct autPais as "paises" from autor;
