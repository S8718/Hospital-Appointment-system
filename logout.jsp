<%-- 
    Document   : logout
    Created on : Aug 3, 2025, 5:53:56 PM
    Author     : HP
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    session.invalidate();  // Destroys the session
    response.sendRedirect("login.jsp");  // Redirect to login page
%>

