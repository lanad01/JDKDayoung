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

<link	href='https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff'	rel='stylesheet' type='text/css'>

<style type="text/css">
.main {	margin: 30px 0 0 10px;}
@font-face {
	font-family: 'BMDOHYEON';
	src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff');
	format ('woff');
	font-weight: normal;
	font-style: normal;
}
span.sp_btn00 {
    display: inline-block;
    border: #DEDFDE solid 1px;
}
span.sp_btn00 {
    display: inline-block;
    border: #DEDFDE solid 1px;
}
span.sp_btn00 a {
    display: inline-block;
    padding: 4px 8px;
    color:black;
    font: 13px BMDOHYEON;
    letter-spacing: -1px;
    text-decoration: none;
    background: none repeat scroll 0 0 #FFFFFF;
    border-top: #FFFFFF 1px solid;
}
.topbox div.topside {
    float: right;
}

.sbjbox {
    margin-top: 10px;
    padding: 5px 10px 5px 10px;
    border: solid;
    border-width: 2px 1px 1px 1px;
}
.sbjbox .subject {
    margin: 0;
    padding: 10px 0 10px 0;
}
.sbjbox .subject h1 {
    margin: 0;
    padding: 0;
    font: bold 14px BMDOHYEON;
}

.sbjbox .subject .date {
    float: right;
    margin: -7px 0 0 0;
    text-align: right;
    font: 10px BMDOHYEON;
}
.sbjbox .content {
display: inline-block; white-space: pre-line; overflow: visible; 
 font: 11px BMDOHYEON;  
}
.bottom {
    padding: 10px 0 10px 0;
    text-align: left;
}
.bottom div.bottomside {
    float: right; margin-right:9px;
}
.commentHeader { font: 11px BMDOHYEON; } 
.commentTable{ margin:10px 10px 10px 15px; border-bottom:2px dotted silver;  }
.commentTable td{font: 10px BMDOHYEON; padding-bottom:20px;}
.oneLine { font: 10px BMDOHYEON;}
</style>
</head>
<script type="text/javascript">

</script>
<body>
	<div> ${postNum }</div>
	<div class="main" style="width:730px;">
		<div class="topbox">
			<span class="sp_btn00" style="margin-left:-8px;"><a href="">������</a></span>
			<span class="sp_btn00"><a href="" onclick="alert('�������� �����ϴ�.')">������</a></span>
		<div class="topside" style="margin-right:10px;"><span class="sp_btn00"><a href="../freebbs/freebbs.html?BODY=freebbs/freebbs">�������</a></span></div>
		</div>
	</div>
	<div class="sbjbox" style="width:730px;">
		<div class="subject"> 
			<h1><span class="category"></span> 34�� ���� �ٹ� �ı�. <span class="date">Read 139<br />Score 1/0<br /> By. 2020.08.17 10:07</span></h1> 
		</div> 
	</div>
	<div class="sbjbox" style="width:730px;">
		<div id="vContent" class="content" style="width:730px; margin:10px 50px 10px 10px; padding-right:40px;">
��ü��&���&�еζ�����<br />

���� ���� ȯ������ �ʽ��ϴ�.<br />
���� �Ⱦ��ϴ� �� �ƴմϴ�. ���� �����ڸ� ���߻����� ��¯��¯ ƽ��ฦ ���� �Ͱ� ���� �������� ���¿� ������ �� ������ ���Դϴ�.<br />
<br />
���� ���� �� �ƴ϶� �����ϴ°Ŷ� ������ϴ�.<br />
���ڴ� Ž�ϴ� �� �ƴ϶� ���ĺ��� �Ŷ� ������ϴ�.<br />
���ĵ� ������ �Դ� ���� ���� �����ϸ� ������ٰ� ������ϴ�.<br />
���� �������� ���� �ŷ��� �ֽ��ϴ�.<br />
<br />
���ú��� �ٽ� ���մϴ�.<br />
�ٵ� ������ �缼��.<br />
������ ������ �� ��� �ϳ��� ���峭�ٰ� �մϴ�.<br />
���� �Ҹ�ǰ�̴ϱ�, �ִ��� ������ �ٲ��������.<br />
<br />
	
		</div>
	</div>
	<div class="bottom">
		<span class="sp_btn00" style="margin-left:-100px;"><a href="">������</a></span>
		<span class="sp_btn00" ><a href="" onclick="alert('�������� �����ϴ�.')">������</a></span>
	<div class="bottomside">
		<span class="sp_btn00"><a href="../write/freebbs.html?BODY=bbs/postbbs">�۾���</a></span>
		<span class="sp_btn00"><a href="">����</a></span>
		<span class="sp_btn00"><a href="" onclick="return confirm('������ �����Ͻðڽ��ϱ�?');">����</a></span>
		<span class="sp_btn00"><a href="../freebbs/freebbs.html?BODY=freebbs/freebbs">�������</a></span>
	</div>
	
</div>
<div class="commentHeader" style="float:left;">
		<img src="../img/comment.gif" alt="">
		<span>���</span>1��
</div>
<div class="sbjbox" style="width:730px; margin-top:29px;">
	<c:forEach  begin="0" end="7">
		<table class="commentTable">
			<tr><td><img src="../img/noprofile.gif" alt="" width=40 height=60 style="position:static;"></td>
				<td style="padding-left:19px;">
				<span style="font-weight:strong; font-size:15px;">���ɹ����� ---</span><span style="font-weight:300"> (49.197.103.��) 2020.08.17 01:36</span><br/><br/>
				<span>�ƴ�,,, ����? ���� ���ǵ� ;;;
					��ư ���̺� ���� �� ������ ã���ϴ�.�ٵ� ������ �缼��.
					������ ������ �� ��� �ϳ��� ���峭�ٰ� �մϴ�.
					���� �Ҹ�ǰ�̴ϱ�, �ִ��� ������ �ٲ��������.
				</span>
				</td>
			</tr>
		</table>
		<table class="oneLine" style="margin:10px 10px 10px 15px;">
			<tr><td><img src="../img/oneline.PNG" style="display:inline"></td><td><img src="../img/noprofile.gif" alt="" width=40 height=60 style="position:static; display:inline"" ></td>
				<td style="padding-left:19px;">
				<span style="font-weight:strong; font-size:15px;">�������ī ---</span><span style="font-weight:300"> (49.197.103.��) 2020.08.17 01:36</span><br/><br/>
				<span>���� �ִٰ��� ���� �� �ƴϰڽ��ϱ�?
				</span>
				</td>
			</tr>
		</table>
		
	</c:forEach>
</div>
</body>
</html>