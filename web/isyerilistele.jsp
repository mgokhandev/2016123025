<%-- 
    Document   : isyerilistele
    Created on : 14 Oca 2021, 23:20:02
    Author     : MGD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<% 
 
    if(request.getParameter("submit")!=null)
    {
        String isid = request.getParameter("isid");
        String istipi = request.getParameter("istipi");
        String isfiyat = request.getParameter("isfiyat");
        String ismkare = request.getParameter("ismkare");
        String isodasayi = request.getParameter("isodasayi");
        String isisitma = request.getParameter("isisitma");
        String isdepozito = request.getParameter("isdepozito");
        String isiletisim = request.getParameter("isiletisim");
        
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/emlak", "root", "");
        pst = con.prepareStatement("insert into isyeri(isid,istipi,isfiyat,ismkare,isodasayi,isisitma,isdepozito,isiletisim)values(?,?,?,?,?,?,?,?)");
        pst.setString(1, isid);
        pst.setString(2, istipi);
        pst.setString(3, isfiyat);
        pst.setString(4, ismkare);
        pst.setString(5, isodasayi);
        pst.setString(6, isisitma);
        pst.setString(7, isdepozito);
        pst.setString(8, isiletisim);
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
                        <th>İş Yeri ID</th>
                        <th>Tipi</th>
                        <th>Fiyat</th>
                        <th>Metre Kare</th>
                        <th>Oda Sayısı</th>
                        <th>Isıtma</th>
                        <th>Depozito</th>
                        <th>İletisim</th>

                        
                        <th>Sil</th>
                    </tr>  

                               <%

                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/emlak", "root", "");

                        String query = "select * from isyeri";
                        Statement st = con.createStatement();

                        rs = st.executeQuery(query);

                        while (rs.next()) {
                            String id = rs.getString("isid");
                    %>

                    <tr>
                        <td><%=rs.getString("isid")%></td>
                        <td><%=rs.getString("istipi")%></td>
                        <td><%=rs.getString("isfiyat")%></td>
                        <td><%=rs.getString("ismkare")%></td>
                        <td><%=rs.getString("isodasayi")%></td>
                        <td><%=rs.getString("isisitma")%></td>
                        <td><%=rs.getString("isdepozito")%></td>
                        <td><%=rs.getString("isiletisim")%></td>

                    </tr> 


                    <%

                        }
                    %>
</body>
</html>