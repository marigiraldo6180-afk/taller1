INSERT INTO Usuario (ID_Usuario, Nombre, Correo, Telefono, Direccion, Contrasena)
 VALUES 
(1, 'juan perez', 'juanperez@gmail.com', '3104567890', 'Calle 10 # 5-20', 'Juan1234'),
(2, 'maria lopez', 'marialopez@gmail.com', '3205678912', 'Carrera 8 # 12-30', 'Maria1234'),
(3, 'carlos gomez', 'carlosgomez@gmail.com', '3006789123', 'Calle 15 # 7-40', 'Carlos1234'),
(4, 'laura ramirez', 'lauraramirez@gmail.com', '3112345678', 'Carrera 6 # 10-25', 'Laura1234'),
(5, 'andres torres', 'andrestorres@gmail.com', '3156789012', 'Calle 20 # 4-15', 'Andres1234'),
(6, 'sofia castro', 'sofiacastro@gmail.com', '3167890123', 'Carrera 9 # 14-50', 'Sofia1234');


INSERT INTO Restaurante (ID_Restaurante, Nombre, Direccion, Telefono)
VALUES
(1, 'Restaurante El Buen Sabor', 'Calle 8 # 5-20, Manzanares', '3104567890'),
(2, 'Pizzeria Italia', 'Carrera 4 # 10-15, Manzanares', '3205678912'),
(3, 'Comidas Rapidas El Paisa', 'Calle 12 # 6-30, Pensilvania', '3006789123'),
(4, 'Restaurante La Abuela', 'Carrera 6 # 8-25, Manzanares', '3112345678'),
(5, 'Hamburguesas Deliciosas', 'Calle 9 # 7-14, Marquetalia', '3156789012'),
(6, 'Pollos Asados Don Juan', 'Carrera 5 # 11-40, Marquetalia', '3167890123');

INSERT INTO pedido (ID_pedido, ID_Usuario, ID_Restaurante, ID_Repartidor, Total)
VALUES
(1, 1, 3, 1, 25000),
(2, 1, 1, 1, 30000),
(3, 2, 2, 1, 22000);
(4, 2, 2, 2, 28000),
(5, 3, 2, 2, 17000),
(6, 3, 3, 3, 32000),
(7, 4, 3, 2, 27000),
(8, 2, 3, 1, 16000),
(9, 3, 2, 1, 20000),
(10, 4, 5, 4, 23000),
(11, 5, 6; 3; 29000),
(12, 6, 6; 3; 18000);


INSERT INTO Detalle_Pedido (ID_Pedido, ID_Plato, Cantidad, Opciones_JSON)
VALUES
(1, 1, 2, '{"opciones": ["sin cebolla", "extra queso"]}'),
(2, 2, 1, '{"opciones": ["picante"]}'),
(3, 3, 2, '{"opciones": ["sin sal"]}'),
(4, 4, 1, '{"opciones": ["extra salsa"]}'),
(5, 5, 2, '{"opciones": ["sin tomate"]}'),
(6, 6, 3, '{"opciones": ["sin gluten"]}'),
(7, 1, 1, '{"opciones": ["extra queso"]}'),
(8, 2, 2, '{"opciones": ["sin cebolla"]}'),
(9, 3, 1, '{"opciones": ["picante"]}'),
(10, 4, 2, '{"opciones": ["sin sal"]}'),
(11, 5, 1, '{"opciones": ["extra salsa"]}'),
(12, 6, 2, '{"opciones": ["sin tomate"]}');


