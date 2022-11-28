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
        <h4 class="mb-3 text-center">개인정보</h4>
        <hr class="mb-4">
        <form class="validation-form" action="./family.jsp" novalidate>
          <div class="row">
            <div class="col-md-4 mb-3">
              <label for="name">입학희망학기<br>(Year and semester)</label>
              <input type="text" class="form-control" id="name" placeholder="2022학년도 2학기(Fall)" value="">
            </div>
            <div class="col-md-4 mb-3">
              <label for="root">전형구분<br>(Type of Admission)</label>
              <select class="custom-select d-block w-100" id="root">
                <option value="">신입학</option>
                <option>3학년 편입학(transfer to junior)</option>
                <option>4학년 편입학(transfer to senior)</option>
                <option>이중언어과정(4학년 편입)</option>
                <option>교환학생</option>
                <option>복수학위생</option>
              </select>
              <div class="invalid-feedback">
                전형구분을 선택해주세요.
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="nickname">지원학과<br>(Division/Dept.)</label>
              <input type="text" class="form-control" id="nickname" placeholder="[신청이후 전공 변경불가]" value="" required>
              <div class="invalid-feedback">
                지원학과를 입력해주세요.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 mb-3">
              <label for="name">이름(한글)<br>(Korean)</label>
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                이름(한글)을 입력해주세요.
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="name">이름(영문)<br>(English)</label>
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                이름(영문)을 입력해주세요.
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="nickname">생년월일<br>(Date of Birth)</label>
              <input type="text" class="form-control" id="nickname" placeholder="" value="" required>
              <div class="invalid-feedback">
                생년월일을 입력해주세요.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="root">주소<br>(Current mailing address)</label>
              <input type="text" class="form-control" id="nickname" placeholder="" value="" required>
              <div class="invalid-feedback">
                주소를 선택해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="nickname">국적<br>(Nationality)</label>
              <input type="text" class="form-control" id="nickname" placeholder="" value="" required>
              <div class="invalid-feedback">
                국적을 입력해주세요.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 mb-3">
              <label for="name">전화번호<br>(Phone)</label>
              <input type="text" class="form-control" id="name" placeholder="Phone Number" value="" required>
              <input type="text" class="form-control" id="name" placeholder="Home Number" value="">
              <div class="invalid-feedback">
                연락처를 입력해주세요.
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="nickname">이메일<br>(E-mail)</label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com" required>
              <div class="invalid-feedback">
                이메일을 입력해주세요.
              </div>
            </div>
            <div class="col-md-4 mb-3">
            <label for="address">여권번호<br>(passport No.)</label>
            <input type="text" class="form-control" id="address" placeholder="" required>
            <div class="invalid-feedback">
              여권번호를 입력해주세요.
            </div>
          </div>
          </div>

          <div class="row">
          <div class="col-md-6 mb-3">
            <label>외국인등록증 번호<br>(Alien Regix. Card No.)</label>
            <input type="text" class="form-control" id="gkrfur_gkr" placeholder="" required>
          </div>
          <div class="col-md-6 mb-3">
            <label>외국인등록증 만료일<br>(Alien Registration card Expiration date)</label>
            <input type="text" class="form-control" id="gkrfur_wo" placeholder="" required>
          </div>
          </div>
          
          <div class="row">
          <div class="col-md-3 mb-3">
            <label>학교명<br>(Institution)</label>
            <input type="text" class="form-control" id="" placeholder="" required>
          </div>
          <div class="col-md-3 mb-3">
            <label>지역<br>(City & Country)</label>
            <input type="text" class="form-control" id="" placeholder="" required>
          </div>
          <div class="col-md-3 mb-3">
            <label>입학 및 졸업 기간<br>(Enrollment Period)</label>
            <input type="text" class="form-control" id="" placeholder="ex) 2012.09.01 ~ 2015.06.30" required>
          </div>
          <div class="col-md-3 mb-3">
            <label>과정<br>(Degree & Major)</label>
            <input type="text" class="form-control" id="" placeholder="" required>
          </div>
          </div>
          
          <div class="row">
          <div class="col-md-4 mb-3">
            <label for="address">모국어<br>(Native Language)</label>
            <input type="text" class="form-control" id="" placeholder="" required>
            <div class="invalid-feedback">
              모국어를 입력해주세요.
            </div>
          </div>
          <div class="col-md-4 mb-3">
            <label for="address">한국어<br>(Korean Proficiency)</label>
            <select class="custom-select d-block w-100" id="root">
                <option value="">TOPIC 4급</option>
                <option>TOPIC 3급</option>
                <option>어학교육원 4급</option>
              </select>
            <div class="invalid-feedback">
              한국어를 선택해주세요.
            </div>
          </div>
            <div class="col-md-4 mb-3">
              <label for="root">신청경로<br>(How to know KNU)</label>
              <select class="custom-select d-block w-100" id="root">
                <option value=""></option>
                <option>개인이 직접 신청</option>
                <option>유학원</option>
              </select>
              <div class="invalid-feedback">
                신청 경로를 선택해주세요.
              </div>
            </div>
          </div>
          
          <hr class="mb-4">
          <!-- <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div> -->
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">다음</button>
        </form>
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