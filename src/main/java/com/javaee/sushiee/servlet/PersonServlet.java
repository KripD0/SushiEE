package com.javaee.sushiee.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/person")
public class PersonServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello Bebra!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        String surname = req.getParameter("userSurname");
        String name = req.getParameter("userName");
        long phoneNumber = Long.parseLong(req.getParameter("userPhoneNumber"));
        String email = req.getParameter("userEmail");

        req.getRequestDispatcher("/view/MenuPage.jsp").forward(req,resp);
//        PrintWriter writer = resp.getWriter();
//        writer.println("<html><body>");
//        writer.println("<p>Фамилия: " + surname);
//        writer.println("<p>Имя: " + name);
//        writer.println("<p>Номер телефона: " + phoneNumber);
//        writer.println("<p>Email: " + email);
//        writer.println("</body></html>");

    }


    public void destroy() {
    }
}