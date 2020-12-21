create table usuarios (
    correo varchar(100) NOT NULL,
    contrasena varchar(30) NOT NULL,
    usuario varchar(20) NOT NULL,
    nombre varchar(20) NOT NULL,
    apellido1 varchar(30) NOT NULL,
    apellido2 varchar(30) NOT NULL,
    sexo varchar(15) NOT NULL,
    nacimiento date NOT NULL,
    telefono int,
    primary key (correo)
);