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
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            "root", "");
    Statement st = con.createStatement();
ResultSet rs;
    rs = st.executeQuery("select * from staff where email='" + email + "';");
if(rs.next()){
	session.setAttribute("email",email);
	response.sendRedirect("index.html");	
}
else{


    int i = st.executeUpdate("insert into staff(firstname, lastname, email, position, department, number, password) values ('" + fname + "','" + lname + "','" + email + "','" + position + "','" + department + "','" + number + "','" + pwd + "');" );

	if(i>0){
		//session.setAttribute("position",position);
        response.sendRedirect("services.jsp");
	}
	else{
		out.println("Registration Unsuccessful");
	}
}
%>