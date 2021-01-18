<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    // Database Ba?lant?s?
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
        
    Class.forName("com.mysql.jdbc.Driver");
    
// Kontrol için üretilen username password nesneleri ve emlak database'ine baglanti   
    
String username=request.getParameter("username");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/emlak","root","");

Statement st= con.createStatement();
rs=st.executeQuery("select * from user where username='"+username+"' and password='"+password+"'");
try{
rs.next();
//  Parola ve Kullan?c? Adi Eslesmesini kontrol edecek eger hatal?ysa girise tekrar yönlendirecek

if(rs.getString("password").equals(password)&&rs.getString("username").equals(username))
{
response.sendRedirect("home.jsp");
}
else{
response.sendRedirect("index.jsp");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>