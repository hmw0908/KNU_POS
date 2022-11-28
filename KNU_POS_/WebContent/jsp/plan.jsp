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

<%
	boolean db_flag = false;
	boolean flag = false;
	String selQuery = "";
	knuforeign.si.SI2120 si = new knuforeign.si.SI2120();
	
	flag = si.readGet(request);
	com.util.ClobUtil clob = new com.util.ClobUtil();
	
	
	try {
		db_flag = si.connectionDb("se",true);
		
    	si.schl_year = "s_schl_year";
    	si.schl_smst = "s_schl_smst";
    	si.appl_numb = "s_appl_numb";
		selQuery =    "select intr_text, appl_reas, stdy_plan, grad_plan from SI2120 ";
		selQuery += "\n where schl_year = '"+si.schl_year+"'	";
		selQuery += "\n   and schl_smst = '"+si.schl_smst+"' ";
		selQuery += "\n   and appl_numb = '"+si.appl_numb+"'  ";

		si.intr_text = clob.getClob("intr_text",selQuery);
		si.intr_text = clob.getClob("appl_reas",selQuery);
		si.intr_text = clob.getClob("stdy_plan",selQuery);
		si.intr_text = clob.getClob("grad_plan",selQuery);

	} catch (Exception e) {
		System.out.println(e);
	}
%>
<body>
<jsp:include page="./top.jsp" />
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-10 mx-auto">
        <h4 class="mb-3 text-center">학업계획서<br>学习计划书</h4>
        <hr class="mb-4">
        <form class="validation-form" accept-charset="euc-kr" method="post" action="./plan_s.jsp" novalidate>
          <div class="row mb-4 text-center">
          	<div class="col-md-12 mb-3">
				* 이중언어과정 지원생은 중국어로 쓰세요. (双语(中文)授课学生请用<font color="red">中文</font>写) <br>
				* 한국어로 수업 받는 학생은 한국어로 쓰세요. (韩语授课学生请用<font color="blue">韩文</font>写) <br>
				* 타인의 것을 베껴쓰면 평가 시 불이익이 있습니다.<br>반드시 자신의 학업계획을 작성하시기 바랍니다.<br>(抄袭他人的内容在评价时会有不利影响。 务必自己填写学业计划。)
            </div>
          </div>
          <div class="row mb-4 text-center">
          	<div class="col-md-12 mb-3">
              <h4 class="mb-3">자기소개(自我介绍)</h4>
              <textarea class="form-control" id="" name="intr_text" style="height: 200px" placeholder="* 내용은 300자 이상 작성 바랍니다(请写300字以上内容)" minlength='300' required> <%=si.intr_text%> </textarea>
              <div class="invalid-feedback">
                자기소개를 작성하세요/请写自我介绍
              </div>
            </div>
          </div>
          
          <div class="row mb-4 text-center">
          	<div class="col-md-12 mb-3">
              <h4 class="mb-3">지원동기(报名动机)</h4>
              <textarea class="form-control" id="" name="appl_reas" style="height: 200px" placeholder="* 내용은 300자 이상 작성 바랍니다(请写300字以上内容)" minlength='300' required><%=si.appl_reas%></textarea>
              <div class="invalid-feedback">
                지원동기를 작성하세요/请写报名动机
              </div>
            </div>
          </div>
          
          <div class="row mb-4 text-center">
          	<div class="col-md-12 mb-3">
              <h4 class="mb-3">학업계획(学习计划)</h4>
              <textarea class="form-control" id="" name="stdy_plan" style="height: 200px" placeholder="* 내용은 300자 이상 작성 바랍니다(请写300字以上内容)" minlength='300' required><%=si.stdy_plan%></textarea>
              <div class="invalid-feedback">
                학업계획을 작성하세요/请写学习计划
              </div>
            </div>
          </div>
          
          <div class="row mb-4 text-center">
          	<div class="col-md-12 mb-3">
              <h4 class="mb-3">졸업 후 계획(毕业后计划)</h4>
              <textarea class="form-control" id="" name="grad_plan" style="height: 200px" placeholder="* 내용은 300자 이상 작성 바랍니다(请写300字以上内容)" minlength='300' required><%=si.grad_plan%></textarea>
              <div class="invalid-feedback">
                졸업 후 계획을 작성하세요/请写毕业后计划
              </div>
            </div>
          </div>
          
          <div class="mb-4"></div>
          <hr class="mb-4">
          <button class="btn btn-primary btn-lg btn-block" type="submit">다음(下一页)</button>
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
	var firstTabEl = document.querySelector('#pills-tab li:nth-child(3) a')
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