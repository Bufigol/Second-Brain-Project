-- Creación de la base de datos
DROP DATABASE IF EXISTS second_brain_project;
CREATE DATABASE second_brain_project;

\c second_brain_project;

-- Eliminación de tablas existentes en orden inverso a las dependencias
DROP TABLE IF EXISTS Nota_Etiquetas;
DROP TABLE IF EXISTS Notas;
DROP TABLE IF EXISTS Proyectos;
DROP TABLE IF EXISTS Etiquetas;
DROP TABLE IF EXISTS Usuarios;

-- Eliminación del trigger y la función si existen
DROP TRIGGER IF EXISTS update_notas_updated_at ON Notas;
DROP FUNCTION IF EXISTS update_updated_at();

-- Tabla Usuarios (combinando campos de users y usuarios)
CREATE TABLE Usuarios (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP NULL
);

-- Tabla Notas
CREATE TABLE Notas (
    id SERIAL PRIMARY KEY,
    user_id INT,
    title VARCHAR(255) NOT NULL,
    content_type VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Usuarios(id)
);

-- Tabla Proyectos
CREATE TABLE Proyectos (
    id SERIAL PRIMARY KEY,
    user_id INT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Usuarios(id)
);

-- Tabla Etiquetas
CREATE TABLE Etiquetas (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    color VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tabla Nota_Etiquetas (Tabla pivote)
CREATE TABLE Nota_Etiquetas (
    nota_id INT,
    etiqueta_id INT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (nota_id, etiqueta_id),
    FOREIGN KEY (nota_id) REFERENCES Notas(id),
    FOREIGN KEY (etiqueta_id) REFERENCES Etiquetas(id)
);

-- Función para actualizar el updated_at
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Triggers para actualizar updated_at en todas las tablas que lo necesiten
CREATE TRIGGER update_usuarios_updated_at
    BEFORE UPDATE ON Usuarios
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_notas_updated_at
    BEFORE UPDATE ON Notas
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_proyectos_updated_at
    BEFORE UPDATE ON Proyectos
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_etiquetas_updated_at
    BEFORE UPDATE ON Etiquetas
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at();
