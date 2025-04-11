--Un procedimiento almacenado para registrar una venta.
create or replace procedure registrar(
	id_ventas int,
	id_clientes int,
	catidades int,
	Ingresos int
)
language plpgsql as $$
declare 
	venta int;
	cliente int;
	cantidad int;
	ingreso int;
begin
	insert into registro_ventas(id_venta, id_cliente, cantidad, ingresos)
	values(id_ventas, id_clientes, cantidades, Ingresos);
end; 
$$;
call registrar(16, 16, 20, 10);

-- Validar que el cliente exista.
create or replace procedure validar(
	id_c int,
	nombres int,
	correos int, 
	telefonos int
)
language plpgsql as $$
declare 
	cliente int;
	nombre int;
begin 
	select id_cliente, nombre, correo, telefono from registro_cliente;
if not found then
	raise exception 'El cliente % con el id no existe', nombres;
end if;
end;
$$;
call validar();

-- Verificar que el stock sea suficiente antes de procesar la venta.


-- Si no hay stock suficiente, Notificar por medio de un mensaje en consola usando RAISE.
create or replace procedure suficiente(
	id_registros int,
	stock_disponibles int,
	precios int
)
language plpgsql as $$
declare 
	stock int;
	price numeric(10, 2);
begin
	select stock_disponible, precio into stock, price from registro_producto
	where id_registro = id_registros;
	
if not found then
	raise exception 'Producto con el id % no existe', stock_disponible;
end if;

if stock < precio then 
	raise exception 'Stock insuficiente. Disponible: %, solicitado: %', stock, precio;
end if;

insert into registro_producto(id_registro, precio, stock_disponible)
values (id_registros, stock_disponibles, precios);

raise notice 'Venta realizada con exito. Stock restante: %', stock - precio;
end; 
$$;
call suficiente();

-- Si hay stock, se realiza el registro de la venta.
create or replace procedure registro(
	id_registros int,
	stock_disponibles int,
	precios int
)
language plpgsql as $$
declare 
	stock int;
	price numeric(10, 2);
begin
	select stock_disponible, precio into stock, price from registro_producto
	where id_registro = id_registros;
	
if not found then
	raise exception 'Producto con el id % no existe', stock_disponible;
end if;

if stock < precio then 
	raise exception 'Stock insuficiente. Disponible: %, solicitado: %', stock, precio;
end if;

insert into registro_producto(id_registro, precio, stock_disponible)
values (id_registros, stock_disponibles, precios);

update registro_producto set stock_disponible  = stock_disponible - precios 
where id_registro = precios;

raise notice 'Venta realizada con exito. Stock restante: %', stock - precio;
end; 
$$;