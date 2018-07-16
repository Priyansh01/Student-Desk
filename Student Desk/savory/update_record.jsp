<%@ page import ="java.sql.*" %>
<%
	String pwd = request.getParameter("password");
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");
    String email = request.getParameter("email");
	String number = request.getParameter("number");
	String position = request.getParameter("position");
	String department = request.getParameter("department");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "");
	Statement st = con.createStatement();
	
	int i = st.executeUpdate("update staff set firstname='" + fname + "',lastname='" + lname +"',email='" + email +"',number='" + number+ "',position='" + position + "',department='" + department +"' where email='" + email + "';");
	if (i>0) {
        	 response.sendRedirect("services.jsp");
			 	}
	else{
        	out.println("<center><h1>Error in updation Try again</a></h1></center>");
	}
%> 	
%>


