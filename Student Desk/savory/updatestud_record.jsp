<%@ page import ="java.sql.*" %>
<%
	String father = request.getParameter("father");
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");
    String email = request.getParameter("email");
	String number = request.getParameter("number");
	String address = request.getParameter("address");
	String u_roll = request.getParameter("u_roll");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "");
	Statement st = con.createStatement();
	
	int i = st.executeUpdate("update stud set firstname='" + fname + "',lastname='" + lname +"',email='" + email +"',number='" + number+ "',address='" + address + "',u_roll='" + u_roll +"' where u_roll='" + u_roll + "';");
	if (i>0) {
        	 response.sendRedirect("services.jsp");
			 	}
	else{
        	out.println("<center><h1>Error in updation Try again</a></h1></center>");
	}
%> 	
%>


