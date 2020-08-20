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
<link href='https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff' rel='stylesheet' type='text/css'>
<style type="text/css">
 
@font-face {
font-family: 'BMDOHYEON'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
font-weight: normal; font-style: normal; }

.msg {  font-size: 1em; font-family:'BMDOHYEON'; font-color:red; border-top:3px solid black; padding:20px 0 20px 0; width:700px; }
.key{   font-size: 0.7em; font-family:'BMDOHYEON'; font-color:red;  }

.joinTable td{ border-top:1px solid silver; padding:10px 0 10px 0;  }
.joinTable div{ font-family:'BMDOHYEON';  font-size: 0.7em; font-color:#0000ff; padding-top:10px;}
.joinTable h5{ color:#ff0000;}
input{ height:25px;}
.submitbox {top:50%; right:50%;}
.btngray { font-family:'BMDOHYEON';
    cursor: pointer;
    border: #666666 solid 1px;
    background: #B3B3B3 left bottom repeat-x;
    color: #ffffff;
    height: 21px;
}
.btnblue { font-family:'BMDOHYEON';
    cursor: pointer;
    border: #3399DD solid 1px;
    background: #33C9FD left bottom repeat-x;
    color: #ffffff;
    height: 21px;
}
</style>
</head>
<body>
<div style="padding:30px 0 0 15px;">
<form:form action="../register/registerpost.html" modelAttribute="user" method="post" enctype="multipart/form-data">
	<h2><font face='BMDOHYEON'>ȸ������</font></h2>
	<div class="msg">
		<span>(*)</span> ǥ�ð� �ִ� �׸��� �ݵ�� �Է��ؾ� �մϴ�.<br />
		������ �ۼ��� ������ ��� ������ �����ǰų� ���Ƿ� ����ó���� �� ������ ������ �ּ���.
	</div>
<table class="joinTable" summary="ȸ������ �⺻������ �Է¹޴� ǥ�Դϴ�.">
<colgroup> 
<col width="100"> 
<col> 
</colgroup>
<thead>
<tr>
	<th scope="col"></th>
	<th scope="col"></th>
</tr>
</thead>
<tbody> <!--  ������ �ۼ� ���� -->
<tr>
	<td class="key">�̸�(�Ǹ�)<h5>*</h5></td>
		<td><form:input type="text" path="name" maxlength="10" class="input" />
		<font color="red"><form:errors path="name"></form:errors></font>
		<div>�̸��� �ݵ�� �����ּž� �մϴ�.</div>
		</td>
	</tr>
	<tr>
		<td class="key">�г���<h5>*</h5></td>
		<td><form:input type="text" path="nick" value="" maxlength="20" class="input" onblur=""/>
		<font color="red"><form:errors path="name"></form:errors></font>
	    <!--  onblur : ���콺 Ŀ���� ���������� ���� �̺�Ʈ -->
		<span class="hmsg" id="hLayernic"></span>
		<div>�г����� �ڽ��� ǥ���� �� �ִ� �ܾ�� 20�ڱ��� �����Ӱ� ����� �� �ֽ��ϴ�.</div>
		</td>
	</tr>
	<tr>
		<td class="key">�������</td>
		<td>
		<form:select path="birth_date">
		<c:forEach var="i" begin="0" end="${2016-1930}">
  		  <c:set var="yearOption" value="${2016-i}" />
    		<form:option value="${yearOption}" label="${yearOption }"/>
		</c:forEach>
		</form:select>
		</td>
	</tr>
<%-- 		<formselect name="birth_2"> --%>
<!-- 		<option value="">�� -->
<!-- 			<option value="01">1 -->
<!-- 			<option value="02">2 -->
<!-- 			<option value="03">3 -->
<!-- 			<option value="04">4 -->
<!-- 			<option value="05">5 -->
<!-- 			<option value="06">6 -->
<!-- 			<option value="07">7 -->
<!-- 			<option value="08">8 -->
<!-- 			<option value="09">9 -->
<!-- 			<option value="10">10 -->
<!-- 			<option value="11">11 -->
<!-- 			<option value="12">12 -->
<!-- 		</select> -->
<!-- 		<select name="birth_3"> -->
<!-- 		<option value="">�� -->
<%-- 		<c:forEach var="i" begin="1" end="31"> --%>
<%--   		  <c:set var="day" value="${i}" /> --%>
<%--     		<option value="${day}">${day} --%>
<%-- 		</c:forEach> --%>
<!-- 		</select> -->
<!-- 		</td> -->
<!-- 	</tr> -->
	<tr>
		<td class="key">����</td>
		<td class="shift">
			<form:radiobutton path="gender" value="M" /><font face='BMDOHYEON' size="0.9em">����</font>
			<form:radiobutton path="gender" value="F" /><font face='BMDOHYEON' size="0.9em">����</font>
		</td>
	</tr>	
	<tr>
	<td class="key">���̵�<h5>*</h5></td>
		<td>
			<form:input path="id" maxlength="12" class="input" onblur=""/>
			<font color="red"><form:errors path="id"></form:errors></font>
			<span class="hmsg" id="hLayerid"></span>
			<div>4~12���� ����(�ҹ���)�� ���ڸ� ����� �� �ֽ��ϴ�.</div>
		</td>
	</tr>
	<tr>
		<td class="key">��й�ȣ<h5>*</h5></td>
		<td><form:password path="password" maxlength="20" class="input" />
		<font color="red"><form:errors path="password"></form:errors></font>
			<div>4~12���� ������ ���ڸ� ����� �� �ֽ��ϴ�.</div>
		</td>
	</tr>
	<tr>
		<td class="key">��й�ȣ Ȯ��<h5>*</h5></td>
		<td>
		<form:password path="pwdCheck"  maxlength="20" class="input" />
		<font color="red"><form:errors path="pwdCheck"></form:errors></font>
		<div>��й�ȣ�� �ѹ� �� �Է��ϼ���. ��й�ȣ�� ���� �ʵ��� �����Ͻñ� �ٶ��ϴ�.</div>
		</td>
	</tr>
	<tr>
		<td class="key">���ã�� ����<h5>*</h5></td>
		<td>
		<form:select path="quiz" class="pw_q1">
			<form:option value="�����Ͻʽÿ�" label="�����Ͻʽÿ�"/>
			<form:option value="-------------------------------"/>
				<form:option value="���� �����ϴ� ĳ���ʹ�?" label="���� �����ϴ� ĳ���ʹ�?"/>
				<form:option value="Ÿ���� �𸣴� �ڽŸ��� ��ü����� �ִٸ�?" label="Ÿ���� �𸣴� �ڽŸ��� ��ü����� �ִٸ�?"/>
				<form:option value="�ڽ��� �λ� �¿����?" label="�ڽ��� �λ� �¿����?"/>
				<form:option value="�ʵ��б� �� ��￡ ���� ¦�� �̸���?" label="�ʵ��б� �� ��￡ ���� ¦�� �̸���?"/>
				<form:option value="������� ���� �������� ģ�� �̸���?" label="������� ���� �������� ģ�� �̸���?"/>
				<form:option value="���� ��￡ ���� ������ ������?" label="���� ��￡ ���� ������ ������?"/>
				<form:option value="� �� ������ �ִٸ�?" label="� �� ������ �ִٸ�?"/>
				<form:option value="���� ������ �� ��ȭ��?" label="���� ������ �� ��ȭ��?"/>
				<form:option value="��￡ ���� �߾��� ��Ҵ�?" label="��￡ ���� �߾��� ��Ҵ�?"/>
				<form:option value="���� �����ϴ� ĳ���ʹ�?" label="���� �����ϴ� ĳ���ʹ�?"/>
				<form:option value="�ƹ����� �̸���?" label="�ƹ����� �̸���?"/>
				<form:option value="��Ӵ��� �̸���?" label="��Ӵ��� �̸���?"/>
				</form:select><br/>
		<div><form:input path="quiz" class="input pw_q2" /></div>
		<font color="red"><form:errors path="quiz"></form:errors></font>
		</td>
	</tr>
	<tr>
		<td class="key">���ã�� �亯<h5>*</h5></td>
		<td><form:input path="answer" class="input" />
		<font color="red"><form:errors path="answer"></form:errors></font>
		<div>
		��й�ȣã�� ������ ���� �亯�� ȥ�ڸ� �� �� �ִ� �ܾ ��ȣ�� �Է��� �ּ���.<br />
		��й�ȣ�� ã�� �� �ʿ��ϹǷ� �ݵ�� ����� �ּ���.
		</div>
		</td>
	</tr>
	<tr>
		<td class="key">�̸���</td>
		<td><form:input path="email" size="35" class="input" />
		<font color="red"><form:errors path="email"></form:errors></font>
		<span class="hmsg" id="hLayeremail"></span></td>
	</tr>
	<tr>
		<td class="key">����</td>
		<td><form:input path="area" size="15" class="input" />
		
		</td>
	</tr>
	<tr>
		<td class="key">����</td>
		<td><input type="file" name="picture"/>
	<tr>
		<td></td>
		<td><div class="submitbox">
			<input type="button" value="�������" class="btngray" onclick="location.href='../index/index.html?BODY=freebbs/freebbs'"/>
			<input type="submit" value="ȸ������" class="btnblue" />
		</div></td>
	</tbody>
</table>
</form:form>
</div>
</body>
</html>