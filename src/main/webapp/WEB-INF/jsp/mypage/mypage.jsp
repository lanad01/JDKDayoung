<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link href='https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff'	rel='stylesheet' type='text/css'>
<style type="text/css">
.main {	margin: 20px 0 0 10px;}

@font-face {font-family: 'BMDOHYEON';	src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff');	format('woff');
	font-weight: normal;	font-style: normal;}
.msg {	font-size: 1em;	font-family: 'BMDOHYEON';	font-color: red;	border-top: 3px solid black; width: 700px;}
.msg a{ color: black;}
.xr{ margin-top:-10px;}
.xr li { position: relative;    top: 6px;    height: 26px;    list-style-type: none;    float: left;    border-top: #dfdfdf solid 1px;  border-right: #dfdfdf solid 1px;
    border-bottom: #dfdfdf solid 1px;    background: #f9f9f9;    cursor: pointer;    color: #666666; float:right; margin-left:10px; }
.morebox { display:none; }
.xr li .morebox li { margin-left:10px;   list-style-type: none;   float: none;    height: 15px;  margin-top:7px;  background: #ffffff; }
.xr li .morebox li a{ text-decoration:none;}
</style>
</head>
<script type="text/javascript">
function morebox(){ document.getElementById("morebox").style.display = "block"; }
function moreboxClose(){ document.getElementById("morebox").style.display = "none"; }
</script>
<body>
	<div class="main">
		<div class="header">
			<h2><font face='BMDOHYEON'>����������</font></h2>
		</div>
		<div class="msg">
			<div class="xr">
			<ul>
			<li><a onclick="morebox();">ȸ������</a><img src="../img/dropClose.gif" onClick="moreboxClose()" height=10 width=10>
				<div id="morebox" class="morebox">
				<ul><li style="margin-top:2px;"><a href="" id="1" onmouseover="focus(this)">��������</a></li>
					<li><a href="" id="2" onmouseover="focus(this)">�������</a></li>	
					<li><a href="" id="3" onmouseover="focus(this)">ȸ��Ż��</a></li>
				</ul>
				</div>
				
			</li>
			<li><a href="">�Խù�</a></li>			
			<li><a href="">���</a></li>			
			<li><a href="">�����ǰ�</a></li>			
			<li><a href="">ĳ����</a></li>	
			<li><a href="">����Ʈ</a></li>		
			<li><a href="">���ӱ��</a></li>			
			</ul>
			</div><br/><br/>
			<div class="main2" style="float:left">
				<div class="photo" style="float:left"><img alt="" src="../img/profile.jpg"></div>
				<div class="Explain" style="float:left">�� ���� �ǻ��(����)���� ���� �����Դϴ�. <br/>
				ȸ������ Ȱ�������� �ǽð����� Ȯ���Ͻ� �� �ֽ��ϴ�.<br/>
				ȸ����� : ����11(11/25)   ����Ʈ : 1,362   ������ : 2015.10.21 (1759����)</div>
			</div>
		</div><!-- Ui����  -->
	</div>
</body>
</html>