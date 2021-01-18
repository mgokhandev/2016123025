<%-- 
    Document   : konutlistele
    Created on : 12 Oca 2021, 23:21:44
    Author     : MGD
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<% 
 
    if(request.getParameter("submit")!=null)
    {
        String kntid = request.getParameter("kntid");
        String knttipi = request.getParameter("knttipi");
        String kntfiyat = request.getParameter("kntfiyat");
        String kntmkare = request.getParameter("kntmkare");
        String kntkat = request.getParameter("kntkat");
        String kntisitma = request.getParameter("kntisitma");
        String kntcephe = request.getParameter("kntcephe");
        String kntiletisim = request.getParameter("kntiletisim");
        
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/emlak", "root", "");
        pst = con.prepareStatement("insert into konut(kntid,knttipi,kntfiyat,kntmkare,kntkat,kntisitma,kntcephe,kntiletisim)values(?,?,?,?,?,?,?,?)");
        pst.setString(1, kntid);
        pst.setString(2, knttipi);
        pst.setString(3, kntfiyat);
        pst.setString(4, kntmkare);
        pst.setString(5, kntkat);
        pst.setString(6, kntisitma);
        pst.setString(7, kntcephe);
        pst.setString(8, kntiletisim);
        pst.executeUpdate();  
        
        %> 
    <script>   
        alert("Kayıt Başarılı!");     
    </script> 
    <%             
    }
   %>
<!DOCTYPE html>
<html>
    <head>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <title>JSP Page</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light" >
  <div class="container-fluid" >
    <a class="navbar-brand" href="home.jsp" >Emlak Takip V1.0</a>


    
    <div class="collapse navbar-collapse" id="navbarSupportedContent" style="margin-left: 10% ; margin-right: 20% ; font-size: 20px" >
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="home.jsp">Anasayfa </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Emlak Yönetim</a>
        </li>
                  <li class="nav-item">
          <a class="nav-link" href="#">Müşteri Yönetim</a>
        </li>
                  <li class="nav-item">
          <a class="nav-link" href="#">İşlemler</a>
                  </li><!-- comment -->
                          <li class="nav-item">
          <a class="nav-link" href="#">Ara</a>
                          </li>         
      </ul>
    </div>
  </div>
</nav>
    <div class="col-sm-6" style="margin-left: 20% ; margin-right: 20%; margin-top: 20px">
        <div class="panel-body">
            <table id="tbl-student" class="table table-responsive table-bordered" class="table table-striped" cellpadding ="0" width="10%">
                <thead class="thead-dark">
                    <tr>
                        <th>Konut ID</th>
                        <th>Tipi</th>
                        <th>Fiyat</th>
                        <th>Metre Kare</th>
                        <th>Kat</th>
                        <th>Isıtma</th>
                        <th>Cephe</th>
                        <th>İletisim</th>

                        
                        <th>Sil</th>
                    </tr>  

                               <%

                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/emlak", "root", "");

                        String query = "select * from konut";
                        Statement st = con.createStatement();

                        rs = st.executeQuery(query);

                        while (rs.next()) {
                            String id = rs.getString("kntid");
                    %>

                    <tr>
                        <td><%=rs.getString("kntid")%></td>
                        <td><%=rs.getString("knttipi")%></td>
                        <td><%=rs.getString("kntfiyat")%></td>
                        <td><%=rs.getString("kntmkare")%></td>
                        <td><%=rs.getString("kntkat")%></td>
                        <td><%=rs.getString("kntisitma")%></td>
                        <td><%=rs.getString("kntcephe")%></td>
                        <td><%=rs.getString("kntiletisim")%></td>
                        <td><a href="konutsil.jsp?id=<%=id%>">Kaydı Sil</a></td>
                        
                        

                    </tr> 


                    <%

                        }
                    %>
</body>
</html>
