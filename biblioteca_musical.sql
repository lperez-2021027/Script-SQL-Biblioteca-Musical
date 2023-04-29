drop database if exists biblioteca_musical;
create database biblioteca_musical;
use biblioteca_musical;

create table usuario( 
id_usuario integer not null,
nombre varchar(50),
apellido varchar(50),
clave varchar(50),
pais varchar(50),
fecha_nacimiento date,
primary key(id_usuario));

create table genero( 
id_genero integer not null,
tipo_genero varchar(50), 
primary key(id_genero));

create table artista( 
id_artista integer not null,
nombre varchar(50),
primary key(id_artista));
 
create table album( 
id_album integer not null,
nombre varchar(50),
duracion float,
id_artista integer,
primary key(id_album),
foreign key(id_artista) references artista(id_artista));

create table sencillo( 
id_sencillo integer not null,
nombre varchar(50),
duracion float,
id_album integer,
id_genero integer,
primary key(id_sencillo),
foreign key(id_genero) references genero(id_genero),
foreign key(id_album) references album(id_album));

create table lista_reproduccion( 
id_lista_reproduccion integer not null auto_increment,
veces_reproducida integer,
nombre_lista varchar(25),
id_usuario integer,
id_sencillo integer,
primary key(id_lista_reproduccion),
foreign key(id_usuario) references usuario(id_usuario),
foreign key(id_sencillo) references sencillo(id_sencillo));

create table sencillo_favorito( 
id_sencillo_favorito integer not null auto_increment,
id_usuario integer,
id_sencillo integer,
primary key(id_sencillo_favorito),
foreign key(id_usuario) references usuario(id_usuario),
foreign key(id_sencillo) references sencillo(id_sencillo));

create table album_favorito( 
id_album_favorito integer not null auto_increment,
id_usuario integer,
id_album integer,
primary key(id_album_favorito),
foreign key(id_usuario) references usuario(id_usuario),
foreign key(id_album) references album(id_album));

insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(1,'Raul','Alvarez','clave1','Argentina','1998/08/15');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(2,'Josue','Salazar','clave2','Argentina','1986/01/05');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(3,'Jose','Fernandez','clave3','Mexico','2005/12/14');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(4,'Maria','Castillo','clave4','Panama','1996/06/29');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(5,'Esteban','Ramirez','clave5','Brazil','2007/02/21');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(6,'Juan','Garcia','clave6','Guatemala','1992/04/11');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(7,'Sofia','Martinez','clave7','España','1964/10/03');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(8,'Adriana','Diaz','clave8','Colombia','1979/07/30');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(9,'Rene','Arriola','clave9','Canada','1968/09/22');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(10,'Pablo','Mendez','clave10','Portugal','2004/03/01');

insert into genero(id_genero,tipo_genero)
values(1,'Blues');
insert into genero(id_genero,tipo_genero)
values(2,'Jazz');
insert into genero(id_genero,tipo_genero)
values(3,'Rock and Roll');
insert into genero(id_genero,tipo_genero)
values(4,'Disco');
insert into genero(id_genero,tipo_genero)
values(5,'Country');

insert into artista(id_artista,nombre)
values(1,'Love');
insert into artista(id_artista,nombre)
values(2,'The Rolling Stones');
insert into artista(id_artista,nombre)
values(3,'The Beach Boys');
insert into artista(id_artista,nombre)
values(4,'Ramones');
insert into artista(id_artista,nombre)
values(5,'Patti Smith');

insert into album(id_album,nombre,duracion,id_artista)
values(1,'Forever Changes','5.54',1);
insert into album(id_album,nombre,duracion,id_artista)
values(2,'Exile On Main','7.59',2);
insert into album(id_album,nombre,duracion,id_artista)
values(3,'Pet Sounds','10.35',3);
insert into album(id_album,nombre,duracion,id_artista)
values(4,'Ramones','4.25',4);
insert into album(id_album,nombre,duracion,id_artista)
values(5,'Horses','6.15',5);

insert into sencillo(id_sencillo,nombre,duracion,id_album)
values(1,'Old Man','2.10',1);
insert into sencillo(id_sencillo,nombre,duracion,id_album)
values(2,'You Set The Scene','2.55',1);
insert into sencillo(id_sencillo,nombre,duracion,id_album)
values(3,'Rocks Off','2.14',2);
insert into sencillo(id_sencillo,nombre,duracion,id_album)
values(4,'Happy','1.59',2);
insert into sencillo(id_sencillo,nombre,duracion,id_album)
values(5,'Thats Not Me','2.45',3);
insert into sencillo(id_sencillo,nombre,duracion,id_album)
values(6,'God only knows','3.15',3);
insert into sencillo(id_sencillo,nombre,duracion,id_album)
values(7,'Blitzkrieg Bop','2.36',4);
insert into sencillo(id_sencillo,nombre,duracion,id_album)
values(8,'Pet Sematary','2.45',4);
insert into sencillo(id_sencillo,nombre,duracion,id_album)
values(9,'Redondo Beach','2.43',5);
insert into sencillo(id_sencillo,nombre,duracion,id_album)
values(10,'Break It Up','1.42',5);

insert into sencillo_favorito(id_usuario,id_sencillo)
values(1,1);
insert into sencillo_favorito(id_usuario,id_sencillo)
values(1,3);
insert into sencillo_favorito(id_usuario,id_sencillo)
values(2,3);
insert into sencillo_favorito(id_usuario,id_sencillo)
values(2,4);
insert into sencillo_favorito(id_usuario,id_sencillo)
values(3,1);
insert into sencillo_favorito(id_usuario,id_sencillo)
values(3,4);
insert into sencillo_favorito(id_usuario,id_sencillo)
values(4,5);
insert into sencillo_favorito(id_usuario,id_sencillo)
values(4,2);
insert into sencillo_favorito(id_usuario,id_sencillo)
values(5,2);
insert into sencillo_favorito(id_usuario,id_sencillo)
values(5,5);

insert into album_favorito(id_usuario,id_album)
values(1,1);
insert into album_favorito(id_usuario,id_album)
values(1,4);
insert into album_favorito(id_usuario,id_album)
values(2,3);
insert into album_favorito(id_usuario,id_album)
values(2,5);
insert into album_favorito(id_usuario,id_album)
values(3,1);
insert into album_favorito(id_usuario,id_album)
values(3,2);
insert into album_favorito(id_usuario,id_album)
values(4,5);
insert into album_favorito(id_usuario,id_album)
values(4,2);
insert into album_favorito(id_usuario,id_album)
values(5,4);
insert into album_favorito(id_usuario,id_album)
values(5,3);

insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(1,1,'15',1);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(2,1,'25',5);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(3,2,'22',3);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(4,2,'42',2);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(5,3,'34',9);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(6,3,'45',4);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(7,4,'63',10);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,nombre_lista,id_sencillo)
values(8,4,'34',"Lo-fi",4);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,nombre_lista,id_sencillo)
values(9,5,'64',"Lo-fi",6);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,nombre_lista,id_sencillo)
values(10,5,'85',"Lo-fi",8);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(11,6,'31',7);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(12,6,'61',6);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(13,7,'46',3);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(14,7,'51',4);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(15,8,'21',10);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(16,8,'75',9);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(17,9,'28',8);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(18,9,'83',2);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(19,10,'39',1);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(20,10,'58',5);