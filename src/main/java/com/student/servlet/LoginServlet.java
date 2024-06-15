package com.student.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userID = request.getParameter("userID");
        String password = request.getParameter("password");

        if ("admin".equals(userID) && "password".equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("userID", userID);
            response.sendRedirect("welcome");
        } else {
            response.sendRedirect("login.jsp?error=true");
        }
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }
}
