package Model;

import DB.DBconnector;
import DTO.ClientDTO;
import java.sql.*;
import java.util.ArrayList;

public class ClientModel {

    public static void add(ClientDTO c) throws Exception {
        Connection con = DBconnector.getConnection();
        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO clients(image,name,designation,description) VALUES(?,?,?,?)"
        );
        ps.setString(1, c.image);
        ps.setString(2, c.name);
        ps.setString(3, c.designation);
        ps.setString(4, c.description);
        ps.executeUpdate();
    }

    public static ArrayList<ClientDTO> getAll() throws Exception {
        ArrayList<ClientDTO> list = new ArrayList<>();
        Connection con = DBconnector.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM clients");

        while (rs.next()) {
            ClientDTO c = new ClientDTO();
            c.id = rs.getInt("id");
            c.image = rs.getString("image");
            c.name = rs.getString("name");
            c.designation = rs.getString("designation");
            c.description = rs.getString("description");
            list.add(c);
        }
        return list;
    }
}
