<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
    
    


<%
		String semester = request.getParameter("semester");
		String course = request.getParameter("course");
		String u_roll = request.getParameter("u_roll");
		String  subject = request.getParameter("subject");
		String[] internal =request.getParameterValues("internal[]");
		String[] external =request.getParameterValues("external[]");
		String[] total =request.getParameterValues("total[]");

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "");
		Statement st = con.createStatement();
		ResultSet rs;
		int n = 3;
		for(int i=0;i<n;i++){
		string sql = st.executeUpdate("insert into marks(u_roll, semester, course, subject, internal, external, total) values ('" + u_roll + "','" + semester + "','" + course + "','" + subject + "','" + internal[i] + "','" + external[i] + "','" + total[i] + "');" );
	

 %>

<html>
<head>


</head>

</html>