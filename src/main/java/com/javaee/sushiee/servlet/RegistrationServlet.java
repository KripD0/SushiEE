package com.javaee.sushiee.servlet;

import com.javaee.sushiee.model.Person;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/FuJEE/registration")
public class RegistrationServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/view/RegistrationPage.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        Person person = new Person();
        person.setName(req.getParameter("userName"));
        person.setSurname(req.getParameter("userSurname"));
        person.setPhoneNumber(Integer.parseInt(req.getParameter("userPhoneNumber")));
        person.setEmail(req.getParameter("userEmail"));

        req.setAttribute("Person", person);
        req.getRequestDispatcher("/view/UserAccountPage.jsp").forward(req,resp);

    }
}