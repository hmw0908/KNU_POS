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
        <h4 class="mb-3 text-center">개인정보제공동의서<br>个人信息提供同意书</h4>
        <hr class="mb-4">
        <form class="validation-form" action="./edu_Agree.jsp" novalidate>
          <div class="row text-center">
            <div class="col-md-12 mb-3">
              <label for="name" class="mb-3">개인정보제공 내역 및 동의여부<br>个人信息提供事项及同意与否</label>
              <div class="form-control" id="name" style="height: 200px" readonly>
              	<br>
              	1. 모집요강 내용을 숙지하였으며 귀 대학교에 입학하고자 소정의 서류를 갖추어 지원합니다.<br>
              	一、 本人已阅读招生简章内容,申请贵校入学。<br><br>
              	2. 대입 원서접수 및 대입 전형과정에서 수집된 지원자의 개인정보에 대해<br> “대입 원서접수 및 전형과정을 목적”으로 수집∙이용∙제3자 제공함에 동의합니다. <br>
              	二、本人同意于学校通过报名流程收集的学生个人信息将以入学审核目的收集、利用、第三方提供。
              </div>
            </div>
          </div>
          
          <div class="form-check">
          	<div class="row text-center">
          		<div class="col-md-12 mb-3">
	              <input class="form-check-input" type="radio" name="radio" id="r1" value="1" checked>
	  			  <label class="form-check-label mr-4" for="exampleRadios1">
				    동의(同意)     
				  </label>
				  <input class="form-check-input" type="radio" name="radio" id="r2" value="0">
				  <label class="form-check-label" for="exampleRadios2">
				    비동의(非同意)     
				  </label>
				</div>
			</div>
		  </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" name="sub" id="sub" type="submit">다음(下一页)</button>
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
	<!-- jquery CDN -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
	var firstTabEl = document.querySelector('#pills-tab li:nth-child(4) a')
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
	<script>
	$(document).ready(function(){
	    // 라디오버튼 클릭시 이벤트 발생
	    $("input:radio[name=radio]").click(function(){
	 
	        if($("input[name=radio]:checked").val() == "1"){
	        	$("#sub").attr("disabled",false);
	            $("#pills-final-tab").show();
	            // radio 버튼의 value 값이 1이라면 활성화
	        }else if($("input[name=radio]:checked").val() == "0"){
	            $("#sub").attr("disabled",true);
	            $("#pills-final-tab").hide();
	            // radio 버튼의 value 값이 0이라면 비활성화
	            alert("비동의 시 입학지원을 할 수 없습니다.\n(非同意时，不可报名江南大学入学)");
	        }
	    });
	});
	</script>
</body>
</html>