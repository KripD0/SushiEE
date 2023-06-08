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
import java.net.URLDecoder;
import java.net.URLEncoder;

@WebServlet(value = "/FuJEE/changeAccount")
public class ChangeAccountServlet extends HttpServlet {

    private PersonDAO personDAO;

    private String oldEmail;

    @Override
    public void init(ServletConfig config) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(SpringConfig.class);
        this.personDAO = context.getBean(PersonDAO.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] allCookies = req.getCookies();
        Cookie accountCookie = new Cookie("account", null);
        accountCookie.setMaxAge(24 * 60 * 60);
        for (Cookie cookie : allCookies) {
            if (cookie.getName().equals("account")) {
                accountCookie = cookie;
            }
        }

        String jsonPerson = URLDecoder.decode(accountCookie.getValue(), "UTF-8");
        Gson gson = new Gson();
        Person person = gson.fromJson(jsonPerson, Person.class);
        req.setAttribute("userSurname", person.getSurname());
        req.setAttribute("userName", person.getName());
        req.setAttribute("userPhoneNumber", person.getPhoneNumber());
        req.setAttribute("userEmail", person.getEmail());
        req.setAttribute("userPassword", person.getPassword());

        this.oldEmail = person.getEmail();

        req.getRequestDispatcher("/view/UserEditPage.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Person person = new Person();
        person.setSurname(req.getParameter("userSurname"));
        person.setName(req.getParameter("userName"));
        person.setPhoneNumber(req.getParameter("userPhoneNumber"));
        person.setEmail(req.getParameter("userEmail"));
        person.setPassword(req.getParameter("userPassword"));

        personDAO.updateAccount(person, oldEmail);

        Gson gson = new Gson();
        String jsonPerson = gson.toJson(person);
        Cookie cookie = new Cookie("account", URLEncoder.encode(jsonPerson, "UTF-8"));
        cookie.setMaxAge(24 * 60 * 60);
        resp.addCookie(cookie);

        resp.sendRedirect("/FuJEE/account");
    }
}
