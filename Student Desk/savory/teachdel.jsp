<%@ page import ="java.sql.*" %>
<%
	String userid = request.getParameter("usertodelete");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "");
	Statement st = con.createStatement();
	int i = st.executeUpdate("delete from members where uname='" + userid + "';");
	if (i>0) {
        	session.setAttribute("delete", "");
		out.println("<center><h1>Successfully Deleted Record.<br><a href='/Untitled-3.html'>Delete More Reocrds</a><br><a href='success.jsp'>Main Page</a></h1></center>");
	}
	else{
        	out.println("<center><h1>Error in deletion<a href='delete.html'>Try again</a></h1></center>");
	}
%>