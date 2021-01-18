<%@page import="java.sql.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
        String id = request.getParameter("kntid");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/emlak","root","");
        pst = con.prepareStatement("delete from konut where kntid = ?");
         pst.setString(1, id);
        pst.executeUpdate();  
        
        %>
        
        <script>
            
            alert("Kayıt Silindi");
            
       </script>