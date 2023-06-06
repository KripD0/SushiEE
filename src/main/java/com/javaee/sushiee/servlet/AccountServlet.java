package com.javaee.sushiee.servlet;

import com.google.gson.Gson;
import com.javaee.sushiee.model.Person;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.net.URLDecoder;

@WebServlet("/FuJEE/account")
public class AccountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] allCookies = req.getCookies();
        Cookie accountCookie = new Cookie("account", null);
        accountCookie.setMaxAge(24 * 60 * 60);

        for (Cookie cookie:allCookies){
            if(cookie.getName().equals("account")){
                accountCookie = cookie;
            }
        }
        if(accountCookie.getValue() != null){
            String jsonPerson = URLDecoder.decode(accountCookie.getValue(), "UTF-8");
            Gson gson = new Gson();
            Person person = gson.fromJson(jsonPerson, Person.class);

            req.setAttribute("Person", person);
            req.getRequestDispatcher("/view/UserAccountPage.jsp").forward(req, resp);
        }else {
            resp.sendRedirect("/FuJEE/registration");
        }
    }
}
