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
<!-- DateTimePicker CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />

</head>
<body class="d-flex flex-column min-vh-100">
<jsp:include page="./top.jsp" />
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3 text-center">개인정보<br>个人信息事项</h4>
        <hr class="mb-4">
        <form class="validation-form" action="./family.jsp" novalidate>
        	<div class="row">
	            <div class="col-md-2 mb-3 pl-5">
	              <label for="name">입학희망학기<br>入学学期<!--<small>(Year and semester)</small>--></label>
	            </div>
	            <div class="col-md-8 mb-3">
	              <input type="text" class="form-control text-center" id="name" placeholder="2022학년도 2학기(Fall)" value="" readonly>
	            </div>
        	</div>
        	
            <div class="row">
            <div class="col-md-2 mb-3 pl-5">
              <label for="root">전형구분<br>报名类型</label>
            </div>
            <div class="col-md-8 mb-3">
              <select class="custom-select d-block w-100" id="root" required>
                <option value="" disabled selected>전형 구분을 선택하세요. /请选一下报名类型</option>
                <option value="1">신입학(新生)</option>
                <option value="2">3학년 편입학(3年级插班)</option>
                <option value="3">4학년 편입학(4年级插班)</option>
                <option value="4">교환학생(交换生/exchange student）</option>
                <option value="5">복수학위(dure degree)</option>
              </select>
              <div class="invalid-feedback">
                전형구분을 선택하세요/请选一下报名类型
              </div>
            </div>
            </div>
            
            <div class="row">
	            <div class="col-md-2 mb-3 pl-5">
	              <label for="nickname">지원학과<br>报名专业<br><small>申请后不可变更</small></label>
	            </div>
	            <div class="col-md-8 mb-3">
	              <select class="custom-select d-block w-100" id="root" required>
	                <option value="" disabled selected>지원학과를 선택하세요. /请选一下报名专业</option>
	                <option value="1">1</option>
	                <option value="2">2</option>
	                <option value="3">3</option>
	                <option value="4">4</option>
	                <option value="5">5</option>
	              </select>
	              <div class="invalid-feedback">
	                지원학과를 선택하세요/请选一下报名专业
	              </div>
	            </div>
           </div>
           
           <hr><br>
           
          <div class="row">
            <div class="col-md-2 pl-5 mb-3">
              <label for="name">이름<br>名字</label>
            </div>
            <div class="col-md-1 mb-3 pr-0">
              <label for="name" class="pr-0">국문<br><br>영문<br><br>중문</label>
            </div>
            <div class="col-md-4 mb-3 pl-0">
              <input type="text" class="form-control mb-2" id="Kname" placeholder="韩文 (Korean Name)" value="" required>
              <input type="text" class="form-control mb-2" id="Ename" placeholder="英文 (English Name/与护照上的英文名字要一致)" value="" required>
              <input type="text" class="form-control mb-3" id="Ename" placeholder="中文 (Chinese name)" value="" required>
              <div class="invalid-feedback">
                이름을 입력하세요/请输入名字信息
              </div>
            </div>
            <div class="col-md-2 mb-3 pl-5 pr-0">
		        <label>생년월일<br>出生年月日</label>
		    </div>
		    <div class="col-md-2 mb-3 pl-0">
				<div class="input-group date" id="datetimepicker3" data-target-input="nearest">
				    <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker3" required>
				    <div class="input-group-append" data-target="#datetimepicker3" data-toggle="datetimepicker">
				        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
				    </div>
				</div>
		    </div>
            <div class="col-md-2 mb-3 pl-5">
              <label for="name">사진<br>证件照</label>
            </div>
            <div class="col-md-5 mb-3">
            <label id="input-file-button" for="input-file">
			  사진 선택(上传照片)
			</label>
			<input type="file" name="file_name1" class="form-control" id="input-file" style="display:none;" required/>
            <div class="invalid-feedback">
                사진을 업로드해주세요/请上传照片
              </div>
            </div>
            <div class="col-md-2 pl-5 mb-3">
              <label for="name">성별<br>性别<!--<small>(Date of Birth)</small>--></label>
            </div>
            <div class="col-md-3 mb-3">
              <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
  			  <label class="form-check-label" for="exampleRadios1">
			    남자(男生)
			  </label>
			  <br>
			  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
			  <label class="form-check-label" for="exampleRadios2">
			    여자 (女生)
			  </label>
              <div class="invalid-feedback">
                생년월일을 입력해주세요.
              </div>
            </div>
            </div>
            
            
	          <div class="row">
	            <div class="col-md-2 mb-3 pl-5">
	              <label for="root">영문주소<br>英文地址</label>
	            </div>
	            <div class="col-md-6 mb-3">
	              <input type="text" class="form-control" id="nickname" placeholder="请写英文地址" value="" required>
	              <div class="invalid-feedback">
	                주소를 입력하세요/请输入英文地址
	              </div>
	            </div>
	            <div class="col-md-3 mb-3">
	            <input type="text" class="form-control" id="nickname" placeholder="우편번호/邮编号" value="" required>
	            	<div class="invalid-feedback">
	                	우편번호를 입력하세요/请输入邮编号
	                </div>
	            </div>
	           </div>
	           
	           <div class="row">
	            <div class="col-md-2 mb-3 pl-5">
	              <label for="nickname">국적<br>国籍</label>
	            </div>
	            <div class="col-md-4 mb-3">
	              <input type="text" class="form-control" id="nickname" placeholder="영문으로 쓰세요./请用英文写" value="" required>
	              <div class="invalid-feedback">
	                국적을 입력하세요/请输入国籍
	              </div>
	            </div>
	            <div class="col-md-2 mb-3 pl-4">
	              <label for="name">전화번호<br>电话号码<!--<small>(Phone)</small>--></label>
	            </div>
	            <div class="col-md-3 mb-3">
	              <input type="text" class="form-control mb-2" id="Pname" placeholder="핸드폰 번호 (手机号)" value="" required>
	              <input type="text" class="form-control mb-3" id="Hname" placeholder="비상연락처 (紧急联系方式)" value="">
	              <div class="invalid-feedback">
	                전화번호를 입력하세요/请输入电话号码
	              </div>
	            </div>
	            <div class="col-md-2 mb-3 pl-5">
	              <label for="nickname">이메일<br>邮箱<!--<small>(E-mail)</small>  --></label>
	            </div>
	            <div class="col-md-4 mb-3">
	              <input type="email" class="form-control" id="email" placeholder="you@example.com" required>
	              <div class="invalid-feedback">
	                이메일을 입력하세요/请输入邮箱地址
	              </div>
	            </div>
	            <div class="col-md-2 mb-3 pl-4">
		            <label for="address">여권번호<br>护照号<!-- <small>(passport No.)</small> --></label>
		        </div>
	            <div class="col-md-3 mb-3">
		            <input type="text" class="form-control" id="address" placeholder="" required>
		            <div class="invalid-feedback">
		              여권번호를 입력하세요/请输入护照号
		            </div>
		        </div>
	           </div> 
	           
	
	          <div class="row">
		          <div class="col-md-2 mb-3 pl-5">
		            <label style="font-size:15px;">외국인등록증 번호<br>外国人登陆证号</label>
		          </div>
		          <div class="col-md-4 mb-3">
		            <input type="text" class="form-control" id="gkrfur_gkr" placeholder="소지자에 한함 (仅限于持有者)">
		          </div>
				  <div class="col-md-2 mb-3 pl-4">
				      <label style="font-size:16px;">외국인등록증 만료일<br>外国人登陆证有效期</label>
				  </div>
				  <div class="col-md-3 mb-3">
				  	<div class="input-group date" id="datetimepicker4" data-target-input="nearest">
						<input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker4">
						<div class="input-group-append" data-target="#datetimepicker4" data-toggle="datetimepicker">
						   <div class="input-group-text"><i class="fa fa-calendar"></i></div>
						</div>
					</div>
				  </div>
	          </div>
	          
	          <hr><br>
	          
	          <div class="row">
		          <div class="col-md-2 mb-3 pl-5">
		            <label>최종학력학교명<br>最终学历学校名</label>
		          </div>
		          <div class="col-md-4 mb-3">
		            <input type="text" class="form-control" id="" placeholder="영문으로 작성(请用用英文写)" required>
		          </div>
		      </div>
		      
		      
		      <div class="row">
		          <div class="col-md-2 mb-3 pl-5">
		            <label>전공영문명<br>专业英文名</label>
		          </div>
		          <div class="col-md-4 mb-3">
		            <input type="text" class="form-control" id="" placeholder="영문으로 작성(请用用英文写)" required>
		            <span style="font-size:12px;">※ 영문성적표에 표기된 전공명 참고<br>※ 可参考英文成绩单上的专业名称</span>
		          </div>
		          <div class="col-md-2 mb-3 pl-4">
		            <label>과정구분<br>(学历)</label>
		          </div>
		          <div class="col-md-3 mb-3">
		            <select class="custom-select d-block w-100" id="root" required>
		            	<option value="" disabled selected>최종학력을 선택하세요./请选一下最终学历</option>
		                <option value="1">고등학교(高中)</option>
		                <option value="2">2년제 전문대학 졸업예정자(3학년 편입가능) (2年制专科大学预毕生(只能插班3年级))</option>
		                <option value="3">2년제 전문대학 졸업자(3학년 편입가능) (2年制专科大学毕业生(只能插班3年级))</option>
		                <option value="4">3년제 전문대학 졸업예정자(3年制专科大学预毕生)</option>
		                <option value="5">3년제 전문대학 졸업자(3年制专科大学毕业生)</option>
		                <option value="6">4년제 대학 졸업예정자(4年制大学预毕生）</option>
		                <option value="7">4년제 대학 졸업자 (4年制专科大学毕业生)</option>
		                <option value="8">4년제 대학 2년 이상 수료자 (4年制大学2年以上修生)</option>
		              </select>
		            <div class="invalid-feedback">
		              최종 학력 유형을 선택하세요/请选择最终学历类型
		            </div>
		          </div>
	          </div>
		      
		      
		      <div class="row">
		          <div class="col-md-2 mb-3 pl-5">
		            <label>입학시기<br>入学时期<br></label>
		          </div>
		          <div class="col-md-4 mb-3">
				    <div class="input-group date" id="datetimepicker1" data-target-input="nearest">
				         <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker1" required>
				         <div class="input-group-append" data-target="#datetimepicker1" data-toggle="datetimepicker">
				             <div class="input-group-text"><i class="fa fa-calendar"></i></div>
				         </div>
				    	 <div class="invalid-feedback">
			               입학시기를 선택하세요/请选择入学时期 
			             </div>
				     </div>
		          </div>
		          <div class="col-md-2 mb-3 pl-4">
		            <label>졸업시기<br>毕业时期</label>
		          </div>
		          <div class="col-md-3 mb-3">
				    <div class="input-group date" id="datetimepicker2" data-target-input="nearest">
				         <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker2" required>
				         <div class="input-group-append" data-target="#datetimepicker2" data-toggle="datetimepicker">
				             <div class="input-group-text"><i class="fa fa-calendar"></i></div>
				         </div>
				         <div class="invalid-feedback">
			               졸업시기를 선택하세요/请选择毕业时期
			             </div>
				     </div>
		          </div>
	          </div>
	          
	          
	          <div class="row">
		          <div class="col-md-2 mb-3 pl-5">
		            <label for="address">모국어<br>母语<br></label>
		          </div>
		          <div class="col-md-4 mb-3">
		            <input type="text" class="form-control" id="" placeholder="" required>
		            <div class="invalid-feedback">
		              모국어를 입력하세요/请输入母语
		            </div>
		          </div>
		          
		          <div class="col-md-2 mb-3 pl-4">
		            <label for="address">한국어능력<br>韩国语水平</label>
		          </div>
		          <div class="col-md-3 mb-3">
		            <select class="custom-select d-block w-100" id="root" required>
		            	<option value="" disabled selected>한국어능력을 선택하세요./请选一下韩语水平</option>
		                <option value="1">한국어능력시험(TOPIK) 3급 이상 취득자</option>
		                <option value="2">세종학당 한국어 중급1 이상 이수자 </option>
		                <option value="3">강남대학교 어학교육원 3급 이상 수료자</option>
		                <option value="4">타 4년제 대학 어학교육원 3급 이상 수료자</option>
		                <option value="5">이중언어과정(중국어) 신청자로, 한국어 없음 (双语授课课程(中文)申请者，没有韩语)</option>
		              </select>
		            <div class="invalid-feedback">
		              한국어를 선택하세요/请选择韩语水平
		            </div>
		          </div>
		          <div class="col-md-4 mb-3 pl-5">
	              <label for="root" style="font-size:15px;">본교 정보 확인처<br>确认本校信息处</label>
	            </div>
	            <div class="col-md-7 mb-3 pl-0">
	              <select class="custom-select d-block w-100" id="root" required>
	                <option value="" disabled selected>본교 정보 확인처를 선택하세요./请选一下确认本校信息处</option>
	                <option value="1">개인이 직접 확인 (学生本人与江南大联系确认)</option>
	                <option value="2">자매대학 추천 (姊妹大学推荐)</option>
	                <option value="3">현지 유학업체 추천 (国内留学机构推荐)</option>
	              </select>
	              <div class="invalid-feedback">
	                본교 정보 확인처를 선택하세요/请输入确认本校信息处
	              </div>
	            </div>
	          </div>
	          
	          
	          <div class="row">
		          <div class="col-md-4 mb-3 pl-5">
		            <label for="address" style="font-size:15px;">본교 정보 확인처가 유학업체일 경우 업체 명<br>如果确认本校信息机构为留学机构时，机构名</label>
		          </div>
		          <div class="col-md-7 mb-3 pl-0">
		            <input type="text" class="form-control" id="" placeholder="영문으로 작성(请用用英文写), 개인 신청일 경우 개인신청 작성(个人申请时请1写个人申请)" required>
		          </div>
		       </div>
	            
	          
	          <hr class="mb-4">
	          <!-- <div class="custom-control custom-checkbox">
	            <input type="checkbox" class="custom-control-input" id="aggrement" required>
	            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
	          </div> -->
	          <div class="mb-4"></div>
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
	<!-- DateTimePicker CDN -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
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
			<script type="text/javascript">
		    $(function () {
		        $('#datetimepicker1').datetimepicker({ format: 'YYYY-MM-DD'});
		        $('#datetimepicker2').datetimepicker({
		            format: 'YYYY-MM-DD',
		            useCurrent: false
		        });
		        $('#datetimepicker3').datetimepicker({ format: 'YYYY-MM-DD'});
		        $('#datetimepicker4').datetimepicker({ format: 'YYYY-MM-DD'});
 		        $("#datetimepicker1").on("change.datetimepicker", function (e) {
		            $('#datetimepicker2').datetimepicker('minDate', e.date);
		        });
		        $("#datetimepicker2").on("change.datetimepicker", function (e) {
		            $('#datetimepicker1').datetimepicker('maxDate', e.date);
		        });
		    });
		</script>
</body>
</html>