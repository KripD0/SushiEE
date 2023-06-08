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
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

@WebServlet(value = "/FuJEE/changeAccount")
public class ChangeAccountServlet extends HttpServlet {

    private PersonDAO personDAO;

    @Override
    public void init(ServletConfig config) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(SpringConfig.class);
        this.personDAO = context.getBean(PersonDAO.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/UserEditPage.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {
//        Cookie[] allCookies = req.getCookies();
//        Cookie accountCookie = new Cookie("account", null);
//        accountCookie.setMaxAge(24 * 60 * 60);
//        for (Cookie cookie : allCookies) {
//            if (cookie.getName().equals("account")) {
//                accountCookie = cookie;
//            }
//        }
//
//        String jsonPerson = URLDecoder.decode(accountCookie.getValue(), "UTF-8");
//        Gson gson = new Gson();
//        Person person = gson.fromJson(jsonPerson, Person.class);
//
//        Cookie cookieToChange = new Cookie("account", null);
//        cookieToChange.setMaxAge(24 * 60 * 60);
//        resp.addCookie(cookieToChange);
    }
}
