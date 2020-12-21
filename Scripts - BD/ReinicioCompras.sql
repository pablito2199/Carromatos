drop table compras;

create table compras (
    correo varchar(100) NOT NULL,
    compra varchar(800) NOT NULL,
    importe decimal NOT NULL
);

insert into compras(correo, compra, importe)
values
('pablotarriootero@gmail.com', ' 2 x Miniatura Ferrari 1:43', 43.98),
('noah@gmail.com', '2 x Llavero BMW + 1 x Mini Casco Alonso 1:2', 115);