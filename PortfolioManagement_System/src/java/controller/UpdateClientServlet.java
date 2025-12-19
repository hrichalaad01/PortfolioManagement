package controller;

import DB.DBconnector;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateClient")
public class UpdateClientServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        try {
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String designation = req.getParameter("designation");
            String description = req.getParameter("description");

            Connection con = DBconnector.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "UPDATE clients SET name=?, designation=?, description=? WHERE id=?"
            );
            ps.setString(1, name);
            ps.setString(2, designation);
            ps.setString(3, description);
            ps.setInt(4, id);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        res.sendRedirect("admin_view_clients.jsp");
    }
}
