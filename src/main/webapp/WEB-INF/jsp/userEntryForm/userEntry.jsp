<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ���ȭ��</title>
</head>
<body>
<h2 align="center"> ������ ��� ���� �Է�</h2>
<div align="center" class="body">
<form:form action="userEntry.html" method="post" modelAttribute="user">
<spring:hasBindErrors name="user">
	<font color="red">
		<c:forEach items="${errors.globalErrors}" var="error">
			<spring:message code="${error.code }"/>
		</c:forEach>
	</font>
</spring:hasBindErrors>
<table>
	<tr height="40px"><td> �����id</td>
	  <td><form:input path="id" maxlength="20" cssClass="userId"/>
	  <font color="red"> <form:errors path="id"/></font></td></tr>
	<tr height="40px"><td>�н�����</td>
	  <td><form:input path="pwd" maxlength="20" cssClass="password"/>
	  <font color="red"> <form:errors path="pwd"/></font></td></tr>
	<tr height="40px"><td>�̸�</td>
	  <td><form:input path="name" maxlength="20" cssClass="userName"/>
	  <font color="red"> <form:errors path="name"/></font></td></tr>
	<tr height="40px"><td>�����ȣ</td>
	  <td><form:input path="address" maxlength="20" cssClass="address"/>
	  <font color="red"> <form:errors path="address"/></font></td></tr>
	<tr height="40px"><td>E-Mail</td>
	  <td><form:input path="email" maxlength="20" cssClass="email"/>
	  <font color="red"> <form:errors path="email"/></font></td></tr>
	<tr height="40px"><td>����</td>
	  <td><form:radiobutton path="gender" value="M" label="����" cssClass="gender"/>
	  	  <form:radiobutton path="gender" value="F" label="����" cssClass="gender"/>
	  	  <font color="red"><form:errors path="gender"/></font></td></tr>
	<tr height="40px"><td>����</td>
	  <td><form:select path="job" cssClass="job">
		  <form:option value="ȸ���" label="ȸ���"/>	
		  <form:option value="�л�" label="�л�"/>
		  <form:option value="�ֺ�" label="�ֺ�"/>
		  <form:option value="��Ÿ" label="��Ÿ"/>	
		  </form:select></td></tr>  
</table>
<table>
	<tr><td height="40px" align="center">
		<input type="submit" value="���" name="btnSubmit"/></td>
		<td height="40px" align="center">
		<input type="reset" value="����" name="btnReset"/></td>
</table>
</form:form>
<a>������� ���ư���</a>
</div>
</body>
</html>