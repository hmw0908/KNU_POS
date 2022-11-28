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
<!-- DatePicker CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
</head>
<body class="d-flex flex-column min-vh-100">
<jsp:include page="./top.jsp"/>
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-10 mx-auto">
        <h4 class="mb-3 text-center">학력조회동의서<br>(学历调查同意书)</h4>
        <hr class="mb-4">
        <form class="validation-form" action="./finance.jsp" novalidate>
            <div class="row text-center">
            <div class="col-md-12 mb-5">
              <label for="name" class="mb-3">학력조회동의서<br>学历调查同意书</label>
              <div class="form-control" id="name" style="height: 200px" readonly>
              	<br>
              	By making application for admission to Undergraduate Programs of The Kangnam University of Korea, <br>
              	I hereby authorize administrator or other persons to confer with others to obtain<br>
              	and verify my credentials and qualifications as a provider.<br><br>
				I release from any and all liability all organizations or individuals who act in good faith<br> 
				and without malice to provide the above information.
              </div>
            </div>
          </div>
          
          
          <hr class="mb-5">
          
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">School Name(English)</label>
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                School Name(English)을 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="name">School Address(English)</label>
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                School Address(English)을 입력해주세요.
              </div>
            </div>
          </div>
          
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">School E-mail Address</label>
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                School E-mail을 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="name">School Tel</label>
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                School Tel을 입력해주세요.
              </div>
            </div>
          </div>
          
          <div class="row">
          	<div class="col-md-4 mb-3">
		       <label>Date of admissioin(transfer)</label>
		    </div>
          	<div class='col-md-8 mb-3'> 
			    <div class="input-group date" id="datetimepicker2" data-target-input="nearest">
			         <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker2">
			         <div class="input-group-append" data-target="#datetimepicker2" data-toggle="datetimepicker">
			             <div class="input-group-text"><i class="fa fa-calendar"></i></div>
			         </div>
			     </div>
			</div>
           </div>
           
           <div class="row">
				<div class="col-md-4 mb-3">
		            <label>Date of graduation(withdrawal)</label>
		         </div>
          	<div class='col-md-8 mb-3'> 
			    <div class="input-group date" id="datetimepicker3" data-target-input="nearest">
			         <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker3">
			         <div class="input-group-append" data-target="#datetimepicker3" data-toggle="datetimepicker">
			             <div class="input-group-text"><i class="fa fa-calendar"></i></div>
			         </div>
			     </div>
			</div>
           </div>              
          
          <hr class="mb-4">

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
	<!-- DatePicker CDN -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
 	<script>
		var firstTabEl = document.querySelector('#pills-tab li:nth-child(5) a')
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

		<script type="text/javascript">
		    $(function () {
		        $('#datetimepicker1').datetimepicker({ 
		        	format: 'YYYY-MM-DD' /* datetimepicker YYYY-MM-DD 형식 출력 */
		        });
		        $('#datetimepicker2').datetimepicker({
		        	format: 'YYYY-MM-DD', 
		        	/*format: 'L', datetimepicker 시각 없는 형식으로 출력 (09/19/2022) */
		            useCurrent: false
		        });
		        $('#datetimepicker3').datetimepicker({ format: 'YYYY-MM-DD'});
/* 		        $("#datetimepicker1").on("change.datetimepicker", function (e) {
		            $('#datetimepicker2').datetimepicker('minDate', e.date);
		        });
		        $("#datetimepicker2").on("change.datetimepicker", function (e) {
		            $('#datetimepicker1').datetimepicker('maxDate', e.date);
		        }); */
		    });
		</script>

</body>
</html>