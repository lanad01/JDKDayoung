<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style type="text/css">
.loginborder{ padding:10px 10px 10px 10px;}
</style>
<body>
<div class="loginborder" style="border:1px solid; padding-left:10px;">
<form action="../logout/logout.html"  method="get">
	<table>
	<tr><td> ${USER.name }��</td>
		<td> ${sessionScope.loginUser}��</td>
	<tr><td><a href="../myaccount/mypage.html?BODY=mypage/mypage"><input style="font-family:'BMDOHYEON'; font-size:0.8em;" type="button" value="����������"></a>
		<td><input type="submit" style="font-family:'BMDOHYEON'; font-size:0.8em;"  value="�α׾ƿ�"/><br>
	</tr>
	</table>
</form>
</div>

<!--  HttpServletRequest�� ��� Request�� Default���̾��� ������ 
      EL������ requestScope�� ������ �ص� �ƾ���
            �ٵ� session�� �ƴϾ� ��
 ------------����--------------------------------------------------------------------------
 pageContext JSP�� page �⺻ ��ü�� �����ϴ�. 
 pageScope  pageContext �⺻ ��ü�� ����� �Ӽ��� [�Ӽ�, ��] ������ ������ Map ��ü 
 requestScope  request �⺻ ��ü�� ����� �Ӽ��� [�Ӽ�, ��] ������ ������ Map ��ü 
 sessionScope session �⺻ ��ü�� ����� �Ӽ��� [�Ӽ�, ��] ������ ������ Map ��ü 
 applicationScope  application �⺻ ��ü�� ����� �Ӽ���  [�Ӽ�, ��]  ������ ������ Map ��ü 
 param  ��û �Ķ������ [�Ķ�����̸�, ��] ������ ������ Map ��ü, Ÿ���� String (request.getParameter(�̸�)�� ����� ����)
 paramValues ��û �Ķ������[�Ķ�����̸�, ���迭]������ ������ Map ��ü, Ÿ���� String[] (request.getParameterValues(�̸�)�� ����� ����)
 header ��û ������ [����̸�, ��] ������ ������ Map ��ü (request.getHeader(�̸�)�� ����� ����)
 headerValues ��û ������[����̸�, �� �迭] ������ ������ Map ��ü (request.getHeaders(�̸�)�� ����� ����)
 cookie [��Ű �̸�, Cookie] ������ ������ Map ��ü (request.getCookies()�� ���� Cookie �迭�� ���� ������ ����) 
 initParam �ʱ�ȭ �Ķ������[�̸�, ��] ������ ������ Map ��ü (application.getInitParameter(�̸�)�� ����� ����) 
 -->
</body>
</html>