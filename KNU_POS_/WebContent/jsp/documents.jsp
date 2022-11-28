<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<!-- ����Ʈ�� ���õ� ����(������ ��) -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>�׽�Ʈ</title>
<!-- bootstrap CSS �߰� -->
<link rel="stylesheet" href="../css/bootstrap.min.css"/>
<!-- Custom CSS �߰� -->
<link rel="stylesheet" href="../css/custom.css"/>
<!-- main CSS �߰� -->
<link rel="stylesheet" href="../css/main.css"/>

</head>
<%
	//com.util.Utility u = new com.util.Utility();
	//knumis.util.Combo cbFS = new Combo("se");
	//knumis.util.Util util = new knumis.util.Util();

	

	//�߰� - ��
	String s_rgst = "";
	String s_id = "";
	
	//��������,�б⼼��
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
	flag = si.readGet(request); //flag�� ���ؼ� ��û
%>
<body class="d-flex flex-column min-vh-100">
<jsp:include page="./top.jsp" />
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3 text-center">��Ÿ�������ε�</h4>
        <hr class="mb-4">
        <!-- ���������� ���� multipart ��� -->
        <form class="validation-form" method="post" action="./documents_s.jsp" enctype="multipart/form-data" novalidate>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">1. �ܱ���������(����, �� �Ǵ� �� �ܱ��νź���, ���ǻ�)</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name1" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
                �ܱ����������� ���ε����ּ���.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">2. �ܰ�����(��ȭ 20,000�޷� ����)</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name2" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
                �ܰ������� ���ε����ּ���.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">3. ������������</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name3" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
                �������������� ���ε����ּ���.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">4. �����б� ����ǥ</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name4" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
                ����ǥ�� ���ε����ּ���.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">5. �����б� ����(����)����</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name5" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
               ����(����)������ ���ε����ּ���.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">6. ��������</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name6" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
                ���������� ���ε����ּ���.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">7. ��Ÿ(�ܱ��ε����, ���Ա�������� ��)</label>
            </div>
            <div class="col-md-6 mb-3">
              <input type="file" name="file_name7" class="form-control" id="inputGroupFile01" >
              <div class="invalid-feedback">
                �ܱ��ε����, ���Ա���������� ���ε����ּ���.
              </div>
            </div>
          </div>
          
          <!-- <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" >
            <label class="custom-control-label" for="aggrement">�������� ���� �� �̿뿡 �����մϴ�.</label>
          </div> -->
          <div class="mb-4"></div>
          <button class="btn btn-danger btn-lg btn-block" type="submit">�����ϱ�</button>
        </form>
      </div>
    </div>
  </div>
  <footer class="mt-auto">
		<jsp:include page="../footer.jsp" />
  </footer>
  	<!-- ��ȿ��üũ -->
	<script src="../js/validate.js"></script>
  	<!-- �������� �ڹٽ�ũ��Ʈ ���� �߰� -->
	<script src="../js/jquery.min.js"></script>
	<!-- ���� �ڹٽ�ũ��Ʈ ���� �߰� -->
	<script src="../js/pooper.js"></script>
	<!-- ��Ʈ��Ʈ�� �ڹٽ�ũ��Ʈ ���� �߰� -->
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