<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String role = request.getParameter("role");
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Example validation logic (replace this with your actual validation)
    boolean isValid = true; // Replace with actual credential check logic

    if (isValid) {
        if ("student".equalsIgnoreCase(role)) {
            response.sendRedirect("student.jsp?username=" + username);
        } else if ("admin".equalsIgnoreCase(role)) {
            response.sendRedirect("admin.jsp?username=" + username);
        } else {
            out.print("<h4 class='text-danger text-center'>Invalid Role. Please try again.</h4>");
        }
    } else {
        out.print("<h4 class='text-danger text-center'>Invalid Credentials. Please try again.</h4>");
    }
%>
