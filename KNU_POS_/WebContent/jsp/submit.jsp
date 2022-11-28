<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 뷰포트와 관련된 설정(반응형 웹) -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>테스트</title>
<!-- bootstrap CSS 추가 -->
<link rel="stylesheet" href="../css/bootstrap.min.css"/>
<!-- Custom CSS 추가 -->
<link rel="stylesheet" href="../css/custom.css"/>
<!-- main CSS 추가 -->
<link rel="stylesheet" href="../css/main.css"/>

</head>
<body>
<jsp:include page="./top.jsp" />
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3 text-center">제출완료</h4>
        <hr class="mb-4">
        <div class="row">
           	<div class="col-md-12 mb-3">
           	<div class="text-center">아래 서류를 이하의 주소로 발송 해 주세요.</div><br>
           	<label for="name">1. 입학지원서 (<a href='#'>출력하기</a>) *하단 서명 필수</label><br>
           	<label for="name">2. 학업계획서 (<a href='#'>출력하기</a>) *하단 서명 필수</label><br>
           	<label for="name">3. 유학경비보증서 (<a href='#'>출력하기</a>) *하단 서명 필수</label><br>
           	<label for="name">4. 학력조회동의서(<a href='#'>출력하기</a>) *하단 서명 필수</label><br>
           	<label for="name">5. 잔고증명서 원본</label><br>
           	<label for="name">6. 외국국적증명서 사본</label><br>
           	<label for="name">7. 가족관계증명서 원본</label><br>
           	<label for="name">8. 최종학교 성적표</label><br>
           	<label for="name">9. 최종학교 졸업(예정) 증명서</label><br>
           	<label for="name">10. 외국인등록증(사본/한국체류자만)</label><br>​
			<label for="name">11. 출입국사실증명서 원본 (한국체류자만)</label><br>
           	<label for="name">12. 어학증명서</label><br><br>
           	<label for="name">수신처: kangnam university, Office of International affairs</label><br>
           	<label for="name">40 Gangnam-ro, Giheung-gu, Yongin-si, Gyeonggi-do, Rep of Korea</label><br>
           	<label for="name">Zip code: 16979</label><br>
			</div>
		</div>
      </div>
    </div>
  </div>
  <footer class="mt-5">
		<jsp:include page="../footer.jsp" />
  </footer>
  	<!-- 유효성체크 -->
	<script src="../js/validate.js"></script>
  	<!-- 제이쿼리 자바스크립트 파일 추가 -->
	<script src="../js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 파일 추가 -->
	<script src="../js/pooper.js"></script>
	<!-- 부트스트랩 자바스크립트 파일 추가 -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- Font Awesome icons -->
	<script src="https://kit.fontawesome.com/ff8eb97e9d.js"></script>
	
</body>
</html>