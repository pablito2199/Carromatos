drop table productos;

create table productos (
    nombre varchar(100) NOT NULL,
    imagen varchar(100) NOT NULL,
    stock int NOT NULL,
    precio decimal,
    primary key (nombre)
);

insert into productos(nombre, imagen, stock, precio)
values
('Miniatura Ferrari 1:43', './Images/Productos/miniaturaferrari.jpg', 25, 21.99),
('Miniatura F1 1:43', './Images/Productos/miniaturaf1.jpg', 25, 21.99),
('Gorra Pirelli', './Images/Productos/gorra.jpg', 20, 18.50),
('Llavero BMW', './Images/Productos/llavero.jpg', 55, 4.50),
('Senna Pelicula', './Images/Productos/pelicula.jpg', 10, 19.99),
('Camiseta Audi', './Images/Productos/camiseta.jpg', 35, 30.00),
('Mini Casco Alonso 1:2', './Images/Productos/minicasco.jpg', 10, 115.00),
('Pin Casco', './Images/Productos/pincasco.jpg', 50, 2.50);