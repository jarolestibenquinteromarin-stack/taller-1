-- ==========================================
-- 1. CONSULTAR HISTORIAL DE PEDIDOS DE UN USUARIO
-- ==========================================
-- Muestra todos los pedidos realizados por un cliente específico buscando por su email.
SELECT 
    p.id_pedido, 
    p.fecha_pedido, 
    p.estado, 
    p.total
FROM pedido p
JOIN usuario u ON p.id_usuario = u.id_usuario
WHERE u.email = 'correo@ejemplo.com'
ORDER BY p.fecha_pedido DESC;


-- ==========================================
-- 2. VER EL DETALLE COMPLETO DE UN PEDIDO (Factura / Ticket)
-- ==========================================
-- Muestra qué platos compró un cliente en un pedido específico, con cantidades y subtotales.
SELECT 
    p.id_pedido,
    u.nombre AS cliente,
    pl.nombre AS plato,
    dp.cantidad,
    pl.precio AS precio_unitario,
    dp.subtotal,
    p.fecha_pedido
FROM pedido p
JOIN usuario u ON p.id_usuario = u.id_usuario
JOIN detalle_pedido dp ON p.id_pedido = dp.id_pedido
JOIN plato pl ON dp.id_plato = pl.id_plato
WHERE p.id_pedido = 1; -- Cambia el número 1 por el ID del pedido que quieras consultar


-- ==========================================
-- 3. RANKING DE LOS PLATOS MÁS VENDIDOS
-- ==========================================
-- Agrupa los platos para saber cuáles son los favoritos de los clientes y cuánto dinero han generado.
SELECT 
    pl.nombre AS plato,
    SUM(dp.cantidad) AS total_unidades_vendidas,
    SUM(dp.subtotal) AS ingresos_totales
FROM detalle_pedido dp
JOIN plato pl ON dp.id_plato = pl.id_plato
GROUP BY pl.id_plato, pl.nombre
ORDER BY total_unidades_vendidas DESC;


-- ==========================================
-- 4. LISTADO GENERAL DE TODOS LOS PEDIDOS REGISTRADOS
-- ==========================================
-- Muestra una vista global de quién hizo el pedido, cuándo lo hizo y su estado actual.
SELECT 
    p.id_pedido,
    u.nombre AS cliente,
    u.telefono,
    p.fecha_pedido,
    p.estado,
    p.total
FROM pedido p
JOIN usuario u ON p.id_usuario = u.id_usuario
ORDER BY p.fecha_pedido DESC;