insert into registro_producto(id_registro, nombre, categoria, precio, stock_disponible, producto_mas_vendido, id_proveedor)
values (1, 'Yessica Perez', 'Categoria b', 12.00, 10, 'Celular', 1),
(2, 'Alejandra Machuca', 'Categoria c', 13.00, 11, 'Tablet', 2),
(3, 'Camilo Vega', 'Categoria a', 10.00, 5, 'laptops', 3),
(4, 'Valentina Molina', 'Categoria b', 90.00, 9, 'Base portatil', 4),
(5, 'Valery Lazo', 'Categoria a', 60.00, 8, 'Audifonos inalambricos', 5),
(6, 'Zully Ortiz', 'Categoria c', 45.00, 7, 'Samsung', 6),
(7, 'Franco Guerrero', 'Categoria b', 35.00, 5, 'Huawei', 7),
(8, 'Maria Lizarazo', 'Categoria a',  55.00, 12, 'Mouse', 8),
(9, 'Luis Caicedo', 'Categoria c', 35.00, 13, 'Audifonos', 9),
insert into registro_producto(id_registro, nombre, categoria, precio, stock_disponible, producto_mas_vendido, id_proveedor)
values (10, 'leidy Molina', 'Categoria a', 32.00, 12, 'Audifonos inalambricos', 10),
(11, 'Dario Perez', 'Categoria b', 32.00, 11, 'Mouse', 11),
(12, 'Karla Parada', 'Categoria c', 65.00, 2, 'laptops', 12),
(13, 'Zenaida Perez', 'Categoria a', 56.00, 6, 'Base portatil', 13),
(14, 'Wilmer Parada', 'Categoria b', 25.00, 17, 'Samsung', 14),
(15, 'Rosa Ramos', 'Categoria b', 22.00, 8, 'Tablet', 15);

insert into registro_cliente(id_cliente, nombre, correo, telefono) 
values (1, 'Yessica Perez', 'yessica@gmail.com', '3132548965'),
(2, 'Alejandra Machuca', 'alejandra@gmail.com', '3124596874'),
(3, 'Camilo Vega', 'camilo@gmail.com', '3112548965'),
(4, 'Valentina Molina', 'valentina@gmail.com', '3145216875'),
(5, 'Valery Lazo', 'valery@gmail.com', '3102548965'),
(6, 'Franco Guerrero', 'franco@gmail.com', '3145210269'),
(7, 'Maria Lizarazo', 'maria@gmail.com', '312012548'),
(8, 'Luis Caicedo', 'luis@gmail.com', '315210125'),
(9, 'Luis Henao', 'luisH@gmail.com', '3120254852');
insert into registro_cliente(id_cliente, nombre, correo, telefono) 
values(10, 'leidy Molina', 'leidy@gmail.com', '3102548965'),
(11, 'Dario Perez', 'dario@gmail.com', '3154203698'),
(12, 'Karla Parada', 'karla@gmail.com', '3142025486'),
(13, 'Zenaida Perez', 'zenaida@gmail.com', '3205489654'),
(14, 'Wilmer Parada', 'wilmer@gmail.com', '3148975203'),
(15, 'Rosa Ramos', 'rosa@gmail.com', '3152014896');

insert into registro_ventas(id_venta, id_cliente, cantidad, ingresos) 
values (1, 1, 10, 12.00),
(2, 2, 11, 15.00),
(3, 3, 5, 20.00),
(4, 4, 15, 25.00),
(5, 5, 20, 45.00),
(6, 6, 7, 75.00),
(7, 7, 3, 30.00),
(8, 8, 10, 90.00),
(9, 9, 17, 29.00);
insert into registro_ventas(id_venta, id_cliente, cantidad, ingresos) 
values (10, 11, 20, 12.00),
(11, 12, 3, 31.00),
(12, 13, 5, 32.00),
(13, 14, 8, 28.00),
(14, 15, 21, 11.00),
(115, 9, 54, 85.00);

insert into registro_proveedor(id_proveedor, nombre, correo, telefono)
values (1, 'Yessica Machuca', 'yessicaM@gmail.com', '310245875'),
(2, 'Alejandra Molina', 'alejandraMo@gmail.com', '312025478'),
(3, 'Camilo Machuca', 'camiloMa@gmail.com', '3132025485'),
(4, 'Valentina Bargas', 'valentinaB@gmail.com', '3152012369'),
(5, 'Valery Gomez', 'valeryG@gmail.com', '3145210875'),
(6, 'Franco Acero', 'francoA@gmail.com', '3115204879'),
(7, 'Maria Guzman', 'mariaGu@gmail.com', '3158796452'),
(8, 'Luis Bermon', 'luisBe@gmail.com', '3102598745'),
(9, 'Luis Vargas', 'luisV@gmail.com', '3102654789');
insert into registro_proveedor(id_proveedor, nombre, correo, telefono)
values (10, 'leidy Madrigal', 'leidyM@gmail.com', '3105489652'),
(11, 'Dario Bernal', 'darioB@gmail.com', '3155201478'),
(12, 'Karla Perez', 'karlaP@gmail.com', '3149874562'),
(13, 'Zenaida Ramos', 'zenaidaR@gmail.com', '3203012547'),
(14, 'Wilmer Castrillon', 'wilmerC@gmail.com', '3146541025'),
(15, 'Rosa Bernal', 'rosaB@gmail.com', '3159785410');

insert into consultas(id_consulta, id_registro, id_cliente, id_venta)
values (1, 2, 3, 4),
(2, 3, 4, 5),
(3, 6, 7, 8),
(4, 9, 1, 2),
(5, 5, 3, 4),
(6, 7, 4, 2),
(7, 2, 1, 3),
(8, 7, 9, 2),
(9, 5, 3, 1);
insert into consultas(id_consulta, id_registro, id_cliente, id_venta)
values (10, 5, 4, 3),
(11, 15, 12, 8),
(12, 4, 14, 1),
(13, 8, 7, 6),
(14, 9, 10, 6),
(15, 12, 11, 10);