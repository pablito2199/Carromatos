drop table usuarios;

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

insert into usuarios(correo, contrasena, usuario, nombre, apellido1, apellido2, sexo, nacimiento, telefono)
values
('pablotarriootero@gmail.com', '12345678', 'pablito_tarrio', 'Pablo', 'Tarrío', 'Otero', 'Hombre', '2000-12-27', 698151224),
('nobinario@gmail.com', '21212121', 'alguien21', 'Alguien', 'No', 'Binario', 'No binario', '2000-01-15', 666151224),
('noah@gmail.com', '12341234', 'noah_noah', 'Noah', 'Ap', 'Ap', 'Mujer', '2000-03-07', 698652422);