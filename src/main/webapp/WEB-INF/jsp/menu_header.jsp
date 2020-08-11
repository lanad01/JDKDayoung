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
font-family: 'BMDOHYEON';
src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
font-weight: normal; font-style: normal;
}
#topmenu {padding-left:110px; padding-right:250px;}
#topmenu li{ float: left;    padding: 12px 4px 4px 4px;    margin-left: 18px;    height: 40px;}
#topmenu dt{ display:none;}
#topmenu .wrap {   height: 50px;   border-bottom: #dfdfdf solid 1px; border-top: #dfdfdf solid 1px;
	border-bottom-width: 1px;    border-bottom-style: solid;    border-bottom-color: rgb(223, 223, 223); }
.wrap a { color: black; text-decoration: none; }
.wrap a:hover { background-color:#dcdcdc; }


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
            <a class="nav-link" href="#">Register</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Ranking</a>
          </li>
          <li class="nav-item">
            <input type="text" name="keyword" placeholder="���հ˻�" class="keyword" value="" />
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
		<li class="vline"></li>
				<li><font face='BMDOHYEON'><a href="#" target=""><span>��Ȱ��</span></a></font></li>
				<li>
				<div id="subMenuBox36">
				<dl>
					<dt><a href="./?c=36/138" target="">������ �ڵ���</a></dt>
					<dt><a href="./?c=36/139" target="">���ް� ���巰�Ÿ��� �; ����</a></dt>
					<dt><a href="./?c=36/141" target="">�ٳ��� ����� �ع��� ��Ȱ��</a></dt>
					<dt><a href="./?c=36/153" target="">Ż ������ �ٶ��ǹ������ ��Ȱ��</a></dt>
					<dt><a href="./?c=36/154" target="">D.exter�� ĳ���� �ֹ� ���� ��Ȱ��</a></dt>
					<dt><a href="./?c=36/155" target="">Youth is wasted on the YoungSung</a></dt>
					<dt><a href="./?c=36/158" target="">���ػ��� ���б� ��������</a></dt>
				</dl>
				</div>
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
        <div style="border:1px solid; padding-left:10px;">
        	<form action="login.html"  method="post">
			<table>
			<tr height="16px">
				<td><input type="text" name="id" style="width:120px; hegiht:10px; margin-left:20px;"/>
				<input type="submit" style="font-family:'BMDOHYEON'; margin-left:20px;" value="�α���"/></td>
			</tr>
			<tr height="16px">
				<td><input type="password" name="password" style="width:120px; hegiht:10px; margin-left:20px; " />
				</td>
			</tr>
			</table>
			<table class="login">
			<tr>
				<td align="center"><input type="reset" style="font-family:'BMDOHYEON';" value="���"/></td>
				<td><input type="button" onclick="window.location.href='https://www.w3docs.com';" style="font-family:'BMDOHYEON';" value="ȸ������" /></td>
			</tr>
			</table>
			</form>
        </div>
        <div style="border:1px solid; padding-left:10px;">
        	<table>
        		<tr><th>&nbsp;</th>
        			<th><a href="#" class="list-group-item"><font face='BMDOHYEON' size="2em" color="red">���� �� ��</font></a></th>
          			<th><a href="#" class="list-group-item"><font face='BMDOHYEON' size="2em" color="red">��� ���� ��</font></a></th></tr>
         		<tr><td>&#9312;</td></tr><tr><td>&#9313;</td></tr><tr><td>&#9314;</td></tr><tr><td>&#9315;</td></tr><tr><td>&#9316;</td></tr>
				<tr><td>&#9317;</td></tr><tr><td>&#9318;</td></tr><tr><td>&#9319;</td></tr><tr><td>&#9320;</td></tr><tr><td>&#9321;</td></tr>
			</table>
        </div>
      </div>
      <!-- �´� �׺���̼� ���� -->
	
	  <!--  ���� ������â include�������� �սô�  -->
      <div class="col-lg-9">
     
      <%@ include file="/WEB-INF/jsp/freebbs/freebbs.jsp" %>
     
      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
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

