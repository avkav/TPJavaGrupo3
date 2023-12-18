package fsj.project.integrador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConexion {
	private static final String CONTROLADOR = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/conferencias";
	private static final String USSER = "root";
	private static final String PASS = "root";

	static {
		try {
			Class.forName(CONTROLADOR);
			//System.out.println("Se cargo el controlador correctamente");
		} catch (ClassNotFoundException e) {
			System.err.println("Error al cargar el conectrolador");
			e.printStackTrace();
		}
	}

	public Connection conectar() {//metodo conectar que es de tipo Connection

		Connection conexion = null;

		try {
			conexion = DriverManager.getConnection(URL, USSER, PASS);
			//System.out.println("Se genero la conexión con la DB");
		} catch (SQLException e) {
			System.out.println("Error al establecer la conexión");
			e.printStackTrace();
		}

		return conexion;
	}

}
