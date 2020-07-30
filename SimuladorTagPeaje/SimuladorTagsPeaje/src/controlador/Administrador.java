package controlador;


public class Administrador {
private String ced;
private String nom;
private String apellido;
private String ciudad;
private String direccion;
private  int telf;
private String correo;
private String contra;
public Administrador() {
	super();
}
public Administrador(String ced, String nom, String apellido, String ciudad, String direccion, int telf, String correo,
		String contra) {
	super();
	this.ced = ced;
	this.nom = nom;
	this.apellido = apellido;
	this.ciudad = ciudad;
	this.direccion = direccion;
	this.telf = telf;
	this.correo = correo;
	this.contra = contra;
}
public String getCed() {
	return ced;
}
public void setCed(String ced) {
	this.ced = ced;
}
public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}
public String getApellido() {
	return apellido;
}
public void setApellido(String apellido) {
	this.apellido = apellido;
}
public String getCiudad() {
	return ciudad;
}
public void setCiudad(String ciudad) {
	this.ciudad = ciudad;
}
public String getDireccion() {
	return direccion;
}
public void setDireccion(String direccion) {
	this.direccion = direccion;
}
public int getTelf() {
	return telf;
}
public void setTelf(int telf) {
	this.telf = telf;
}
public String getCorreo() {
	return correo;
}
public void setCorreo(String correo) {
	this.correo = correo;
}
public String getContra() {
	return contra;
}
public void setContra(String contra) {
	this.contra = contra;
}

}
