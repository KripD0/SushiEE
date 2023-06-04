package com.javaee.sushiee.servlet;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "PersonServlet", value = "/PersonServlet")
public class PersonServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) {

        RequestDispatcher rd = null;
        HttpSession userSession = null;

        String userName = req.getParameter("userName");
        long phoneNumber = Long.parseLong(req.getParameter("phoneNumber"));

        System.out.println(userName);
        System.out.println(phoneNumber);



    }


    public void destroy() {
    }
}