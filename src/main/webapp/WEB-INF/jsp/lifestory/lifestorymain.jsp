<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>




<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link
	href='https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff'
	rel='stylesheet' type='text/css'>
</head>
<style type="text/css">
@font-face {
font-family: 'BMDOHYEON';
src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
font-weight: normal; font-style: normal;
}
.upper {
	border: 1px solid silver;
	width: 726px;
	height: 40px;
	table-layout: fixed;
	
}
.list{ font-size: 1em; font-family:'BMDOHYEON'; }
.list li{ list-style:none; }
.list ul{ padding-right:26px;}
.list a{ text-decoration:none }
.upper td {padding-left: 20px;}

</style>
<body>
	<div class="upperdiv">
		<img alt="" src="img/total.jpg" width=50 height=20>
		<table class="upper">
			<tr style="width:400px;"> <%@ include file="/WEB-INF/jsp/gridBBS/ad.jsp" %></tr>
			<tr>
				<td><img alt="" src="../img/total.jpg">&nbsp;&nbsp; 
				<font face='BMDOHYEON'>JDK���� �Ϻ� ������ ��Ȱ�⸦ �����Ͻ� �е��� �����մϴ�. </font></td>
				
			</tr>
		</table>
	</div> 
	<div class="lifestorymain" style="text-align:center; padding-top:20px;">
	<img src="../img/lifestory.png" alt="" height=300 width=600>
	</div>
	<div class="list" style="text-align:center; padding-top:20px;">
	<h2>���� ���� ��Ȱ�� ���</h2>
		<ul>
			<li><a href="#" >�� ���ް� ���巰�Ÿ� �; ���� ��Ȱ��</a></li>
			<li><a href="#">�� �����÷����� ��Ȱ��</a></li>
			<li><a href="#">�� ���̽����д���</a></li>
		</ul>
	</div>
</body>
</html>