-- Listar los productos con stock menor a 5 unidades.
select nombre from registro_producto where stock_disponible <= 5;

-- Calcular ventas totales de un mes específico.
select count(ingresos) from registro_ventas;

-- Obtener el cliente con más compras realizadas.
select cl.nombre, r.cantidad from registro_ventas r inner join registro_cliente cl
on cl.id_cliente = r.id_cliente where cl.nombre = 'Luis Henao';

-- Listar los 5 productos más vendidos.
select r.producto_mas_vendido, co.id_registro from registro_producto r 
inner join consultas co on co.id_registro = r.id_registro where r.producto_mas_vendido = 'Tablet';

-- Consultar ventas realizadas en un rango de fechas de tres Días y un Mes.


-- Identificar clientes que no han comprado en los últimos 6 meses.