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

  <title>JDK프로젝트</title>

  <!-- Bootstrap core CSS -->
  <link href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/shop-homepage.css" rel="stylesheet">
  <!--  폰트   -->
  <link href='https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff' rel='stylesheet' type='text/css'>
</head>
<link href="<%=request.getContextPath()%>/WEB-INF/css/menuHeader.css" type="text/css" rel="stylesheet" />
<style type="text/css">
@font-face {
font-family: 'BMDOHYEON'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
font-weight: normal; font-style: normal; }
.navbar-brand { font-family: 'BMDOHYEON'; font-size:2.5em;}
#topmenu {padding-left:140px; padding-right:250px; padding-top:30px;}
#topmenu li{ float: left;    padding: 12px 4px 4px 4px;    margin-left: 22px;    height: 40px;}
#topmenu dt{ display:none;}
#topmenu .wrap {   height: 50px;  border-bottom: #000000 double 3px; border-top: #000000 double 3px; }
.wrap a { color: black; text-decoration: none; }
.wrap a:hover { background-color:#dcdcdc; }
.wrap li{ font-family: 'BMDOHYEON';}
.keyword{ margin-top:7px;}
.bottom{ margin-left:100px;}
#navbarResponsive{ padding-right:70px;}
/* 드롭메뉴 스타일 */
 .drop { /* nav */
   width: 100%;   display: flex;    justify-content: center; 
  position: relative;   z-index:1 
 } 
#main-menu > li {
  margin: -12px 60px 16px -27px	;
  position: relative;
  list-style: none
}
#main-menu > li > a {
  font-size: 0.85rem;
  text-align: center;
  text-decoration: none;
  letter-spacing: 0.05em;
  display: block;
}
#sub-menu {
  border:1px solid black;
  width:220px; hegiht:20px;
  position: absolute;
  background:#ffffff;
  opacity: 0;
  visibility: hidden;
  transition: all 0.15s ease-in;
  margin: 0px -40px 30px 0px;
}
#sub-menu > li { /* 서브메뉴 배경ㅇ */
  text-decoration: none;
  list-style: none;
  margin: -10px 100px 0px -40px;
  width:220px;
}
#sub-menu > li >  a {
  text-decoration: none;
  margin-right:100px;
  width:150px;
}
#main-menu > li:hover #sub-menu {
  opacity: 1;
  visibility: visible;
}
#sub-menu > li >  a:hover {
 text-decoration: none;
}
/* The Modal (background) */
.searchModal {
display: none; /* Hidden by default */
position: fixed; /* Stay in place */
z-index: 10; /* Sit on top */
left: 0;
top: 0;
width: 100%; /* Full width */
height: 100%; /* Full height */
overflow: auto; /* Enable scroll if needed */
background-color: rgb(0,0,0); /* Fallback color */
background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
/* Modal Content/Box */
.search-modal-content {
background-color: #dcdcdc;
border:5px double black;
margin: 15% auto; /* 15% from the top and centered */
padding: 20px;
width: 30%; /* Could be more or less, depending on screen size */
height:40%;
}
.searchModal a{font-family:'BMDOHYEON'; size:1.3em; }
.search-modal-content table{ border-top:2px solid black; }
#social { padding-bottom:13px;}
.register {font-family:'BMDOHYEON'; font-size:0.8em; color:black; background:#f5f5f5; border:1px solid black; }
</style>

<script src="../resources/vendor/jquery/jquery.min.js"></script>
<script>
$(function(){
	var loginmodal = '${Loginmodal}';
	
	if(loginmodal == 'toLogin'){
	loginpopup(); alert(loginmodal);
	}else{
		alert('분기테스트 : toLogin이 없다 => 로그인 요구가 아니다.');
	}
});
function loginpopup() {
			$("#modal").show();
};
function closeModal() {
$('.searchModal').hide();
};
</script>

<body>        

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="../index/index.html">JDK</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive" style="margin-right:40px;">
        <ul class="navbar-nav ml-auto">
        <!--  비로그인 상태일 시 indexController에서 보낸다 세션 정보는 -->
        <c:choose>
         <c:when test="${sessionScope.loginUser == null}">
         <li class="nav-item">
            <a class="nav-link" href="../login/login.html" onclick="">Sign In
              <span class="sr-only">(current)</span>
            </a>
          </li>
          </c:when>
         <c:otherwise> <!--  로그인 정보가 있을 경우 -->
         <li class="nav-item">
         	<h2 style="font-color:white;">${sessionScope.loginUser }님 환영합니다</h2>
            <a class="nav-link" href="../login/logout.html" onclick="">Sign Out
              <span class="sr-only">(current)</span>
            </a>
          </li>
         </c:otherwise>
        </c:choose>
         <!--  비로그인 상태 종료 -->
          <li class="nav-item">
            <a class="nav-link" href="../register/register.html">Register</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../myaccount/mypage.html">Account</a>
          </li>
          <li class="nav-item">
          	<input type="text" name="keyword" placeholder="통합검색" class="keyword" style="width:130px;" ></li> 
          <li class="nav-item">
          	<input type="button" name="keyword" class="searchButton" value="검색" style="width:60px; margin-left:10px; margin-top:7px;" ></li> 
        </ul>
      </div>
    </div>
  </nav>
  <!--  상단 네비게이션 종료 -->
  
  <!--  메인메뉴 시작 -->
  <div id="topmenu">
	<div class="wrap">
		<ul style="list-style:none;">
				<li><a href="#"><span>전체글보기</span></a>	</li>
		<li class="vline"></li>
				<li><a href="#"><span>개념글</span></a></li>
		<li class="vline"></li>
				<li><a href="../bbs/freebbs.html" onClick="test();" target=""><span>자유게시판</span></a>	</li>
		<li class="vline"></li>
				<li><a href="#" ><span>경험담&썰</span></a></li>
		<li class="vline"></li>
				<li><a href="#"><span>정보&팁</span></a></li>
		<li class="vline"></li>
				<li><a href="#"><span>질문 답변</span></a></li>
		<li>
			<nav role="navigation" class="drop">
  				<ul id="main-menu">
  	  				<li><font face='BMDOHYEON'><a href="../lifestory/lifestorymain.html?BODY=lifestory/lifestorymain">생활기</a></font>
     					<ul id="sub-menu">
       						<li><font face='BMDOHYEON' size="1.3"; ><a href="#" aria-label="subemnu"><span>▶&nbsp;별달고 꺼드럭거리 싶어서 쓰는 생활기</span></a></font></li>
       						<li><font face='BMDOHYEON' size="1.3"; ><a href="#" aria-label="subemnu">▶&nbsp;에스컬레이터 생활기</a></font></li>			
       						<li><font face='BMDOHYEON' size="1.3"; ><a href="#" aria-label="subemnu">▶&nbsp;보이쉬재패니즈</a></font></li>
      					</ul>
    				</li>
    			</ul>
   			</nav>
  		</li>
		</ul>
	</div>
</div>
  <!--  메인 메뉴 종료 -->
  
  <!-- 좌단 네비게이션 -->
   <div class="container">
    <div class="row">
      <div class="col-lg-3" style="margin-top:25px;" >
        <div style="border:1px solid; padding:0px;  background-color:#dcdcdc">
        	<font face='BMDOHYEON'>&nbsp; 회원로그인</font> 
        </div>
        <div  style="border:1px solid; padding:10px 0 15px 20px;">
        	<table>
        		<tr style="margin-left:5px;">
        			<th><a href="#" class="list-group-item"><font face='BMDOHYEON' size="2em" color="red">많이 본 글</font></a></th>
          			<th><a href="#" class="list-group-item"><font face='BMDOHYEON' size="2em" color="red">댓글 많은 글</font></a></th></tr>
         		<tr><td>&#9312;</td></tr><tr><td>&#9313;</td></tr><tr><td>&#9314;</td></tr><tr><td>&#9315;</td></tr><tr><td>&#9316;</td></tr>
				<tr><td>&#9317;</td></tr><tr><td>&#9318;</td></tr><tr><td>&#9319;</td></tr><tr><td>&#9320;</td></tr><tr><td>&#9321;</td></tr>
			</table>
        </div>
      </div>
      <div id="changejsp">
		<!--  메인 콘텐츠창 include형식으로 합시다  -->
		<jsp:include page="/WEB-INF/jsp/${BODY}.jsp" flush="false"/>
		</div>
     </div>
	
  <!-- 좌단 네비게이션 종료 -->
  	
</div>	
  <!-- Footer -->
  <footer class="py-5 bg-dark" style="margin-top:100px;">
    <div class="container" >
      <p class="m-0 text-center text-white" style="font-family: 'BMDOHYEON';">Copyright &copy; Your Website 2020</p>
   	  <p style="text-align:center;"><font color="white" style="font-family: 'BMDOHYEON';" >홈페이지 이용약관 | 개인정보 취급방침 | 게시물 게재원칙 <br>
		Copyright 2020 JDKProject.co.kr All rights reserved.<br><br>
		Runtime 0.298
      </font><p>
    </div>
    <!-- /.container -->
  </footer>
	
  <!-- 로그인 모달창 -->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!--  Classname으로 찾는거니까.. ../ 붙여서 상위 폴더를 가줘야한다 상우야 -->
	<form action="../login/loginpost.html" modelAttribute="user" method="post">
	<div id="modal" class="searchModal">
		<div class="search-modal-content">
			<a>로그인</a>
			<div class="row">
				<div class="col-sm-12">
					<div class="row">
						<div class="col-sm-12"><!-- 내가 건들 수 있는 곳.. -->
							<table style="">
								<tr><td><a>아이디</a></td>
								
								<tr><td><input type="text" name="id" maxlength="20"><font color="red"></font></td>
									<td id="social" rowspan="2" style="padding-left:10px;" ><img alt="" src="../img/social1.gif" width=35 height=35></td>
									<td id="social" rowspan="2"><img alt="" src="../img/social2.gif" width=35 height=35></td>
									<td id="social" rowspan="2"><img alt="" src="../img/social3.gif" width=35 height=35></td>
									<td id="social" rowspan="2"><img alt="" src="../img/social4.gif" width=35 height=35></td>
								<tr><td><a>비밀번호</a></td>
								<tr><td><input type="password" name="password" maxlength="20"/><font color="red"></font></td>
							</table>	
						</div><!--  내가 건들 수 있는 곳 -->
					</div>
				</div>
			</div>
			
			<hr>
			<div style="float:left; text-align:center;">
				<div style="float:left; cursor: pointer; background-color: #dcdcdc; text-align: center; margin-bottom:13px; width:100px; " onClick="">
					<input type="submit" style="font-family:'BMDOHYEON'; font-size:0.8em; width:100px;"  value="로그인"/></div>
					
				<div style="float:left;  cursor: pointer; background-color: #dcdcdc; text-align: center; margin-bottom:13px; width:100px; margin-left:20px;" onClick="closeModal()">
					<input type="button" style="font-family:'BMDOHYEON'; font-size:0.8em; width:100px;" 
						value="회원가입" onClick="location.href='../register/register.html';"></div>
				<div style="float:left;  cursor: pointer; background-color: #dcdcdc; text-align: center; margin-bottom:13px; width:100px; margin-left:20px;" onClick="closeModal()">
					<input type="button" style="font-family:'BMDOHYEON'; font-size:0.8em; width:100px;" 
						value="나가기" onClick="closeModal()"></div>
			</div>
		</div>
    </div>
    </form>
</body>
</html>