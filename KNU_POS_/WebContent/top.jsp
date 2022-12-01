<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 뷰포트와 관련된 설정(반응형 웹) -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>KNU_POS</title>
<!-- bootstrap CSS 추가 -->
<link rel="stylesheet" href="../css/bootstrap.min.css"/>
<!-- Custom CSS 추가 -->
<link rel="stylesheet" href="../css/custom.css"/>
</head>
<body>
	<nav class="navbar navbbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand text-center" href="../index.jsp"><img src="../img/logo5.png" style="width:50; height: 60px;"></a>
		<div id="navbar">
			<ul class="nav nav-pills" id="pills-tab" role="tablist">
  				<li role="presentation"> 
    				<a class="nav-link text-center" id="pills-main-tab" href="./main.jsp">주문서</a>
  				</li>
			 	 <li role="presentation">
			   	 	<a class="nav-link text-center" id="pills-menu-tab" href="./menu.jsp">주문하기</a>
			  	 </li>
			</ul>
		</div>
	</nav> 
	
	<!-- 제이쿼리 자바스크립트 파일 추가 -->
	<script src="../js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 파일 추가 -->
	<script src="../js/pooper.js"></script>
	<!-- 부트스트랩 자바스크립트 파일 추가 -->
	<script src="../js/bootstrap.min.js"></script>
	<script>
		var firstTabEl = document.querySelector('#pills-tab li:nth-child(1) a')
		  var firstTab = new bootstrap.Tab(firstTabEl)
		  firstTab.show()
		var triggerTabList = [].slice.call(document.querySelectorAll('#pills-tab a'))
		triggerTabList.forEach(function (triggerEl) {
		  var tabTrigger = new bootstrap.Tab(triggerEl)
		  triggerEl.addEventListener('click', function (event) {
		    //event.preventDefault()
		    tabTrigger.show()
		  })
		})
	</script>
</body>
</html>