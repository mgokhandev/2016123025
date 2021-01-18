<%-- 
    Document   : musteriekle
    Created on : 16 Oca 2021, 00:07:50
    Author     : MGD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<% 
 
    if(request.getParameter("submit")!=null)
    {
        String musid = request.getParameter("musid");
        String mustipi = request.getParameter("mustipi");
        String musdurum = request.getParameter("musdurum");
        String musfiyat = request.getParameter("musfiyat");
        String musoda = request.getParameter("musoda");
        String muskat = request.getParameter("muskat");
        String musiletisim = request.getParameter("musiletisim");
        
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/emlak", "root", "");
        pst = con.prepareStatement("insert into musteri(musid,mustipi,musdurum,musfiyat,musoda,muskat,musiletisim)values(?,?,?,?,?,?,?)");
        pst.setString(1, musid);
        pst.setString(2, mustipi);
        pst.setString(3, musdurum);
        pst.setString(4, musfiyat);
        pst.setString(5, musoda);
        pst.setString(6, muskat);
        pst.setString(7, musiletisim);
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

           <div class="row" style="margin-left: 20% ; margin-right: 20%">
                          <div class="col-sm-8">
                <form  method="POST" action="#" > 
                    
                    <div alight="left">
                        <label class="form-label">Müşteri ID</label>
                        <input type="text" class="form-control" placeholder="Müşteri ID" name="musid" id="musid" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Müşteri Tipi</label>
                        <input type="text" class="form-control" placeholder="Müşteri Tipi" name="mustipi" id="mustipi" required >
                     </div>
                                        <div alight="left">
                        <label class="form-label">Müşteri Durum</label>
                        <input type="text" class="form-control" placeholder="Müşteri Durum" name="musdurum" id="musdurum" required >
                     </div>
                                             <div alight="left">
                        <label class="form-label">Fiyat</label>
                        <input type="text" class="form-control" placeholder="Müşteri Fiyat" name="musfiyat" id="musfiyat" required >
                                             </div>
                                        <div alight="left">
                        <label class="form-label">Oda Sayısı</label>
                        <input type="text" class="form-control" placeholder="Kat" name="musoda" id="musoda" required >
                                        </div>
                                        <div alight="left">
                        <label class="form-label">Kat</label>
                        <input type="text" class="form-control" placeholder="Kat" name="muskat" id="muskat" required >
                                        </div>
                                           <div alight="left">
                        <label class="form-label">İletişim</label>
                        <input type="text" class="form-control" placeholder="İletisim Bilgileri" name="musiletisim" id="musiletisim" required >
                                        </div>
                    <br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="Kaydet" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="Sıfırla" name="reset" class="btn btn-warning">
                     </div>  
                         
                </form>
            </div>
   <!--            
    <div class="col-sm-8">
        <div class="panel-body">
            <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
                <thead>
                    <tr>
                        <th>İş Yeri ID</th>
                        <th>Tipi</th>
                        <th>Fiyat</th>
                        <th>Metre Kare</th>
                        <th>Kat</th>
                        <th>Isıtma</th>
                        <th>Cephe</th>

                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>  

                               <%

                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/emlak", "root", "");

                        String query = "select * from musteri";
                        Statement st = con.createStatement();

                        rs = st.executeQuery(query);

                        while (rs.next()) {
                            String id = rs.getString("musid");
                    %>

                    <tr>
                        <td><%=rs.getString("musid")%></td>
                        <td><%=rs.getString("mustipi")%></td>
                        <td><%=rs.getString("musdurum")%></td>
                        <td><%=rs.getString("musfiyat")%></td>
                        <td><%=rs.getString("musoda")%></td>
                        <td><%=rs.getString("muskat")%></td>
                        <td><%=rs.getString("musiletisim")%></td>

                    </tr> 


                    <%

                        }
                    %> --> 

            </table>    
        </div>
    </div>
</body>
</html>