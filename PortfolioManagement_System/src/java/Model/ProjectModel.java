package Model;

import DB.DBconnector;
import DTO.ProjectDTO;
import java.sql.*;
import java.util.ArrayList;

public class ProjectModel {

    public static void add(ProjectDTO p) throws Exception {
        Connection con = DBconnector.getConnection();
        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO projects(image,name,description) VALUES(?,?,?)"
        );
        ps.setString(1, p.image);
        ps.setString(2, p.name);
        ps.setString(3, p.description);
        ps.executeUpdate();
    }

    public static ArrayList<ProjectDTO> getAll() throws Exception {
        ArrayList<ProjectDTO> list = new ArrayList<>();
        Connection con = DBconnector.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM projects");

        while (rs.next()) {
            ProjectDTO p = new ProjectDTO();
            p.id = rs.getInt("id");
            p.image = rs.getString("image");
            p.name = rs.getString("name");
            p.description = rs.getString("description");
            list.add(p);
        }
        return list;
    }
}
