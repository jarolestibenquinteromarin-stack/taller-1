PRAGMA foreign_keys = ON;
-- ==========================================
-- 1. INSERTAR 12 USUARIOS
-- ==========================================
INSERT INTO usuarios (nombre, email) VALUES ('Ana Gómez', 'ana@email.com');
INSERT INTO usuarios (nombre, email) VALUES ('Carlos Pérez', 'carlos@email.com');
INSERT INTO usuarios (nombre, email) VALUES ('María Rodríguez', 'maria@email.com');
INSERT INTO usuarios (nombre, email) VALUES ('José Martínez', 'jose@email.com');
INSERT INTO usuarios (nombre, email) VALUES ('Lucía Fernández', 'lucia@email.com');
INSERT INTO usuarios (nombre, email) VALUES ('David López', 'david@email.com');
INSERT INTO usuarios (nombre, email) VALUES ('Elena Torres', 'elena@email.com');
INSERT INTO usuarios (nombre, email) VALUES ('Javier Ramírez', 'javier@email.com');
INSERT INTO usuarios (nombre, email) VALUES ('Sofía Morales', 'sofia@email.com');
INSERT INTO usuarios (nombre, email) VALUES ('Alejandro Ruiz', 'alejandro@email.com');
INSERT INTO usuarios (nombre, email) VALUES ('Carmen Herrera', 'carmen@email.com');
INSERT INTO usuarios (nombre, email) VALUES ('Mateo Castro', 'mateo@email.com');

-- ==========================================
-- 2. INSERTAR 12 PLATOS
-- ==========================================
INSERT INTO platos (nombre_plato, precio) VALUES ('Hamburguesa Clásica', 8.50);
INSERT INTO platos (nombre_plato, precio) VALUES ('Pizza Margarita', 10.00);
INSERT INTO platos (nombre_plato, precio) VALUES ('Ensalada César', 7.00);
INSERT INTO platos (nombre_plato, precio) VALUES ('Tacos al Pastor', 9.00);
INSERT INTO platos (nombre_plato, precio) VALUES ('Spaghetti Carbonara', 11.50);
INSERT INTO platos (nombre_plato, precio) VALUES ('Sushi Roll Variado', 14.00);
INSERT INTO platos (nombre_plato, precio) VALUES ('Pollo a la Brasa', 12.00);
INSERT INTO platos (nombre_plato, precio) VALUES ('Lomo Saltado', 13.50);
INSERT INTO platos (nombre_plato, precio) VALUES ('Sopa de Tortilla', 6.50);
INSERT INTO platos (nombre_plato, precio) VALUES ('Burrito de Res', 9.50);
INSERT INTO platos (nombre_plato, precio) VALUES ('Pescado frito con Patatas', 12.50);
INSERT INTO platos (nombre_plato, precio) VALUES ('Lasagna de Carne', 11.00);

-- ==========================================
-- 3. INSERTAR 12 PEDIDOS
-- ==========================================
INSERT INTO pedidos (usuario_id, fecha) VALUES (1, '2026-06-01 12:30:00');
INSERT INTO pedidos (usuario_id, fecha) VALUES (2, '2026-06-01 13:00:00');
INSERT INTO pedidos (usuario_id, fecha) VALUES (3, '2026-06-02 14:15:00');
INSERT INTO pedidos (usuario_id, fecha) VALUES (4, '2026-06-03 19:20:00');
INSERT INTO pedidos (usuario_id, fecha) VALUES (5, '2026-06-03 20:00:00');
INSERT INTO pedidos (usuario_id, fecha) VALUES (6, '2026-06-04 12:45:00');
INSERT INTO pedidos (usuario_id, fecha) VALUES (7, '2026-06-05 15:10:00');
INSERT INTO pedidos (usuario_id, fecha) VALUES (8, '2026-06-06 21:05:00');
INSERT INTO pedidos (usuario_id, fecha) VALUES (9, '2026-06-07 13:30:00');
INSERT INTO pedidos (usuario_id, fecha) VALUES (10, '2026-06-08 18:40:00');
INSERT INTO pedidos (usuario_id, fecha) VALUES (11, '2026-06-09 14:00:00');
INSERT INTO pedidos (usuario_id, fecha) VALUES (12, '2026-06-10 20:15:00');

-- ==========================================
-- 4. INSERTAR 12 DETALLES DE PEDIDO
-- ==========================================
INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad, subtotal) VALUES (1, 1, 2, 17.00);
INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad, subtotal) VALUES (2, 3, 1, 7.00);
INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad, subtotal) VALUES (3, 2, 2, 20.00);
INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad, subtotal) VALUES (4, 5, 1, 11.50);
INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad, subtotal) VALUES (5, 4, 3, 27.00);
INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad, subtotal) VALUES (6, 6, 1, 14.00);
INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad, subtotal) VALUES (7, 8, 2, 27.00);
INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad, subtotal) VALUES (8, 7, 1, 12.00);
INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad, subtotal) VALUES (9, 10, 2, 19.00);
INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad, subtotal) VALUES (10, 9, 1, 6.50);
INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad, subtotal) VALUES (11, 12, 1, 11.00);
INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad, subtotal) VALUES (12, 11, 2, 25.00);

