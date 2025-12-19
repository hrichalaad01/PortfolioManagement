package Model;

import DB.DBconnector;
import java.sql.*;

public class ContactModel {

    public static void save(String name, String email, String mobile, String city)
            throws Exception {

        Connection con = DBconnector.getConnection();
        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO contacts(fullname,email,mobile,city) VALUES(?,?,?,?)"
        );
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, mobile);
        ps.setString(4, city);
        ps.executeUpdate();
    }
}
