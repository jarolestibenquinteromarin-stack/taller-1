-- 1. Creación de las Tablas
CREATE TABLE usuario (
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    telefono TEXT,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE plato (
    id_plato INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    descripcion TEXT,
    precio REAL NOT NULL,
    disponible BOOLEAN DEFAULT 1
);

CREATE TABLE pedido (
    id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
    id_usuario INTEGER NOT NULL,
    fecha_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    estado TEXT DEFAULT 'Pendiente',
    total REAL NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE
);

CREATE TABLE detalle_pedido (
    id_detalle INTEGER PRIMARY KEY AUTOINCREMENT,
    id_pedido INTEGER NOT NULL,
    id_plato INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    subtotal REAL NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido) ON DELETE CASCADE,
    FOREIGN KEY (id_plato) REFERENCES plato(id_plato) ON DELETE CASCADE
);

-- 2. Inserción de los Datos de Prueba
INSERT INTO usuario (nombre, email, telefono) VALUES 
('Ana Pérez', 'ana.perez@email.com', '3001234567'),
('Carlos Gómez', 'carlos.gomez@email.com', '3109876543'),
('María Rodríguez', 'maria.rodriguez@email.com', '3205554433');
INSERT INTO plato (nombre, descripcion, precio, disponible) VALUES 
('Hamburguesa Clásica', 'Carne de res, queso cheddar, lechuga y tomate', 15.00, 1),
('Pizza Margarita', 'Salsa de tomate, mozzarella y albahaca', 18.50, 1),
('Ensalada César', 'Lechuga romana, pollo, crutones y aderezo', 12.00, 1),
('Limonada de Coco', 'Bebida a base de limón y crema de coco', 5.00, 1);

INSERT INTO pedido (id_usuario, estado, total) VALUES 
(1, 'Entregado', 20.00),
(2, 'En camino', 18.50),
(3, 'Pendiente', 17.00);

INSERT INTO detalle_pedido (id_pedido, id_plato, cantidad, subtotal) VALUES 
(1, 1, 1, 15.00),
(1, 4, 1, 5.00),
(2, 2, 1, 18.50),
(3, 3, 1, 12.00),
(3, 4, 1, 5.00);