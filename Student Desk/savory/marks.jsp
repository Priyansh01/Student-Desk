<%@ page import ="java.sql.*" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>JSP Example</title>
    	</head>
    	<body bgcolor="#282828">
	<%
		String semester = request.getParameter("semester");
		String course = request.getParameter("course");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "");
		Statement st = con.createStatement();
		ResultSet rs;
		rs = st.executeQuery("select * from semester1 where course='" + course + "' and semester='" + semester + "'");
		
    		if ( rs.next() ) {
				
				
				
			session.setAttribute("semester",rs.getString("semester"));
			session.setAttribute("course",rs.getString("course"));
			
			String subject = rs.getString(1);
			
			%>
			<form method="post" action="insertmarks_record.jsp">
			<center>
		<table border="0" width="30%" cellpadding="5" background="Resource/table_background.png">
                	
           <thead>
					<tr>
                        	<td align="center"><font color="#ffffff">Roll Number</font></td>
                        	<td align="center"><font color="#ffffff"><input type="text" value=""  name="u_roll"></font></td>
					</tr>
					</thead>
    <%
    while (rs.next()) {
    %>
					<tbody>
					<tr>
                        	<td align="center"><font color="#ffffff">Subject Name: </font></td>
    <td align="center"><font color="#ffffff"> <input type="text" value="<%=rs.getString(1)%>" class="form-control subject" readonly ="true"  > </font></td>
			</tr>
        
		
                    	
			
			        	
						<tr>
                        	<td align="center"><font color="#ffffff">Internal</font></td>
                        	<td align="center"><font color="#ffffff"><input type="text" class="form-control internal"  name="internal"></font></td>
                    	</tr>
						<tr>
                        	<td align="center"><font color="#ffffff">External</font></td>
                        	<td align="center"><font color="#ffffff"><input type="text" class="form-control external" name="external"></font></td>
                    	</tr>
						<tr>
                        	<td align="center"><font color="#ffffff">Total</font></td>
                        	<td align="center"><font color="#ffffff"><input type="text" class="form-control total" name="total"></font></td>
                    	</tr>
                	
   
    <%   }    %>
     	</tbody>
		</table>
			
			<input type="submit" value="insert">
		</center>
		</form>	
		<script src="reportstore-validate.js"></script
	<%
    		} 
		else {
			out.println(course);
		}
	%>