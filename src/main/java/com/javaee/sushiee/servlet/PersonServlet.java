package com.javaee.sushiee.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/registration")
public class PersonServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("view/RegistrationPage.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {


        req.setAttribute("userSurname", req.getParameter("userSurname"));
        req.setAttribute("userName", req.getParameter("userName"));
        req.setAttribute("userPhoneNumber", req.getParameter("userPhoneNumber"));
        req.setAttribute("userEmail", req.getParameter("userEmail"));
        req.getRequestDispatcher("/view/UserAccountPage.jsp").forward(req,resp);

    }
}