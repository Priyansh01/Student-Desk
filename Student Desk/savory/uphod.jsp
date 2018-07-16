<%@ page import ="java.sql.*" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>JSP Example</title>
    	</head>
    	<body bgcolor="#282828">
	<%
		String email = request.getParameter("email");    
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "");
		Statement st = con.createStatement();
		ResultSet rs;
		rs = st.executeQuery("select * from staff where email='" + email + "';");
    		if (rs.next()) {
			session.setAttribute("delete",rs.getString("email"));
	%>
		<form method="post" action="update_record.jsp">
		<center>
		<table border="0" width="30%" cellpadding="5" background="Resource/table_background.png">
                	<thead>
                    	<tr>
                        	<th colspan="2"><h1><font color="#ffffff"><input type="text" value="<%=rs.getString("firstname")%>" name="firstname"> <input type="text" value="<%=rs.getString("lastname")%>" name="lastname"></font></h1></th>
                    	</tr>
                	</thead>
                	<tbody>
                    	<tr>
                        	<td align="center"><font color="#ffffff">Department</font></td>
                        	<td align="center"><font color="#ffffff"><input type="text" value="<%=rs.getString("department")%>" name="department"></font></td>
			</tr>
			
			<tr>
                        	<td align="center"><font color="#ffffff">Email ID</font></td>
                        	<td align="center"><font color="#ffffff"><input type="text" value="<%=rs.getString("email")%>" name="email"></font></td>
                    	</tr>
			<tr>
                        	<td align="center"><font color="#ffffff">Position</font></td>
                        	<td align="center"><font color="#ffffff"><input type="text" value="<%=rs.getString("position")%>" name="position"></font></td>
                    	</tr>
						<tr>
                        	<td align="center"><font color="#ffffff">Password</font></td>
                        	<td align="center"><font color="#ffffff"><input type="text" value="<%=rs.getString("password")%>" name="position"></font></td>
                    	</tr>
						<tr>
                        	<td align="center"><font color="#ffffff">Number</font></td>
                        	<td align="center"><font color="#ffffff"><input type="text" value="<%=rs.getString("number")%>" name="number"></font></td>
                    	</tr>
                	</tbody>
		</table>
			
			<input type="submit" value="Update">
		</center>
		</form>	

	<%
    		} 
		else {
			out.println("<center>Id not exisiting try again</a></center>");
		}
	%>