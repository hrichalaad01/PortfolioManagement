package controller;

import Model.ContactModel;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Contact")
public class ContactServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        try {
            ContactModel.save(
                req.getParameter("fullname"),
                req.getParameter("email"),
                req.getParameter("mobile"),
                req.getParameter("city")
            );
        } catch (Exception e) {
            e.printStackTrace();
        }

        res.sendRedirect("index.jsp");
    }
}
