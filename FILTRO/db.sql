create table registro_producto(
	id_registro serial primary key,
	nombre varchar(50) not null,
	categoria varchar(50) not null,
	precio numeric(10, 2) not null,
	stock_disponible smallint not null,
	producto_mas_vendido varchar(70) not null,
	id_proveedor serial not null
);

create table registro_cliente(
	id_cliente serial primary key,
	nombre varchar(50) not null, 
	correo varchar(70) not null, 
	telefono varchar(20) not null
);

create table registro_ventas(
	id_venta serial primary key,
	id_cliente serial not null,
	cantidad smallint not null,
	ingresos numeric(10, 2) not null
);

create table registro_proveedor(
	id_proveedor serial not null,
	nombre varchar(50) not null,
	correo varchar(70) not null,
	telefono varchar(50) not null
);

create table consultas(
	id_consulta serial primary key,
	id_registro serial not null,
	id_cliente serial not null,
	id_venta serial not null
);