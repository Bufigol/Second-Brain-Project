CREATE DATABASE second_brain_project;
USE second_brain_project;

-- Tabla Usuarios
CREATE TABLE Usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP NULL
);

-- Tabla Notas
CREATE TABLE Notas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(255) NOT NULL,
    content_type VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Usuarios(id)
);

-- Tabla Proyectos
CREATE TABLE Proyectos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Usuarios(id)
);

-- Tabla Etiquetas
CREATE TABLE Etiquetas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    color VARCHAR(20) NOT NULL
);

-- Tabla Nota_Etiquetas (Tabla pivote)
CREATE TABLE Nota_Etiquetas (
    nota_id INT,
    etiqueta_id INT,
    PRIMARY KEY (nota_id, etiqueta_id),
    FOREIGN KEY (nota_id) REFERENCES Notas(id),
    FOREIGN KEY (etiqueta_id) REFERENCES Etiquetas(id)
);