package com.javaee.sushiee.servlet;

import com.google.gson.Gson;
import com.javaee.sushiee.config.SpringConfig;
import com.javaee.sushiee.dao.PersonDAO;
import com.javaee.sushiee.model.Person;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.io.IOException;
import java.net.URLEncoder;

@WebServlet(value = "/FuJEE/registration")
public class RegistrationServlet extends HttpServlet {

    private PersonDAO personDAO;

    @Override
    public void init(ServletConfig config){
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(SpringConfig.class);
        this.personDAO = context.getBean(PersonDAO.class);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/view/RegistrationPage.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        Person person = new Person();
        person.setName(req.getParameter("userName"));
        person.setSurname(req.getParameter("userSurname"));
        person.setPhoneNumber(req.getParameter("userPhoneNumber"));
        person.setEmail(req.getParameter("userEmail"));
        person.setPassword(req.getParameter("userPassword"));

        personDAO.saveAccount(person);

        Gson gson = new Gson();
        String jsonPerson = gson.toJson(person);
        Cookie cookie = new Cookie("account", URLEncoder.encode(jsonPerson, "UTF-8"));
        cookie.setMaxAge(24 * 60 * 60);
        resp.addCookie(cookie);

        req.setAttribute("Person", person);
        resp.sendRedirect("/FuJEE/account");
    }
}