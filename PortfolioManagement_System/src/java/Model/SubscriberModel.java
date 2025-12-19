package Model;

import DB.DBconnector;
import java.sql.*;

public class SubscriberModel {

    public static void save(String email) throws Exception {
        Connection con = DBconnector.getConnection();
        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO subscribers(email) VALUES(?)"
        );
        ps.setString(1, email);
        ps.executeUpdate();
    }
}
