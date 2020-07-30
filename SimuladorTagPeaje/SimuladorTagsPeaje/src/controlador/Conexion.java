package controlador;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Conexion {
	private Statement St; 
	private String driver;
	private String user;
	private String pwd;
	private String cadena;
	private Connection con;

	String getDriver()
	{
		return this.driver;
	}
	String getUser()
	{
		return this.user;
	}
	String getPwd()
	{
		return this.pwd;
	}
	String getCadena()
	{
		return this.cadena;
	}
	public Connection getConexion()
	{ 
		return this.con; 
	}
	
	public Conexion() {
		
		this.driver ="org.postgresql.Driver";
		this.user="postgres";
		this.pwd="1234";
		this.cadena="jdbc:postgresql://localhost:5433/bd_peaje";	
		this.con=this.crearConexion();
	
	}
	
	Connection crearConexion()
	{
		/*try {
			Class.forName("org.postgresql.Driver");
			}
			catch (ClassNotFoundException e) {
			
			}*/
		
		try
		{
			Class.forName(getDriver()).newInstance();
			Connection con=DriverManager.getConnection(getCadena(),getUser(),getPwd());
			System.out.println("Conexion satisfactoria");
			return con;
		}
	catch(Exception ee)
	{
		System.out.println("Error: " + ee.getMessage());
		return null;
	}
	}


	public boolean Ejecutar(String sql)
	{
	
	try
	{
	St=getConexion().createStatement();
	St.execute(sql);
	return true;
	}
	catch(Exception ex)
	{
	System.out.println(ex.getMessage());
	}
	return false;
	}



	public ResultSet Consulta(String sql)
	{
	String error="";
	ResultSet reg=null;
	
	try
	{
	St=getConexion().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
	reg=St.executeQuery(sql);
	

	}
	catch(Exception ee)
	{
	error = ee.getMessage();
	}
	return(reg);
	}
	
}

