<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String uname=request.getParameter("uname");
String email=request.getParameter("email");
String passwd=request.getParameter("passwd");
String gender=request.getParameter("gender");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javademo", "root", "kingmaker");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into javaform(fname,lname,uname,email,passwd,gender)values('"+fname+"','"+lname+"','"+uname+"','"+email+"','"+passwd+"','"+gender+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>