<%@ page import ="java.sql.*" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>JSP Example</title>
    	</head>
    	<body bgcolor="#282828">
	<%
		String u_roll = request.getParameter("u_roll");    
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "");
		Statement st = con.createStatement();
		ResultSet rs;
		rs = st.executeQuery("select * from stud where u_roll='" + u_roll + "';");
    		if (rs.next()) {
			session.setAttribute("delete",rs.getString("u_roll"));
	%>
		<form method="post" action="deletestud_record.jsp">
		<center>
		<table border="0" width="30%" cellpadding="5" background="Resource/table_background.png">
                	<thead>
                    	<tr>
                        	<th colspan="2"><h1><font color="#ffffff"><%=rs.getString("firstname")%> <%=rs.getString("lastname")%></font></h1></th>
                    	</tr>
                	</thead>
                	<tbody>
                    	<tr>
                        	<td align="center"><font color="#ffffff">College Rollnumber</font></td>
                        	<td align="center"><font color="#ffffff"><%=rs.getString("c_roll")%></font></td>
			</tr>
			
			<tr>
                        	<td align="center"><font color="#ffffff">University Rollnumber</font></td>
                        	<td align="center"><font color="#ffffff"><%=rs.getString("u_roll")%></font></td>
                    	</tr>
			<tr>
                        	<td align="center"><font color="#ffffff">Father's Name</font></td>
                        	<td align="center"><font color="#ffffff"><%=rs.getString("father")%></font></td>
                    	</tr>
                	</tbody>
		</table>
			<input type="hidden" name="usertodelete" value="<%=rs.getString("c_roll")%>">
			<input type="submit" value="Delete">
		</center>
		</form>	

	<%
    		} 
		else {
			out.println("<center>Id not exisiting try again</a></center>");
		}
	%>