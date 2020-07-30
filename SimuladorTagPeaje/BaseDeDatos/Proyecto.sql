CREATE DATABASE AVANCE_PROYECTO
GO
USE AVANCE_PROYECTO
GO
CREATE TABLE Vehiculo (
                Firma VARCHAR(20) NOT NULL,
                Placa VARCHAR(6) NOT NULL,
                Tipovehiculo VARCHAR(15) NOT NULL,
                Modelo VARCHAR(20) NOT NULL,
                Marca VARCHAR(10) NOT NULL,
                Color VARCHAR(10) NOT NULL,
                CONSTRAINT Vehiculo_pk PRIMARY KEY (Firma, Placa)
)

CREATE TABLE TagPeaje (
                Firma VARCHAR(20) NOT NULL,
                Placa VARCHAR(6) NOT NULL,
                Region VARCHAR(15) NOT NULL,
                Provincia VARCHAR(20) NOT NULL,
                Casetacobro VARCHAR(5) NOT NULL,
                Tarifas DECIMAL(3,2) NOT NULL,
                Fecha DATETIME NOT NULL,
                Hora DATETIME NOT NULL,
                CONSTRAINT TagPeaje_pk PRIMARY KEY (Firma, Placa)
)

CREATE TABLE Registro_Usuario (
                Id_persona VARCHAR(10) NOT NULL,
                Claveusuario VARCHAR(15) NOT NULL,
                Placa VARCHAR(6) NOT NULL,
                Firma VARCHAR(20) NOT NULL,
                Nombre VARCHAR(15) NOT NULL,
                Apellido VARCHAR(15) NOT NULL,
                Telefono INT,
                Ciudad VARCHAR(15),
                Correousuario VARCHAR(30) NOT NULL,
                Tipousuario VARCHAR(15) NOT NULL,
                CONSTRAINT pk_Registro_Usuario PRIMARY KEY (Id_persona, Claveusuario)
)

CREATE TABLE Administrador (
                Id_persona VARCHAR(10) NOT NULL,
                Claveusuario VARCHAR(15) NOT NULL,
                Nombre VARCHAR(20) NOT NULL,
                Apellido VARCHAR(15) NOT NULL,
                Telefono INT,
                Ciudad VARCHAR(15),
                Direccion VARCHAR(20) NOT NULL,
                Correo_administrador VARCHAR(20) NOT NULL,
                Area VARCHAR(15) NOT NULL,
                Horario VARCHAR(15) NOT NULL,
                CONSTRAINT Administrador_pk PRIMARY KEY (Id_persona, Claveusuario)
)

CREATE TABLE Invitados (
                Id_persona VARCHAR(10) NOT NULL,
                Claveusuario VARCHAR(15) NOT NULL,
                Nombre VARCHAR(20) NOT NULL,
                Correo_invitado VARCHAR(30) NOT NULL,
                CONSTRAINT Invitados_pk PRIMARY KEY (Id_persona, Claveusuario)
)

CREATE TABLE DueñoVehiculo (
                Id_persona VARCHAR(10) NOT NULL,
                Firma VARCHAR(20) NOT NULL,
                Placa VARCHAR(6) NOT NULL,
                Claveusuario VARCHAR(15) NOT NULL,
                Cedula INT NOT NULL,
                Nombre VARCHAR(20) NOT NULL,
                Tipo_vehiculo VARCHAR(20) NOT NULL,
                Direccion VARCHAR(20) NOT NULL,
                Telefono INT,
                Correo_D_vehiculo VARCHAR(20) NOT NULL,
                CONSTRAINT Due_oVehiculo_pk PRIMARY KEY (Id_persona, Firma, Placa, Claveusuario)
)

ALTER TABLE DueñoVehiculo ADD CONSTRAINT Vehiculo_Due_oVehiculo_fk
FOREIGN KEY (Firma, Placa)
REFERENCES Vehiculo (Firma, Placa)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE TagPeaje ADD CONSTRAINT Vehiculo_TagPeaje_fk
FOREIGN KEY (Firma, Placa)
REFERENCES Vehiculo (Firma, Placa)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Registro_Usuario ADD CONSTRAINT TagPeaje_Persona_fk
FOREIGN KEY (Firma, Placa)
REFERENCES TagPeaje (Firma, Placa)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE DueñoVehiculo ADD CONSTRAINT Persona_Due_oVehiculo_fk
FOREIGN KEY (Id_persona, Claveusuario)
REFERENCES Registro_Usuario (Id_persona, Claveusuario)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Invitados ADD CONSTRAINT Persona_Invitados_fk
FOREIGN KEY (Id_persona, Claveusuario)
REFERENCES Registro_Usuario (Id_persona, Claveusuario)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Administrador ADD CONSTRAINT Persona_Administrador_fk
FOREIGN KEY (Id_persona, Claveusuario)
REFERENCES Registro_Usuario (Id_persona, Claveusuario)
ON DELETE NO ACTION
ON UPDATE NO ACTION
