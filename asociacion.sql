-- Creación da base de datos
drop database if exists asociacion;
create database if not exists asociacion
	character set utf8
	collate utf8_spanish_ci;
-- Activación da base de datos
use asociacion ;
-- Creación e carga de datos da táboa centro.
-- Contén datos dos centros de traballo da empresa 
use asociacion ;

drop table perro;
create table  perro  (
    perro_id  int(11) not null auto_increment,
	perro_nombre  char(30) not null,
	perro_nacimiento  date default null comment 'El año se usará para calcular la edad (progresiva)',
	perro_estado  enum('agallas','perrera','residencia','acogida','adoptado') default null,
	primary key (perro_id),
    key  perro_nombre (perro_nombre)
) engine=myisam ;




-- -------------------------------------------------INSERTS ---------------------------------------------------------- -- 

insert into perro  
	values (1,'Rio','2018-01-01','agallas'),(2,'Foxy','2012-01-01','agallas'),
    (3,'Hendrix','2005-01-01','acogida'),(4,'Moncho','2009-01-01','adoptado');
    
    
    -- ---------------------------------------------CONSULTAS-------------------------------------------------------- --
    -- Select sencillo tabla perro completa
    select * from perro;
    select perro_id as ID, perro_nombre as Nombre, YEAR(CURDATE())-YEAR(perro_nacimiento) as Edad, perro_Estado as Estado from perro;