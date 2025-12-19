package Model;

import DB.DBconnector;
import java.sql.*;

public class AdminModel {

    public static boolean login(String email, String password) {
        try {
            Connection con = DBconnector.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM admin WHERE email=? AND password=?"
            );
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
