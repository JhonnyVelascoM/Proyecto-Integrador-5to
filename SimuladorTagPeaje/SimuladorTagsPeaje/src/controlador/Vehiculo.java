package controlador;

import java.util.ArrayList;

public class Vehiculo {
private static ArrayList<Vehiculo>listarFirma=new ArrayList<>();
private String placa;
private String tipo;
private String modelo;
private String marca;
private String color;
public Vehiculo() {
	super();
}
public Vehiculo(String placa, String tipo, String modelo, String marca, String color) {
	super();
	this.placa = placa;
	this.tipo = tipo;
	this.modelo = modelo;
	this.marca = marca;
	this.color = color;
}
public String getPlaca() {
	return placa;
}
public void setPlaca(String placa) {
	this.placa = placa;
}
public String getTipo() {
	return tipo;
}
public void setTipo(String tipo) {
	this.tipo = tipo;
}
public String getModelo() {
	return modelo;
}
public void setModelo(String modelo) {
	this.modelo = modelo;
}
public String getMarca() {
	return marca;
}
public void setMarca(String marca) {
	this.marca = marca;
}
public String getColor() {
	return color;
}
public void setColor(String color) {
	this.color = color;
}
public static ArrayList<Vehiculo> getListarFirma() {
	return listarFirma;
}

}
