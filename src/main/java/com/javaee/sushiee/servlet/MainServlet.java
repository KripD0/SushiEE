package com.javaee.sushiee.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/FuJEE")
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Cookie[] currentCookie = req.getCookies();
        Cookie changeCookie = new Cookie("theme", "peach");
        changeCookie.setMaxAge(24 * 60 * 60);
        if(currentCookie != null){
            for (Cookie cookie : currentCookie) {
                if (cookie.getName().equals("theme") && !cookie.getValue().equals("")) {
                    changeCookie.setValue(cookie.getValue());
                }
            }
        }

        resp.addCookie(changeCookie);
        req.getRequestDispatcher("/view/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String theme = null;
        Cookie[] currentCoockie = req.getCookies();

        for (Cookie cookie : currentCoockie) {
            if (cookie.getName().equals("theme")) {
                theme = cookie.getValue();
            }
        }

        if (theme.equals("peach")) {
            theme = "black";
        } else if (theme.equals("black")) {
            theme = "peach";
        }

        Cookie cookie = new Cookie("theme", theme);
        resp.addCookie(cookie);
        resp.sendRedirect("/FuJEE");
    }
}
