<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<% 
 
    if(request.getParameter("submit")!=null)
    {
        String arsaid = request.getParameter("arsaid");
        String arsatipi = request.getParameter("arsatipi");
        String arsafiyat = request.getParameter("arsafiyat");
        String arsamkare = request.getParameter("arsamkare");
        String arsaada = request.getParameter("arsaada");
        String arsaparsel = request.getParameter("arsaparsel");
        String arsatapu = request.getParameter("arsatapu");
        String arsailetisim = request.getParameter("arsailetisim");
        
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/emlak", "root", "");
        pst = con.prepareStatement("insert into arsa(arsaid,arsatipi,arsafiyat,arsamkare,arsaada,arsaparsel,arsatapu,arsailetisim)values(?,?,?,?,?,?,?,?)");
        pst.setString(1, arsaid);
        pst.setString(2, arsatipi);
        pst.setString(3, arsafiyat);
        pst.setString(4, arsamkare);
        pst.setString(5, arsaada);
        pst.setString(6, arsaparsel);
        pst.setString(7, arsatapu);
        pst.setString(8, arsailetisim);
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
                        <label class="form-label">Arsa ID</label>
                        <input type="text" class="form-control" placeholder="Arsa ID" name="arsaid" id="arsaid" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Arsa Tipi</label>
                        <input type="text" class="form-control" placeholder="Arsa Tipi" name="arsatipi" id="arsatipi" required >
                     </div>
                                        <div alight="left">
                        <label class="form-label">Arsa Fiyat</label>
                        <input type="text" class="form-control" placeholder="Arsa Fiyat" name="arsafiyat" id="arsafiyat" required >
                     </div>
                                             <div alight="left">
                        <label class="form-label">Arsa Metre Kare</label>
                        <input type="text" class="form-control" placeholder="Arsa Metre Kare" name="arsamkare" id="arsamkare" required >
                                             </div>
                                        <div alight="left">
                        <label class="form-label">Arsa Ada No</label>
                        <input type="text" class="form-control" placeholder="Arsa Ada No" name="arsaada" id="arsaada" required >
                                        </div>
                                        <div alight="left">
                        <label class="form-label">Arsa Parsel No</label>
                        <input type="text" class="form-control" placeholder="Arsa Parsel No" name="arsaparsel" id="arsaparsel" required >
                                        </div>
                                        <div alight="left">
                        <label class="form-label">Arsa Tapu</label>
                        <input type="text" class="form-control" placeholder="Arsa Tapu Durumu" name="arsatapu" id="arsatapu" required >
                                        </div>
                                           <div alight="left">
                        <label class="form-label">Arsa İletişim</label>
                        <input type="text" class="form-control" placeholder="Arsa İletisim Bilgileri" name="arsailetisim" id="arsailetisim" required >
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
                        <th>Konut ID</th>
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

                        String query = "select * from arsa";
                        Statement st = con.createStatement();

                        rs = st.executeQuery(query);

                        while (rs.next()) {
                            String id = rs.getString("arsaid");
                    %>

                    <tr>
                        <td><%=rs.getString("arsaid")%></td>
                        <td><%=rs.getString("arsatipi")%></td>
                        <td><%=rs.getString("arsafiyat")%></td>
                        <td><%=rs.getString("arsamkare")%></td>
                        <td><%=rs.getString("arsaada")%></td>
                        <td><%=rs.getString("arsaparsel")%></td>
                        <td><%=rs.getString("arsatapu")%></td>
                        

                    </tr> 


                    <%

                        }
                    %> --> 

            </table>    
        </div>
    </div>
</body>
</html>