<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 뷰포트와 관련된 설정(반응형 웹) -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>KNU_POS</title>
<!-- 로그인 되어 ID가 존재하는 경우 확인하는 세션 체크 -->
<script  type="text/javascript">
   <%--  var user_id = "<%=(String)session.getAttribute("user_id")%>"; --%>
   function submit2(frm) { 
	    frm.action='.login_check.jsp'; 
	    frm.submit();
	    
	    frm.action='.main.jsp'; 
	    frm.submit();
	    return true; 
	  } 
</script>
<!-- bootstrap CSS 추가 -->
<link rel="stylesheet" href="./css/bootstrap.min.css"/>
<!-- Custom CSS 추가 -->
<link rel="stylesheet" href="./css/custom.css"/>
<!-- index CSS 추가 -->
<link rel="stylesheet" href="./css/index.css"/>

</head>
<body class="d-flex flex-column min-vh-100">
	<nav class="navbar navbbar-expand-lg navbar-dark bg-dark">
	<a href="index.jsp"><img src="./img/logo5.png" style="width:50; height: 60px;"></a> -->
	</nav>
	<section>
 	<div class="container-fluid ps-md-0 h-50">
	  <div class="row g-0">
	    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
	    <div class="col-md-8 col-lg-6">
	      <div class="login d-flex align-items-center">
	        <div class="container">
	          <div class="row jumbotron">
	            <div class="col-md-9 col-lg-8 mx-auto">
	              <h3 class="login-heading mb-5">KNU_POS</h3>
	
	              <!-- Sign In Form -->
	              <form class="validation-form" name="tran" method="post" action="./login_check.jsp">
	                <div class="form-group mb-3">
	                  <i class="fa-solid fa-user m-1"></i><label class="mb-1">ID</label>
	                  <input type="text" class="form-control" placeholder="아이디" name="userID" id="floatingInput" >
	                </div>
	                <div class="form-group mb-3">
	                  <i class="fa-solid fa-key m-1"></i><label class="mb-1">PASSWORD</label>
	                  <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" id="floatingPassword" >
	                </div>
	
	                <div class="d-grid mt-5">
	                  <button class="btn btn-lg btn-primary btn-login text-uppercase fw-bold mb-2" type="submit" value="로그인">LOGIN</button>
	                  <a class="btn btn-lg btn-primary btn-login text-uppercase fw-bold mb-2" data-toggle="modal" href="#newRegisterModal">NEW CREATE</a>
	                  <div class="text-center">
	                    <a class="small mt-5" href="#">Forgot password?</a>
	                  </div>
	                </div>
	              </form>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
	</section>
	<article>
	<div class="modal fode" id="newRegisterModal" tabindex="-1" role="dialog" aria-labelledby="modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">신규지원</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form class="validation-form" action="newRegisterAction.jsp" method="post">
					<div>
						<div class="form-group col-sm-6">
							<label>개인정보이용동의</label>
							<textarea class="form-control" name="evaluationContent" placeholder="개인정보를 어쩌구 이러쿵" readonly maxlength="204"></textarea>
						</div>
					</div>
					<div>
						<div class="form-group col-sm-6">
							<i class="fa-solid fa-user m-1"></i><label class="mb-1">아이디</label>
							<input type="text" name="id" class="form-control" maxlength="15" />
						</div>
						<div class="form-group col-sm-6">
							<i class="fa-solid fa-key m-1"></i><label class="mb-1">비밀번호</label>
							<input type="text" name="passwd" class="form-control" maxlength="20" />
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
						<button type="submit" class="btn btn-primary">등록하기</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</article>
	<footer class="mt-auto">
	<jsp:include page="./footer.jsp" />
	</footer>
	<!-- 제이쿼리 자바스크립트 파일 추가 -->
	<script src="./js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 파일 추가 -->
	<script src="./js/pooper.js"></script>
	<!-- 부트스트랩 자바스크립트 파일 추가 -->
	<script src="./js/bootstrap.min.js"></script>
	<!-- Font Awesome icons -->
	<script src="https://kit.fontawesome.com/ff8eb97e9d.js"></script>
	<script src="./js/validate.js"></script>
</body>
</html>