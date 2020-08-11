<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
.upper {
	border: 1px solid silver;
	width: 726px;
	height: 40px;
	table-layout: fixed;
}
.hit, .sdate, .score{ font-size: 0.8em; font-family:'BMJUA'; text-align:center; }
.upper td {
	padding-left: 20px;
}

.trborder {
	border: 1px solid silver;
}

.noticetr {
	background-color: #f0f8ff;
}

.text-center, n_nick {
	text-align: center;
}

#bbsBottomBorder {
	border-bottom: 1px solid silver;
}
.b{ font-size:0.8em;}  /*���� ��Ʈ */
#bbslist .btnbox {
    float: right;
    width: 130px;
    text-align: right;
}
</style>
<body>
	<div class="upperdiv">
		<img alt="" src="img/total.jpg" width=50 height=20>
		<table class="upper">
			<tr>
				<td><img alt="" src="../img/total.jpg">&nbsp;&nbsp; <font
					face='BMDOHYEON'>�����Խ��� / Total ${totalPost } </font> ${totalwriting }</td>
			</tr>
		</table>
		<div class="mainbbs">
			<table summary="��ü �Խù�����Ʈ �Դϴ�.">
				<colgroup>
					<col width="50">
					<col>
					<col width="170">
					<col width="55">
					<col width="50">
					<col width="45">
				</colgroup>
				<thead>
					<tr class="trborder">
						<th class="text-center" scope="col" class="side1">��ȣ</th>
						<th class="text-center" scope="col">����</th>
						<th class="text-center" scope="col">�۾���</th>
						<th class="text-center" scope="col">��ȸ</th>
						<th class="text-center" scope="col">��¥</th>
						<th class="text-center" scope="col" class="side2">��õ</th>
					</tr>
				</thead>
				<tbody>
					<tr class="noticetr" id="bbsBottomBorder">
						<td><img src="../img/notice.gif" alt="����" class="notice" /></td>
						<td class="b"><a href="#">������ �ʿ� ��, ��� ���� �ȳ�</a><span
							class="comment">(141+1)</span></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr class="text-center">
											<td>�긱</td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
						<td class="hit">86193</td>
						<td class="sdate">03.05</td>
						<td class="score">11</td>
					</tr>
					<tr class="noticetr" id="bbsBottomBorder">
						<td><img src="../img/notice.gif" alt="����" class="notice" /></td>
						<td class="b"><a href="#">ȣ�ֻ�Ȱ, ��Ȧ, ���� ���� ������ ���⿡ ���ּ���.</a> <span
							class="comment">(10+2)</span></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr class="text-center">
											<td class="n_nick"><span class="hand"
												onclick="getMemberLayer('1',event);">�긱</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
						<td class="hit">96861</td>
						<td class="sdate">12.31</td>
						<td class="score">6</td>
					</tr>

					<tr class="noticetr" id="bbsBottomBorder">
						<td><img src="../img/notice.gif" alt="����" class="notice" /></td>
						<td class="b"><a href="#">ȣ�� ��Ȧ ��Ȱ�� �����Ͻ� ��
								�����մϴ�.</a> <span class="comment">(85+9)</span></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr>
											<td class="n_nick"><span class="hand"
												onclick="getMemberLayer('1',event);">�긱</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
						<td class="hit">176460</td>
						<td class="sdate">12.22</td>
						<td class="score">4</td>
					</tr>

					<tr class="noticetr" id="bbsBottomBorder">
						<td><img src="../img/notice.gif" alt="����" class="notice" /></td>
						<td class="b"><a href="#">2012�� 12�� 17�� ���� ����</a><span
							class="comment">(41+2)</span></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr>
											<td align="center" class="n_nick"><span class="hand"
												onclick="getMemberLayer('1',event);">�긱</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
						<td class="hit">167536</td>
						<td class="sdate">12.17</td>
						<td class="score">21</td>
					</tr>
					<!--  ���� �Խ��� ���� -->
					<tr id="bbsBottomBorder">
						<td class="snum">80182</td>
						<td class="b"><a href="/?m=bbs&amp;uid=103180">��Ȧ ���� ��</a></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr>
											<td class="n_nick"><span class="hand"
												onclick="getMemberLayer('0',event);">���ƿ¿����</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
						<td class="hit">60</td>
						<td class="sdate">14:02</td>
						<td class="score">0</td>
					</tr>
					<tr id="bbsBottomBorder">
						<td class="snum">80181</td>
						<td class="b"><a href="/?m=bbs&amp;uid=103178">������</a> <span
							class="new"></span></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr>
											<td class="n_nick"><span class="hand"
												onclick="getMemberLayer('0',event);">��������</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
						<td class="hit">32</td>
						<td class="sdate">11:32</td>
						<td class="score">0</td>
					</tr>
					<tr id="bbsBottomBorder">
						<td class="snum">80180</td>
						<td class="b"><a href="/?m=bbs&amp;uid=103177">Grain��
								�;��</a></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr>
											<td class="n_nick"><span class="hand"
												onclick="getMemberLayer('14245',event);">��ġ��ġ�</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
						<td class="hit">68</td>
						<td class="sdate">09:30</td>
						<td class="score">0</td>
					</tr>
					<tr id="bbsBottomBorder">
						<td class="snum">80179</td>
						<td class="b"><a href="/?m=bbs&amp;uid=103176">�ȳ��ϼ��� ȣ��
								�� �� �����</a> <span class="comment">(3+3)</span></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr>
											<td class="n_nick"><span class="hand"
												onclick="getMemberLayer('14302',event);">��Ȧó�����»��</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
						<td class="hit">185</td>
						<td class="sdate">00:18</td>
						<td class="score">0</td>
					</tr>
					<tr id="bbsBottomBorder">
						<td class="snum">80178</td>
						<td class="b"><a href="#">�ؽ�������������ؼ�</a> <span
							class="comment">(3)</span></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr>
											<td class="n_nick"><span class="hand"
												onclick="getMemberLayer('14003',event);">�������</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
						<td class="hit">161</td>
						<td class="sdate">08.10</td>
						<td class="score">0</td>
					</tr>
					<tr id="bbsBottomBorder">
						<td class="snum">80177</td>
						<td class="b"><a href="#">���������� �츮�� ���ϴ°� �ƴϱ���</a> <span
							class="comment">(1)</span></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr>
											<td class="n_nick"><span class="hand"
												onclick="getMemberLayer('14303',event);">�ŷ���������</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
						<td class="hit">236</td>
						<td class="sdate">08.10</td>
						<td class="score">0</td>
					</tr>
					<tr id="bbsBottomBorder">
						<td class="snum">80176</td>
						<td class="b"><a href="#">�ý����� ��û�ϴ� ������µ�</a> <span
							class="comment">(2)</span></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr>
											<td class="n_nick"><span class="hand"
												onclick="getMemberLayer('12870',event);">�����������</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
					<tr id="bbsBottomBorder">
						<td class="snum">80176</td>
						<td class="b"><a href="#">�ý����� ��û�ϴ� ������µ�</a> <span
							class="comment">(2)</span></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr>
											<td class="n_nick"><span class="hand"
												onclick="getMemberLayer('12870',event);">�����������</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
					<tr id="bbsBottomBorder">
						<td class="snum">80176</td>
						<td class="b"><a href="#">�ý����� ��û�ϴ� ������µ�</a> <span
							class="comment">(2)</span></td>
						<td class="name">
							<div class="name_box">
								<table cellspacing="0" summary="�г��� �ڽ�">
									<tbody>
										<tr>
											<td class="n_nick"><span class="hand"
												onclick="getMemberLayer('12870',event);">�����������</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="bottom">
		<div class="pagebox01">
			<img src="../img/ó��������.gif" alt="ó��������" /> 
			<img src="../img/����10������.gif"alt="���� 10 ������" />
			<img src="../img/split.gif" class="split" alt=""/> 
			<span class="selected" title="1 ������">1</span> 
			<img src="../img/split.gif" class="split" alt="" /> 
			<a href="/?m=bbs&amp;p=2" class="notselected" title="2 ������">2</a>
			<img src="../img/split.gif" class="split" alt="" />
			<a href="/?m=bbs&amp;p=3" class="notselected" title="3 ������">3</a>
			<img src="../img/split.gif" class="split" alt="" />
			<a href="/?m=bbs&amp;p=4" class="notselected" title="4 ������">4</a>
			<img src="../img/split.gif" class="split" alt="" />
			<a href="/?m=bbs&amp;p=5" class="notselected" title="5 ������">5</a> 
			<img src="../img/split.gif" class="split" alt="" /> 
			<a href="/?m=bbs&amp;p=6" class="notselected" title="6 ������">6</a> 
			<img src="../img/split.gif" class="split" alt="" /> 
			<a href="/?m=bbs&amp;p=7" class="notselected" title="7 ������">7</a> 
			<img src="../img/split.gif" class="split" alt="" /> 
			<a href="/?m=bbs&amp;p=8" class="notselected" title="8 ������">8</a>
			<img src="../img/split.gif" class="split" alt="" />
			<a href="/?m=bbs&amp;p=9" class="notselected" title="9 ������">9</a> 
			<img src="../img/split.gif" class="split" alt="" /> 
			<a href="/?m=bbs&amp;p=10" class="notselected" title="10 ������">10</a> 
			<img src="../img/split.gif" class="split" alt="" /> 
			<a href="#"><img src="../img/����10������.gif" alt="���� 10 ������" /></a>
			<a href="#"><img src="������������.gif" alt="������������" /></a>
		</div>
	</div>

	<div class="searchform">
		<form name="bbssearchf" action="/">
			<input type="hidden" name="r" value="home" /> <input type="hidden"
				name="c" value="" /> <input type="hidden" name="m" value="bbs" />
			<input type="hidden" name="bid" value="" /> <input type="hidden"
				name="cat" value="" /> <input type="hidden" name="sort" value="gid" />
			<input type="hidden" name="orderby" value="asc" /> <input
				type="hidden" name="recnum" value="20" /> <input type="hidden"
				name="type" value="" /> <input type="hidden" name="iframe" value="" />
			<input type="hidden" name="skin" value="" /> <select name="where">
				<option value="subject|content">����+����</option>
				<option value="subject|tag">����+�±�</option>
				<option value="content">����</option>
				<option value="nic">�г���</option>
			</select> <input type="text" name="keyword" size="25" value="" class="input" />
			<input type="submit" value=" �˻� " class="btnblue" />
		</form>

		<div class="btnbox">
			<span class="sp_btn00"><a href="/?m=bbs">�������</a></span>
		</div>
	</div>
	</div>

	</div>
	<div class="clear"></div>

	</div>
	</div>
	<div class="wrap"></div>
</body>
</html>