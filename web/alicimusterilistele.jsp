<%-- 
    Document   : alicialmusterilistele
    Created on : 16 Oca 2021, 00:08:35
    Author     : MGD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<% 
 
    if(request.getParameter("submit")!=null)
    {
        String almusid = request.getParameter("almusid");
        String almustipi = request.getParameter("almustipi");
        String almusdurum = request.getParameter("almusdurum");
        String almusfiyat = request.getParameter("almusfiyat");
        String almusoda = request.getParameter("almusoda");
        String almuskat = request.getParameter("almuskat");
        String almusiletisim = request.getParameter("almusiletisim");
        
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/emlak", "root", "");
        pst = con.prepareStatement("insert into almusteri(almusid,almustipi,almusdurum,almusfiyat,almusoda,almuskat,almusiletisim)values(?,?,?,?,?,?,?)");
        pst.setString(1, almusid);
        pst.setString(2, almustipi);
        pst.setString(3, almusdurum);
        pst.setString(4, almusfiyat);
        pst.setString(5, almusoda);
        pst.setString(6, almuskat);
        pst.setString(7, almusiletisim);
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
                        <th>Müşteri ID</th>
                        <th>Tipi</th>
                        <th>Durum</th>
                        <th>Fiyat</th>
                        <th>Oda Sayısı</th>
                        <th>Kat</th>
                        <th>İletisim</th>

                        
                        <th>Sil</th>
                    </tr>  

                               <%

                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/emlak", "root", "");

                        String query = "select * from almusteri";
                        Statement st = con.createStatement();

                        rs = st.executeQuery(query);

                        while (rs.next()) {
                            String id = rs.getString("almusid");
                    %>

                    <tr>
                        <td><%=rs.getString("almusid")%></td>
                        <td><%=rs.getString("almustipi")%></td>
                        <td><%=rs.getString("almusdurum")%></td>
                        <td><%=rs.getString("almusfiyat")%></td>
                        <td><%=rs.getString("almusoda")%></td>
                        <td><%=rs.getString("almuskat")%></td>
                        <td><%=rs.getString("almusiletisim")%></td>

                    </tr> 


                    <%

                        }
                    %> 
</body>
</html>