package com.javaee.sushiee.servlet;

import com.google.gson.Gson;
import com.javaee.sushiee.config.SpringConfig;
import com.javaee.sushiee.dao.PersonDAO;
import com.javaee.sushiee.model.Person;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.io.IOException;
import java.net.URLEncoder;

@WebServlet(value = "/FuJEE/auth")
public class AuthServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String email = req.getParameter("userEmail");
        String password = req.getParameter("userPassword");

        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(SpringConfig.class);
        PersonDAO personDAO = context.getBean(PersonDAO.class);
        Person person = personDAO.getAccountByEmail(email, password);
        if(person != null){
            req.setAttribute("Person", person);

            Gson gson = new Gson();
            String personJson = gson.toJson(person);
            Cookie cookie = new Cookie("account", URLEncoder.encode(personJson, "UTF-8"));
            cookie.setMaxAge(24 * 60 * 60);
            resp.addCookie(cookie);

            resp.sendRedirect("/FuJEE/account");
        }
        else {
            resp.sendRedirect("/FuJEE/registration");
        }
    }
}
