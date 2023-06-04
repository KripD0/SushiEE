package com.javaee.sushiee;

import java.io.*;

import com.javaee.sushiee.dao.Person;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
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
        Person person = new Person();

//String userID=req.getParameter("userID");
//String password=req.getParameter("password");

        String userName = person.getName();
        long userPhoneNumber = person.getPhoneNumber();

        System.out.println("userName=" + userName);
        System.out.println("userPhoneNumber=" + userPhoneNumber);


    }


    public void destroy() {
    }
}