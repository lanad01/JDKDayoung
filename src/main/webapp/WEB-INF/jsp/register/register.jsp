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
<form action="../register/register.html">
<spring:hasBindErrors name="user">
	<font color="red">
		<c:forEach items="${errors.globalErrors}" var="error">
			<spring:message code="${error.code }"/>
		</c:forEach>
	</font>
</spring:hasBindErrors><!--  ��� Ȯ�� -->
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
		<td><input type="text" name="name" value="" maxlength="10" class="input" />
		<div>�̸��� �ݵ�� �����ּž� �մϴ�.</div>
		</td>
		
	</tr>
	<tr>
		<td class="key">�г���<h5>*</h5></td>
		<td><input type="text" name="nic" value="" maxlength="20" class="input" onblur="sameCheck(this,'hLayernic');" />
	    <!--  onblur : ���콺 Ŀ���� ���������� ���� �̺�Ʈ -->
		<span class="hmsg" id="hLayernic"></span>
		<div>�г����� �ڽ��� ǥ���� �� �ִ� �ܾ�� 20�ڱ��� �����Ӱ� ����� �� �ֽ��ϴ�.</div>
		</td>
	</tr>
	<tr>
		<td class="key">�������</td>
		<td>
		<select name="birth_1">
		<c:forEach var="i" begin="0" end="${2016-1930}">
  		  <c:set var="yearOption" value="${2016-i}" />
    		<option value="${yearOption}">${yearOption}</option>
		</c:forEach>
		</select>
		<select name="birth_2">
		<option value="">��</option>
			<option value="01">1</option>
			<option value="02">2</option>
			<option value="03">3</option>
			<option value="04">4</option>
			<option value="05">5</option>
			<option value="06">6</option>
			<option value="07">7</option>
			<option value="08">8</option>
			<option value="09">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
		</select>
		<select name="birth_3">
		<option value="">��</option>
		<c:forEach var="i" begin="1" end="31">
  		  <c:set var="day" value="${i}" />
    		<option value="${day}">${day}</option>
		</c:forEach>
		</select>
		</td>
	</tr>
	<tr>
		<td class="key">����</td>
		<td class="shift">
			<input type="radio" name="sex" value="1" /><font face='BMDOHYEON' size="0.9em">����</font>
			<input type="radio" name="sex" value="2" /><font face='BMDOHYEON' size="0.9em">����</font>
		</td>
	</tr>	
	<tr>
	<td class="key">���̵�<h5>*</h5></td>
		<td>
			<input type="text" name="id" value="" maxlength="12" class="input" onblur="sameCheck(this,'hLayerid');" />
			<span class="hmsg" id="hLayerid"></span>
			<div>4~12���� ����(�ҹ���)�� ���ڸ� ����� �� �ֽ��ϴ�.</div>
		</td>
	</tr>
	<tr>
		<td class="key">��й�ȣ<h5>*</h5></td>
		<td><input type="password" name="pw1" value="" maxlength="20" class="input" />
			<div>4~12���� ������ ���ڸ� ����� �� �ֽ��ϴ�.</div>
		</td>
	</tr>
	<tr>
		<td class="key">��й�ȣ Ȯ��<h5>*</h5></td>
		<td>
		<input type="password" name="pw2" value="" maxlength="20" class="input" />
		<div>��й�ȣ�� �ѹ� �� �Է��ϼ���. ��й�ȣ�� ���� �ʵ��� �����Ͻñ� �ٶ��ϴ�.</div>
		</td>
	</tr>
	<tr>
		<td class="key">���ã�� ����<h5>*</h5></td>
		<td>
		<select name="_pw_q" class="pw_q1">
		<option value="">&nbsp;+ �����Ͻʽÿ�.</option>
		<option value="">-----------------------------------------------------------------------------</option>
				<option>������ �����ϴ� ĳ���ʹ�?</option>
				<option>��Ÿ���� �𸣴� �ڽŸ��� ��ü����� �ִٸ�?</option>
				<option>���ڽ��� �λ� �¿����?</option>
				<option>���ʵ��б� �� ��￡ ���� ¦�� �̸���?</option>
				<option>��������� ���� �������� ģ�� �̸���?</option>
				<option>������ ��￡ ���� ������ ������?</option>
				<option>��ģ���鿡�� �������� ���� � �� ������ �ִٸ�?</option>
				<option>���ٽ� �¾�� �ǰ� ���� ����?</option>
				<option>������ ������ �� ��ȭ��?</option>
				<option>������ å �߿��� �����ϴ� ������ �ִٸ�?</option>
				<option>����￡ ���� �߾��� ��Ҵ�?</option>
				<option>���λ� ��� ���� å �̸���?</option>
				<option>���ڽ��� ���� ��1ȣ��?</option>
				<option>���޾Ҵ� ���� �� ��￡ ���� ��Ư�� ������?</option>
				<option>���ڽ��� �ι�°�� �����ϴ� �ι���?</option>
				<option>���ƹ����� ������?</option>
				<option>����Ӵ��� ������?</option>
				</select><br />
		<div><input type="text" name="pw_q" value="" class="input pw_q2" /></div>
		</td>
	</tr>
	<tr>
		<td class="key">���ã�� �亯<h5>*</h5></td>
		<td><input type="text" name="pw_a" value="" class="input" />
		<div>
		��й�ȣã�� ������ ���� �亯�� ȥ�ڸ� �� �� �ִ� �ܾ ��ȣ�� �Է��� �ּ���.<br />
		��й�ȣ�� ã�� �� �ʿ��ϹǷ� �ݵ�� ����� �ּ���.
		</div>
		</td>
	</tr>
	<tr>
		<td class="key">�̸���</td>
		<td><input type="text" name="email" value="" size="35" class="input" onblur="sameCheck(this,'hLayeremail');" />
		<span class="hmsg" id="hLayeremail"></span></td>
	</tr>
	<tr>
		<td class="key">����</td>
		<td><input type="text" name="area" value="" size="15" class="input" />
		
		</td>
	</tr>
	<tr>
		<td></td>
		<td><div class="submitbox">
			<input type="button" value="�������" class="btngray" onclick="goHref('./');" />
			<input type="submit" value="ȸ������" class="btnblue" />
		</div></td>
	</tbody>
</table>
</form>
</div>
</body>
</html>