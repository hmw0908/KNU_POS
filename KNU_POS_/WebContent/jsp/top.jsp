<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 뷰포트와 관련된 설정(반응형 웹) -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>외국인 유학생 입학 신청</title>
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
    				<a class="nav-link text-center" id="pills-personal_Info-tab" href="./personal_Info.jsp">개인정보<br>个人信息事项</a>
  				</li>
			 	 <li role="presentation">
			   	 	<a class="nav-link text-center" id="pills-family-tab" href="./family.jsp">가족사항<br>家人事项</a>
			  	 </li>
			  	<li role="presentation">
			    	<a class="nav-link text-center" id="pills-plan-tab" href="./plan.jsp">학업계획서<br>学习计划书</a>
			  	</li>
			    <li role="presentation">
			   	 	<a class="nav-link text-center" id="pills-provide_Info-tab" href="./provide_Info.jsp">개인정보제공동의서<br>个人信息提供同意书</a>
			  	 </li>
			  	<li role="presentation">
			    	<a class="nav-link text-center" id="pills-edu_Agree-tab" href="./edu_Agree.jsp">학력조회동의서<br>学历调查同意书</a>
			  	</li>
			  	<li role="presentation">
			   	 	<a class="nav-link text-center" id="pills-finance-tab" href="./finance.jsp">재정보증서<br>留学经费担保书</a>
			  	</li>
 			  	<li role="presentation">
			    	<a class="nav-link text-center" id="pills-final-tab" href="./final.jsp">최종제출/출력<br>最终提交/打印</a>
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