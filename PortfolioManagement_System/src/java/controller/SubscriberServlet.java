package controller;

import Model.SubscriberModel;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Subscribe")
public class SubscriberServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        try {
            SubscriberModel.save(req.getParameter("email"));
        } catch (Exception e) {
            e.printStackTrace();
        }

        res.sendRedirect("index.jsp");
    }
}
