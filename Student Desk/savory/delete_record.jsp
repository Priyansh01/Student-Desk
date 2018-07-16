<%@ page import ="java.sql.*" %>
<%
	String email = request.getParameter("usertodelete");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "");
	Statement st = con.createStatement();
	int i = st.executeUpdate("delete from staff where email='" + email + "';");
	if (i>0) {
        	 response.sendRedirect("services.jsp");
			 	}
	else{
        	out.println("<center><h1>Error in deletion<a href='delete.html'>Try again</a></h1></center>");
	}
%>