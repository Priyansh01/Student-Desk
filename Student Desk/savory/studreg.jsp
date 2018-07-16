<%@ page import ="java.sql.*" %>
<%
       
    String father = request.getParameter("father");
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");
    String email = request.getParameter("email");
	String number = request.getParameter("number");
	String address = request.getParameter("address");
	String school = request.getParameter("school");
	String university = request.getParameter("university");
	String course = request.getParameter("course");
	String stream = request.getParameter("stream");
	String year = request.getParameter("year");
	String c_roll = request.getParameter("c_roll");
	String u_roll = request.getParameter("u_roll");
	String ten = request.getParameter("10th");
	String twelve = request.getParameter("12th");
	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            "root", "");
    Statement st = con.createStatement();
ResultSet rs;
    rs = st.executeQuery("select * from stud where u_roll='" + u_roll + "';");
if(rs.next()){
	session.setAttribute("u_roll",u_roll);
	response.sendRedirect("index.html");	
}
else{


    int i = st.executeUpdate("insert into stud(firstname, lastname, father, email,number, 10th, 12th, address, school, university, course, stream, year, c_roll, u_roll) values ('" + fname + "','" + lname + "','" + father + "','" + email + "','" + number + "','" + ten + "','" + twelve +"','" + address + "','" + school +"','" + university +"','" + course +"','" + stream + "','" + year + "','" + c_roll + "','" + u_roll +"');" );

	if(i>0){
		
        response.sendRedirect("services.jsp");
	}
	else{
		out.println("Registration Unsuccessful");
	}
}
%>