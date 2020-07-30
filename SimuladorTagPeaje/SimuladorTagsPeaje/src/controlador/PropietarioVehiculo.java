package controlador;

public class PropietarioVehiculo {
	private String ced;
	private String nom;
	private String direccion;
	private  int telf;
	private String correo;
	private String contra;
	public PropietarioVehiculo() {
		super();
	}
	public PropietarioVehiculo(String ced, String nom, String direccion, int telf, String correo, String contra) {
		super();
		this.ced = ced;
		this.nom = nom;
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
