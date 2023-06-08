package com.javaee.sushiee.servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/FuJEE/exitAccount")
public class ExitServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Cookie cookieToChange = new Cookie("account", null);
        cookieToChange.setMaxAge(24 *60 * 60);
        resp.addCookie(cookieToChange);
        resp.sendRedirect("/FuJEE/account");
    }
}
