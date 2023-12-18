<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<%
if (request.getParameter("page").toString().equals("login")) {
    if (pDAO.loginValidate(request.getParameter("username").toString(), request.getParameter("password").toString())) {
        session.setAttribute("userStatus", "1");
        session.setAttribute("userId", pDAO.getUserId(request.getParameter("username")));

        // Cookie eklemek için uygun yer
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Cookie passwordCookie = new Cookie("password", URLEncoder.encode(password, "UTF-8"));
        Cookie usernameCookie = new Cookie("username", URLEncoder.encode(username, "UTF-8"));

        int maxAge = 30 * 60; 
        passwordCookie.setMaxAge(maxAge);
        usernameCookie.setMaxAge(maxAge);

        response.addCookie(passwordCookie);
        response.addCookie(usernameCookie);

        response.sendRedirect("dashboard.jsp");
    } else {
        request.getSession().setAttribute("userStatus", "-1");
        response.sendRedirect("login.jsp");
    }
} else if (request.getParameter("page").toString().equals("register")) {
    // Kayıt işlemleri...
    response.sendRedirect("adm-page.jsp?pgprt=1");
} else if (request.getParameter("page").toString().equals("profile")) {
    // Profil güncelleme işlemleri...
    response.sendRedirect("dashboard.jsp");
} else if (request.getParameter("page").toString().equals("courses")) {
    // Kurs işlemleri...
    response.sendRedirect("adm-page.jsp?pgprt=2");
} else if (request.getParameter("page").toString().equals("accounts")) {
    // Hesap işlemleri...
    response.sendRedirect("adm-page.jsp?pgprt=1");
} else if (request.getParameter("page").toString().equals("questions")) {
    // Soru işlemleri...
    response.sendRedirect("adm-page.jsp?pgprt=3");
} else if (request.getParameter("page").toString().equals("exams")) {
    // Sınav işlemleri...
    response.sendRedirect("std-page.jsp?pgprt=1");
} else if (request.getParameter("page").toString().equals("logout")) {
    // Çıkış işlemleri...
    session.setAttribute("userStatus", "0");
    session.removeAttribute("examId");
    session.removeAttribute("examStarted");
    response.sendRedirect("index.jsp");
}
%>