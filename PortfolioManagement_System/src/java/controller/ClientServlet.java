package controller;

import DTO.ClientDTO;
import Model.ClientModel;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/AddClient")
@MultipartConfig
public class ClientServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        Part part = req.getPart("image");
        String fileName = part.getSubmittedFileName();

        String uploadPath = getServletContext().getRealPath("/uploads");
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        part.write(uploadPath + File.separator + fileName);

        ClientDTO c = new ClientDTO();
        c.image = fileName;
        c.name = req.getParameter("name");
        c.designation = req.getParameter("designation");
        c.description = req.getParameter("description");

        try {
            ClientModel.add(c);
        } catch (Exception e) {
            e.printStackTrace();
        }

        res.sendRedirect("admin_view_clients.jsp");
    }
}
