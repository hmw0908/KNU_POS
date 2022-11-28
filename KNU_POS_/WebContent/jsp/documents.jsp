<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
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
<%
	//com.util.Utility u = new com.util.Utility();
	//knumis.util.Combo cbFS = new Combo("se");
	//knumis.util.Util util = new knumis.util.Util();

	

	//추가 - 박
	String s_rgst = "";
	String s_id = "";
	
	//지원연도,학기세션
	String s_year = "";
	String s_smst = "";

/* 	s_rgst = s_rgst_numb;
	s_id = s_empl_idnt;
	s_name = s_empl_knam;
	s_year = s_schl_year;
	s_smst = s_schl_smst;

	if ("".equals(s_rgst_numb) || s_rgst_numb == null) {
		s_rgst = s_rgst_numb_check;
	}
	if ("".equals(s_empl_idnt) || s_empl_idnt == null) {
		s_id = s_empl_idnt_check;
	}
	if ("".equals(s_empl_knam) || s_empl_knam == null) {
		s_name = s_empl_knam_check;
	} */



	boolean flag = false;
	boolean db_flag = false;
	boolean rtn = false;
	boolean dbCheck = false;

	//knuinvite.ma.MA8200 ma = new knuinvite.ma.MA8200();
	//knuinvite.ma.MA8200_2017 ma = new knuinvite.ma.MA8200_2017();
	knuforeign.si.SI2130 si = new knuforeign.si.SI2130();
	flag = si.readGet(request); //flag를 통해서 요청
%>
<body class="d-flex flex-column min-vh-100">
<jsp:include page="./top.jsp" />
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3 text-center">기타서류업로드</h4>
        <hr class="mb-4">
        <!-- 파일전송을 위해 multipart 사용 -->
        <form class="validation-form" method="post" action="./documents_s.jsp" enctype="multipart/form-data" novalidate>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">1. 외국국적증명서(본인, 부 또는 모 외국인신분증, 여권사)</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name1" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
                외국국적증명서를 업로드해주세요.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">2. 잔고증명서(미화 20,000달러 상응)</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name2" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
                잔고증명서를 업로드해주세요.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">3. 가족관계증명서</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name3" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
                가족관계증명서를 업로드해주세요.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">4. 최종학교 성적표</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name4" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
                성적표를 업로드해주세요.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">5. 최종학교 졸업(예정)증명서</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name5" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
               졸업(예정)증명서를 업로드해주세요.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">6. 어학증명서</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name6" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
                어학증명서를 업로드해주세요.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">7. 기타(외국인등록증, 출입국사실증명서 등)</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name7" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
                외국인등록증, 출입국사실증명서를 업로드해주세요.
              </div>
            </div>
          </div>
          
          <!-- <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" >
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div> -->
          <div class="mb-4"></div>
          <button class="btn btn-danger btn-lg btn-block" type="submit">제출하기</button>
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
	<script src="https://kit.fontawesome.com/ff8eb97e9d.js"></script>
	<script>
		var firstTabEl = document.querySelector('#pills-tab li:nth-child(7) a')
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