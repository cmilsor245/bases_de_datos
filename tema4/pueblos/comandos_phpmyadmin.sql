create database municipios;

use municipios;

/*********************************************/

create table provincias(
	cod_prov int not null unique,
    provincia varchar(45) not null,
    cod_ca int not null,
    comunidad_autonoma varchar(35) not null,
    capital varchar(30) not null,
    primary key(cod_prov)
);

/*********************************************/

-- ej1
select count(*) from municipios where provincia="málaga";

-- ej2
select count(*) from municipios where provincia="cádiz";

-- ej3
select count(*) from municipios where provincia="murcia";

-- ej4
select count(*) from municipios where provincia="pontevedra";

-- ej5
select count(*) from municipios where provincia="la rioja";

-- ej6
select count(*) from municipios where provincia="burgos";

-- ej7
select count(*) from municipios where provincia="teruel";

-- ej8
select count(*) from municipios where provincia="madrid";

-- ej9
select count(*) from municipios where provincia="valencia";

-- ej10
select count(*) from municipios where provincia="albacete";

-- ej11
select nombre_actual from municipios where provincia="málaga" and nombre_actual like "A%";