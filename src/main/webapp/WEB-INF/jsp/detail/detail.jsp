<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/3-1.css">
</head>
<body>
<%@ include file="/WEB-INF/jsp/menu_header.jsp" %>
<div align="center" class="body"></div>
<h2>���� �� ����</h2>
<table>
	<tr><td><img alt="" src="../img/${sendMap.picture_url}"></td>
		<td align="center">
			<table>
				<tr height="50">
					<td width="80">��ǰ�̸�</td>
					<td width="160">${sendMap.item_name }</td>
				</tr>
				<tr height="50">
					<td width="80">����</td>
					<td width="160">${sendMap.price }</td>
				</tr>
				<tr height="50">
					<td width="80">��ǰ����</td>
					<td width="160">${sendMap.description }</td>
				</tr>
				<tr>
					<td colspan="2" align="center" width="230">
						<form action="../cart/cartAdd.html"> 
						<!--  itemId�� quantity�� cartController�� ���� -->
							<input type="hidden" name="itemId" value="${sendMap.item_id }"/>
							<table>
								<tr><td><select name="quantity">
										<option>1</option><option>2</option>
										<option>3</option><option>4</option>
										<option>5</option><option>6</option>
										</select> &nbsp;��</td>
									<td><input type="submit" value="īƮ�� ���"/></td></tr>
							</table>
						</form>
					</td>
				<tr><td colspan="2" align="center" width="240">
					<a href="../index/index.html"> ������� ���ư���</a></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</body>
</html>