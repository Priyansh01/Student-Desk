<%
session.setAttribute("email", null);
session.setAttribute("pass", null);
session.setAttribute("user", null);
session.invalidate();
response.sendRedirect("index.html");
%>