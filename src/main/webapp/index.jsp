<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- java import statements -->
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="myPackage.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Eastside Catholic Accommodations Request Form</title>
</head>
<body>
<h1>Accomodation Request Form</h1>
Welcome to the EC AR testing accommodations request form! Please click 
<a href="<%=new Security().generateLogonUrl()%>">here</a>
 to log in to your school Microsoft account.
</body>
<br><br><br><br>
<h6 style="font-size:80%;">Dane Williams 2017 v3.1.5</h6>
</html>