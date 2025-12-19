package DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnector {

    private static Connection con = null;

    static {
        try {
            String url = "jdbc:mysql://localhost:3306/company_portfolio";
            String user = "root";
            String pass = "";

            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
            System.out.println("Database Connected");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() {
        return con;
    }
}
