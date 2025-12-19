package controller;

import Model.AdminModel;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLogin")
public class AdminLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if (AdminModel.login(email, password)) {
            HttpSession session = req.getSession();
            session.setAttribute("admin", email);
            res.sendRedirect("admin_dashboard.jsp");
        } else {
            res.getWriter().println("Invalid Login");
        }
    }
}
