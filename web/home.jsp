

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
  
</head>
<body>
<!-- Navbar -->
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

<div style="margin-left: 20% ; margin-right: 20%; margin-top: 30px">
<button style="background:transparent url(img/konutekle.png); width: 200px; height: 110px ; margin-right: 20px; margin-bottom: 20px" onclick="window.location.href='konutekle.jsp'"></button>
<button style="background:transparent url(img/arsaekle.png); width: 200px; height: 110px; margin-right: 20px" onclick="window.location.href='arsaekle.jsp'"></button>
<button style="background:transparent url(img/isyeriekle.png); width: 200px; height: 110px" onclick="window.location.href='isyeriekle.jsp'"></button>
<br>
<button style="background:transparent url(img/konutlistele.png); width: 200px; height: 110px; margin-right: 20px" onclick="window.location.href='konutlistele.jsp'"></button>
<button style="background:transparent url(img/arsalistele.png); width: 200px; height: 110px; margin-right: 20px" onclick="window.location.href='arsalistele.jsp'"></button>
<button style="background:transparent url(img/isyerilistele.png); width: 200px; height: 110px" onclick="window.location.href='isyerilistele.jsp'"></button>
</div>

        <div style="margin-top: -240px" id="sidebar-wrapper">
            <ul class="sidebar-nav">
              <!--   <li class="sidebar-brand">
                    <a href="#">
                        Anasayfa
                    </a>
                </li>  -->
                <li>
                    <a href="konutekle.jsp">Konut Ekle</a>
                </li>
                <li>
                    <a href="konutlistele.jsp">Konut Listele</a>
                </li>
                <li>
                    <a href="arsaekle.jsp">Arsa Ekle</a>
                </li>
                <li>
                    <a href="arsalistele.jsp">Arsa Listele</a>
                </li>
                <li>
                    <a href="isyeriekle.jsp">İşyeri Ekle</a>
                </li>
                <li>
                    <a href="isyerilistele.jsp">İşyeri Lislete</a>
                </li>
                <li>
                    <a href="musteriekle.jsp">Müşteri Ekle</a>
                </li>
              <li>
                    <a href="musterilistele.jsp">Müşteri Listele</a>
                </li>
              <li>
                    <a href="alicimusteriekle.jsp">Alıcı Müşteri Ekle</a>
              </li>
              <li>
                    <a href="alicimusterilistele.jsp">Alıcı Müşteri Listele</a>
              </li>
     
            </ul>
        </div>

    </div>
</body>
</html>
