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
<body class="d-flex flex-column min-vh-100">
<jsp:include page="./top.jsp" />
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-10 mx-auto">
        <h4 class="mb-3 text-center">재증보증서<br>(留学经费担保书)
        </h4>
        <hr class="mb-4">
        <form class="validation-form" method="post" accept-charset="euc-kr" action="./finance_s.jsp" novalidate>
          <div class="row mb-5">
            <div class="col-md-6 mb-3">
              <label for="name"> 재정보증인(영문이름) 留学经费担保人(英文名字)</label>
              <input type="text" class="form-control" name="fina_name" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                 영문이름을 입력하세요/请写英文名字
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="root">입학신청자와의 관계 (与入学申请人关系)</label>
              <select class="custom-select d-block w-100" name="fina_rntn" id="root">
                <option value="">아버지 (父亲)</option>
                <option>어머니 (母亲)</option>
              </select>
            </div>
          </div>
          

          <div class="row mb-5">
            <div class="col-md-6 mb-3">
              <label for="nickname">연락처 (联系方式)</label>
              <input type="text" class="form-control" name="fina_tele" id="nickname" placeholder="" value="" required>
              <div class="invalid-feedback">
                연락처를 입력하세요/请输入联系号码
              </div>
            </div>


            <div class="col-md-6 mb-3">
	            <label for="address">영문 주소지 (英文地址)</label>
	            <input type="text" class="form-control" name="fina_addr" id="address" placeholder="" required>
	            <div class="invalid-feedback">
	              주소를 입력하세요/请写英文地址
	            </div>
          	</div>
          </div>  

          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" name="fina_agre" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">
            상기 학생(지원자)이 재학기간 중에 필요한 생활비 및 체재비 등 일체를 부담할 것을 보증합니다. <br>
			本人保证负担以上申请人在校期间所需生活费及住宿费等一切费用。<br>
			I hereby guarantee to sponsor the applicant for his/her study and stay during the school years in the above manner. 
			</label>
			<div class="invalid-feedback">
              유학경비 부담 보증을 클릭하셔야 다음으로 넘어갑니다.<br>(点击留学经费担保保证后才能点击下一页)
            </div>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">다음(下一页)</button>
        </form>
      </div>
    </div>
  </div>
  <footer class="mt-auto">
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
	var firstTabEl = document.querySelector('#pills-tab li:nth-child(6) a')
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