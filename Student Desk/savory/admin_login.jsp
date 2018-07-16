<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");    
    String pwd = request.getParameter("password");
	String pos = request.getParameter("position");
	String msg="";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from staff where email='" + email + "' and password='" + pwd + "'");
    if (rs.next()) {
		String aemail=rs.getString(3);
		String apos=rs.getString(4);
		session.setAttribute("email",aemail);
		session.setAttribute("position",apos);
		//out.println("welcome " + email +user);
		response.sendRedirect("services.jsp");

					} 
	else{
		out.println("Invalid password <a href='index.html'>try again</a>");
		}
%>