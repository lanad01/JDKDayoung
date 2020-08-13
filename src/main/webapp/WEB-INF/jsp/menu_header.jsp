<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>JDK������Ʈ</title>

  <!-- Bootstrap core CSS -->
  <link href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/shop-homepage.css" rel="stylesheet">
  <!--  ��Ʈ   -->
  <link href='https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff' rel='stylesheet' type='text/css'>
</head>

<style type="text/css">
@font-face {
font-family: 'BMDOHYEON'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
font-weight: normal; font-style: normal; }
#topmenu {padding-left:140px; padding-right:250px;}
#topmenu li{ float: left;    padding: 12px 4px 4px 4px;    margin-left: 22px;    height: 40px;}
#topmenu dt{ display:none;}
#topmenu .wrap {   height: 50px;  border-bottom: #000000 double 3px; border-top: #000000 double 3px; }
.wrap a { color: black; text-decoration: none; }
.wrap a:hover { background-color:#dcdcdc; }
.bottom{ margin-left:100px;}

/* ��Ӹ޴� ��Ÿ�� */
 .drop { /* nav */
   width: 100%;   display: flex;    justify-content: center; 
  position: relative;   z-index:1 
 } 


#main-menu > li {
  margin: -12px 60px 16px -27px	;
  position: relative;
  list-style: none
}
#main-menu > li > a {
  font-size: 0.85rem;
  text-align: center;
  text-decoration: none;
  letter-spacing: 0.05em;
  display: block;
}
#sub-menu {
  border:1px solid black;
  width:220px; hegiht:20px;
  position: absolute;
  background:#ffffff;
  opacity: 0;
  visibility: hidden;
  transition: all 0.15s ease-in;
  margin: 0px -40px 30px 0px;
}

#sub-menu > li { /* ����޴� ��椷 */
  text-decoration: none;
  list-style: none;
  margin: -10px 100px 0px -40px;
  width:220px;
}
#sub-menu > li >  a {
  text-decoration: none;
  margin-right:100px;
  width:150px;
}
#main-menu > li:hover #sub-menu {
  opacity: 1;
  visibility: visible;
}
#sub-menu > li >  a:hover {
 text-decoration: none;
}

.loginborder{ padding:10px 10px 10px 10px;}
</style>

<script type="text/javascript">

</script>

<body>        

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="../index/index.html">JDK</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="../loginpopup/loginpopup.html">Sign In
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../loginpopup/test.html">Register</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Ranking</a>
          </li>
          <li class="nav-item">
            <input type="text" name="keyword" placeholder="���հ˻�" class="keyword" value="" />
            <a href="#"><img src="../img/searchbutton.png" alt="" width=20 height=30 ></a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!--  ��� �׺���̼� ���� -->
  
  <!--  ���θ޴� ���� -->
  <div id="topmenu">
	<div class="wrap">
		<ul style="list-style:none;">
				<li><font face='BMDOHYEON'><a href="#" target=""><span>��ü�ۺ���</span></a></font>	</li>
		<li class="vline"></li>
				<li><font face='BMDOHYEON'><a href="#" target=""><span>�����</span></a></font></li>
		<li class="vline"></li>
				<li><font face='BMDOHYEON'><a href="../freebbs/freebbs.html" target=""><span>�����Խ���</span></a></font>	</li>
		<li class="vline"></li>
				<li><font face='BMDOHYEON'><a href="#" target=""><span>�����&��</span></a></font></li>
		<li class="vline"></li>
				<li><font face='BMDOHYEON'><a href="#" target=""><span>����&��</span></a></font></li>
		<li class="vline"></li>
				<li><font face='BMDOHYEON'><a href="#" target=""><span>���� �亯</span></a></font></li>
		<li>
			<nav role="navigation" class="drop">
  				<ul id="main-menu">
  	  				<li><font face='BMDOHYEON'><a href="#">��Ȱ��</a></font>
     					<ul id="sub-menu">
       						<li><font face='BMDOHYEON' size="1.3"; ><a href="#" aria-label="subemnu"><span>��&nbsp;���ް� ���巰�Ÿ� �; ���� ��Ȱ��</span></a></font></li>
       						<li><font face='BMDOHYEON' size="1.3"; ><a href="#" aria-label="subemnu">��&nbsp;�����÷����� ��Ȱ��</a></font></li>			
       						<li><font face='BMDOHYEON' size="1.3"; ><a href="#" aria-label="subemnu">��&nbsp;���̽����д���</a></font></li>
      					</ul>
    				</li>
    			</ul>
   			</nav>
  		</li>
		</ul>
	</div>
</div>
  <!--  ���� �޴� ���� -->
  
  <!-- �´� �׺���̼� -->
   <div class="container">
    <div class="row">
      <div class="col-lg-3" style="margin-top:25px;" >
        <div style="border:1px solid; padding:0px;  background-color:#dcdcdc">
        	<font face='BMDOHYEON'>&nbsp; ȸ���α���</font> 
        </div>
        <div class="loginborder" style="border:1px solid; padding-left:10px;">
        	<form action="login.html"  method="post">
			<table>
				<tr>
					<td><input type="text" name="id" style="width:120px; height:20px; border-spacing:2px;"> 
					<input type="text" name="id" style="width:120px; height:20px; border-spacing:2px;"></td>
					<td><input type="submit" style="font-family:'BMDOHYEON'; font-size:1em; margin-left:20px;" value="�α���"/>
					<input type="submit" style="font-family:'BMDOHYEON'; font-size:1em; margin-left:20px;" value="ȸ������"/></td>
				</tr>
			</table>
			</form>
        </div>
        <div style="border:1px solid; padding:10px 0 15px 20px;">
        	<table>
        		<tr style="margin-left:5px;">
        			<th><a href="#" class="list-group-item"><font face='BMDOHYEON' size="2em" color="red">���� �� ��</font></a></th>
          			<th><a href="#" class="list-group-item"><font face='BMDOHYEON' size="2em" color="red">��� ���� ��</font></a></th></tr>
         		<tr><td>&#9312;</td></tr><tr><td>&#9313;</td></tr><tr><td>&#9314;</td></tr><tr><td>&#9315;</td></tr><tr><td>&#9316;</td></tr>
				<tr><td>&#9317;</td></tr><tr><td>&#9318;</td></tr><tr><td>&#9319;</td></tr><tr><td>&#9320;</td></tr><tr><td>&#9321;</td></tr>
			</table>
        </div>
      </div>
      <div>
		<!--  ���� ������â include�������� �սô�  -->
		<%@ include file="/WEB-INF/jsp/freebbs/freebbs.jsp" %>
		</div>
     </div>
	
  <!-- �´� �׺���̼� ���� -->
  	
</div>	
  <!-- Footer -->
  <footer class="py-5 bg-dark" style="margin-top:100px;">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!--  Classname���� ã�°Ŵϱ�.. ../ �ٿ��� ���� ������ ������Ѵ� ���� -->
</body>

</html>

