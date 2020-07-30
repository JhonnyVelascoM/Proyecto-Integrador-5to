
CREATE TABLE Vehiculo (
                Firma VARCHAR(20) NOT NULL,
                Placa VARCHAR(6) NOT NULL,
                Tipovehiculo VARCHAR(15) NOT NULL,
                Modelo VARCHAR(20) NOT NULL,
                Marca VARCHAR(10) NOT NULL,
                Color VARCHAR(10) NOT NULL,
                CONSTRAINT vehiculo_pk PRIMARY KEY (Firma, Placa)
);


CREATE TABLE TagPeaje (
                Firma VARCHAR(20) NOT NULL,
                Placa VARCHAR(6) NOT NULL,
                Region VARCHAR(15) NOT NULL,
                Provincia VARCHAR(20) NOT NULL,
                Casetacobro VARCHAR(5) NOT NULL,
                Tarifas NUMERIC(3,2) NOT NULL,
                Fecha DATE NOT NULL,
                Hora TIME NOT NULL,
                CONSTRAINT tagpeaje_pk PRIMARY KEY (Firma, Placa)
);


CREATE TABLE Registro_Usuario (
                Id_persona VARCHAR(10) NOT NULL,
                Claveusuario VARCHAR(15) NOT NULL,
                Placa VARCHAR(6) NOT NULL,
                Firma VARCHAR(20) NOT NULL,
                Nombre VARCHAR(15) NOT NULL,
                Apellido VARCHAR(15) NOT NULL,
                Telefono INTEGER,
                Ciudad VARCHAR(15),
                Correousuario VARCHAR(30) NOT NULL,
                Tipousuario VARCHAR(15) NOT NULL,
                CONSTRAINT pk_registro_usuario PRIMARY KEY (Id_persona, Claveusuario)
);


CREATE TABLE Administrador (
                Id_persona VARCHAR(10) NOT NULL,
                Claveusuario VARCHAR(15) NOT NULL,
                Nombre VARCHAR(20) NOT NULL,
                Apellido VARCHAR(15) NOT NULL,
                Telefono INTEGER,
                Ciudad VARCHAR(15),
                Direccion VARCHAR(20) NOT NULL,
                Correo_administrador VARCHAR(20) NOT NULL,
                Area VARCHAR(15) NOT NULL,
                Horario VARCHAR(15) NOT NULL,
                CONSTRAINT administrador_pk PRIMARY KEY (Id_persona, Claveusuario)
);


CREATE TABLE Invitados (
                Id_persona VARCHAR(10) NOT NULL,
                Claveusuario VARCHAR(15) NOT NULL,
                Nombre VARCHAR(20) NOT NULL,
                Correo_invitado VARCHAR(30) NOT NULL,
                CONSTRAINT invitados_pk PRIMARY KEY (Id_persona, Claveusuario)
);


CREATE TABLE DueñoVehiculo (
                Id_persona VARCHAR(10) NOT NULL,
                Firma VARCHAR(20) NOT NULL,
                Placa VARCHAR(6) NOT NULL,
                Claveusuario VARCHAR(15) NOT NULL,
                Cedula INTEGER NOT NULL,
                Nombre VARCHAR(20) NOT NULL,
                Tipo_vehiculo VARCHAR(20) NOT NULL,
                Direccion VARCHAR(20) NOT NULL,
                Telefono INTEGER,
                Correo_D_vehiculo VARCHAR(20) NOT NULL,
                CONSTRAINT due_ovehiculo_pk PRIMARY KEY (Id_persona, Firma, Placa, Claveusuario)
);


ALTER TABLE DueñoVehiculo ADD CONSTRAINT vehiculo_due_ovehiculo_fk
FOREIGN KEY (Firma, Placa)
REFERENCES Vehiculo (Firma, Placa)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE TagPeaje ADD CONSTRAINT vehiculo_tagpeaje_fk
FOREIGN KEY (Firma, Placa)
REFERENCES Vehiculo (Firma, Placa)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE Registro_Usuario ADD CONSTRAINT tagpeaje_persona_fk
FOREIGN KEY (Firma, Placa)
REFERENCES TagPeaje (Firma, Placa)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE DueñoVehiculo ADD CONSTRAINT persona_due_ovehiculo_fk
FOREIGN KEY (Id_persona, Claveusuario)
REFERENCES Registro_Usuario (Id_persona, Claveusuario)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE Invitados ADD CONSTRAINT persona_invitados_fk
FOREIGN KEY (Id_persona, Claveusuario)
REFERENCES Registro_Usuario (Id_persona, Claveusuario)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE Administrador ADD CONSTRAINT persona_administrador_fk
FOREIGN KEY (Id_persona, Claveusuario)
REFERENCES Registro_Usuario (Id_persona, Claveusuario)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
