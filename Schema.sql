DROP TABLE IF EXISTS Pedido;
DROP TABLE IF EXISTS Usuario;
DROP TABLE IF EXISTS Restaurante;
DROP TABLE IF EXISTS Repartidor;
DROP TABLE IF EXISTS Detalle_Pedido;
DROP TABLE IF EXISTS Plato;


PRAGMA foreign_keys = ON;


-- 1. TABLA USUARIO
CREATE TABLE Usuario (
    ID_Usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre TEXT NOT NULL,
    Correo TEXT NOT NULL UNIQUE,
    Telefono TEXT NOT NULL,
    Direccion TEXT NOT NULL,
    Contrasena TEXT NOT NULL
);


-- 2. TABLA RESTAURANTE
CREATE TABLE Restaurante (
    ID_Restaurante INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre TEXT NOT NULL,
    Direccion TEXT NOT NULL,
    Telefono TEXT NOT NULL
);


-- 3. TABLA REPARTIDOR
CREATE TABLE Repartidor (
    ID_Repartidor INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre TEXT NOT NULL,
    Telefono TEXT NOT NULL,
    Estado TEXT NOT NULL DEFAULT 'Disponible'
);


-- 4. TABLA PLATO
CREATE TABLE Plato (
    ID_Plato INTEGER PRIMARY KEY AUTOINCREMENT,
    ID_Restaurante INTEGER NOT NULL,
    Nombre TEXT NOT NULL,
    Descripcion TEXT,
    Precio REAL NOT NULL,
    Disponibilidad INTEGER NOT NULL DEFAULT 1,
    FOREIGN KEY (ID_Restaurante)
        REFERENCES Restaurante(ID_Restaurante)
);


-- 5. TABLA PEDIDO
CREATE TABLE Pedido (
    ID_Pedido INTEGER PRIMARY KEY AUTOINCREMENT,
    ID_Usuario INTEGER NOT NULL,
    ID_Restaurante INTEGER NOT NULL,
    ID_Repartidor INTEGER,
    Total REAL NOT NULL,
    FOREIGN KEY (ID_Usuario)
        REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Restaurante)
        REFERENCES Restaurante(ID_Restaurante),
    FOREIGN KEY (ID_Repartidor)
        REFERENCES Repartidor(ID_Repartidor)
);


-- 6. TABLA DETALLE_PEDIDO
CREATE TABLE Detalle_Pedido (
    ID_Detalle INTEGER PRIMARY KEY AUTOINCREMENT,
    ID_Pedido INTEGER NOT NULL,
    ID_Plato INTEGER NOT NULL,
    Cantidad INTEGER NOT NULL,
    Opciones_JSON TEXT,
    
    FOREIGN KEY (ID_Pedido)
        REFERENCES Pedido(ID_Pedido),
    FOREIGN KEY (ID_Plato)
        REFERENCES Plato(ID_Plato)
);