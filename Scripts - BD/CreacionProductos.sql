create table productos (
    nombre varchar(100) NOT NULL,
    imagen varchar(100) NOT NULL,
    stock int NOT NULL,
    precio decimal,
    primary key (nombre)
);