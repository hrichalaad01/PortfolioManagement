package controller;

import DB.DBconnector;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateProject")
public class UpdateProjectServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        try {
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String desc = req.getParameter("description");

            Connection con = DBconnector.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "UPDATE projects SET name=?, description=? WHERE id=?"
            );
            ps.setString(1, name);
            ps.setString(2, desc);
            ps.setInt(3, id);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        res.sendRedirect("admin_view_projects.jsp");
    }
}
