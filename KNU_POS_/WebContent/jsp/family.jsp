<%@page import="knuforeign.si.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/session_User.jsp" %>
<%@ include file="../common/check_session_Info.jsp" %>

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
  <div class="container mb-5">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3 text-center">가족사항<br>家人事项</h4>
        <hr class="mb-4">
        <form class="validation-form" accept-charset="euc-kr" method="post" action="./family_s.jsp" novalidate>
          <div class="row text-center">
            <div class="col-md-12 mb-3 pl-5">
              <h4 class="mb-3">아버지(父亲)</h4>
            </div>
          </div>
          
          <div class="row">
          	<div class="col-md-2 mb-3 pl-5">
              <label>영문이름<br>英文名字</label>
            </div>
            <div class="col-md-4 mb-3">
              <input type="text" class="form-control" name="rntn_nam1" id="F_name" placeholder="" value="" required>
              <div class="invalid-feedback">
                영문이름을 입력하세요/请输入英文名字
              </div>
            </div>
            <div class="col-md-2 mb-3 pl-5">
              <label for="nickname">국적<br>国籍</label>
            </div>
            <div class="col-md-4 mb-3">
              <input type="text" class="form-control" name="natl_cod1" id="nickname" placeholder="영문작성/请用英文写" value="" required>
              <div class="invalid-feedback">
                국적을 입력하세요/请输入国籍
              </div>
            </div>
          </div>
          
          
          <div class="row">
            <div class="col-md-2 mb-3 pl-5">
              <label for="name">연락처<br>联系方式</label>
            </div>
            <div class="col-md-4 mb-3">
              <input type="text" class="form-control mb-2" name="tele_num1" id="name" placeholder="핸드폰 번호 (手机号)" value="" required>
              <input type="text" class="form-control mb-3" name="emer_num1" id="name" placeholder="비상연락처 (紧急联系方式)" value="">
              <div class="invalid-feedback">
                연락처를 입력하세요/请输入联系方式
              </div>
            </div>
            <div class="col-md-2 mb-3 pl-5">
              <label for="nickname">영문주소<br>英文地址</label>
            </div>
            <div class="col-md-4 mb-3">
              <input type="text" class="form-control mb-2" placeholder="영문작성/请用英文写" name="addr_txt1" id="adr" required>
              <input type="text" placeholder="우편번호/邮编号" name="addr_pos1" class="form-control mb-3" id="adr" required>
              <div class="invalid-feedback">
                주소를 입력하세요/请输入地址
              </div>
            </div>
          </div>
          
			<hr class="mb-5">
		  <div class="row text-center">
            <div class="col-md-12 mb-3 pl-5">
              <h4 class="mb-3">어머니(母亲)</h4>
            </div>
          </div>
          
          <div class="row">
          	<div class="col-md-2 mb-3 pl-5">
              <label>영문이름<br>英文名字</label>
            </div>
            <div class="col-md-4 mb-3">
              <input type="text" class="form-control" name="rntn_nam2" id="F_name" placeholder="" value="" required>
              <div class="invalid-feedback">
                영문이름을 입력하세요/请输入英文名字
              </div>
            </div>
            <div class="col-md-2 mb-3 pl-5">
              <label for="nickname">국적<br>国籍</label>
            </div>
            <div class="col-md-4 mb-3">
              <input type="text" class="form-control" name="natl_cod2" id="nickname" placeholder="영문작성/请用英文写" value="" required>
              <div class="invalid-feedback">
                국적을 입력하세요/请输入国籍
              </div>
            </div>
          </div>
          
          
          <div class="row">
            <div class="col-md-2 mb-3 pl-5">
              <label for="name">연락처<br>联系方式</label>
            </div>
            <div class="col-md-4 mb-3">
              <input type="text" class="form-control mb-2" name="tele_num2" id="name" placeholder="핸드폰 번호 (手机号)" value="" required>
              <input type="text" class="form-control mb-3" name="emer_num2" id="name" placeholder="비상연락처 (紧急联系方式)" value="">
              <div class="invalid-feedback">
                연락처를 입력하세요/请输入联系方式
              </div>
            </div>
            <div class="col-md-2 mb-3 pl-5">
              <label for="nickname">영문주소<br>英文地址</label>
            </div>
            <div class="col-md-4 mb-3">
              <input type="text" class="form-control mb-2" placeholder="영문작성/请用英文写" name="addr_txt2" id="adr" required>
              <input type="text" placeholder="우편번호/邮编号" class="form-control mb-3" name="addr_pos2" id="adr" required>
              <div class="invalid-feedback">
                주소를 입력하세요/请输入地址
              </div>
            </div>
          </div>

          <hr class="mb-5">
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
		var firstTabEl = document.querySelector('#pills-tab li:nth-child(2) a')
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