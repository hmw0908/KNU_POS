<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="catalogue.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title></title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- site icon -->
      <link rel="icon" href="img/knu3.jpg" type="image/png" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css2/bootstrap.min.css" />
      <!-- site css -->
      <link rel="stylesheet" href="style.css" />
      <!-- responsive css -->
      <link rel="stylesheet" href="css2/responsive.css" />
      <!-- color css -->
      <link rel="stylesheet" href="css2/colors.css" />
      <!-- select bootstrap -->
      <link rel="stylesheet" href="css2/bootstrap-select.css" />
      <!-- scrollbar css -->
      <link rel="stylesheet" href="css2/perfect-scrollbar.css" />
      <!-- custom css -->
      <link rel="stylesheet" href="css2/custom.css" />
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body class="dashboard dashboard_1">
   <% 
    	String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		int catalogueID = 1;
		if(request.getParameter("catalogueID") != null){
			catalogueID = Integer.parseInt(request.getParameter("catalogueID"));
		}
	%>
      <div class="full_container">
         <div class="inner_container">
            <!-- Sidebar  -->
            <nav id="sidebar">
               <div class="sidebar_blog_1">
                  <div class="sidebar-header">
                     <div class="logo_section">
                        <a href="index.jsp"><img class="logo_icon img-responsive" src="img/knu3.jpg" alt="#" /></a>
                     </div>
                  </div>
                  <div class="sidebar_user_info">
                     <div class="icon_setting"></div>
                     <div class="user_profle_side">
                        <div class="user_img"><img class="img-responsive" src="img/knu3.jpg" alt="#" /></div>
                        <div class="user_info">
                           <h6>매장명</h6>
                           <p><span class="online_animation"></span> Online</p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="sidebar_blog_2">
                  <h4>Order</h4>
                  <ul class="list-unstyled components">
					<div class="menu_list"  style=" height :100%"> 
			        <div class="menuTable"  style="overflow:scroll; max-height : 625px;   border: 2px solid #000000 ">
			            <table border="1" width =100% >
			                <!-- 테이블의 헤더 즉 열의 제목 -->
			                    <th>순번</th>  
			                    <th>메뉴</th>
			                    <th>수량</th>
			                    <th>가격</th>
			                <tbody id="menuTable" >             
			                </tbody>
			            </table>
			        </div>
			        <div>
                  총 가격<label id="sum"> </label>
			            <br><button id="btn_com" style="width: 100px;" onclick="complete()">주문 완료</button>
			            <button id="btn_reset" style="width: 100px;" onclick="reset()">주문 초기화</button>
			        </div>
			    </div>
                  </ul>
               </div>
            </nav>
            <!-- end sidebar -->
            <!-- right content -->
            <div id="content">
               <!-- topbar -->
               <div class="topbar">
                  <nav class="navbar navbar-expand-lg navbar-light">
                     <div class="full">
                        <button type="button" id="sidebarCollapse" class="sidebar_toggle"><i class="fa fa-bars"></i></button>
                        <div class="logo_section">
                           <a href="index.jsp"><img class="img-responsive" src="img/knu3.jpg" alt="#" /></a>
                        </div>
                        <div class="right_topbar">
                           <div class="icon_info">
                              <ul class="user_profile_dd">
                                 <li>
                                    <a class="dropdown-toggle" data-toggle="dropdown"><img class="img-responsive rounded-circle" src="img/knu3.jpg" alt="#" /><span class="name_user">name</span></a>
                                    <div class="dropdown-menu">
                                       <a class="dropdown-item" href="PaymentView.jsp">PaymentView</a>
                                       <a class="dropdown-item" href="main.jsp">Back</a>
                                       <a class="dropdown-item" href="logoutAction.jsp"><span>Log Out</span> <i class="fa fa-sign-out"></i></a>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </nav>
               </div>
               <!-- end topbar -->
               <!-- Menu inner -->
               <div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
                              <h2>Menu</h2>
                           </div>
                        </div>
                     </div>
                     <div class="row column1">
                     <%
                     	CatalogueDAO catalogueDAO = new CatalogueDAO();
                     	ArrayList<Catalogue> list = catalogueDAO.getList(catalogueID);
                     	for(int i = 0; i < list.size(); i++){
                     %>
                     
                     <!-- 반복시작 -->
                        <div class="col-md-6 col-lg-3">
                        <button class="button" id="so" onclick="menu_click(this.id)">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-star yellow_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div class="Right">
                                    <p class="total_no"><%=list.get(i).getCatalogueName() %></p>
                                    <p class="head_couter">￦<%=list.get(i).getCataloguePrice() %></p>
                                 </div>
                              </div>
                           </div>
                        </button>
                        </div>
                        <!-- 반복종료 -->
                       <%
                        	}
                     	%>
                        <div class="col-md-6 col-lg-3">
                        <button class="button" id="ch" onclick="menu_click(this.id)">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-star blue1_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no">크림빵</p>
                                    <p class="head_couter">￦1800</p>
                                 </div>
                              </div>
                           </div>
                        </button>
                        </div>
                        <div class="col-md-6 col-lg-3">
                        <button class="button" id="dan" onclick="menu_click(this.id)">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-star green_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no">단팥빵</p>
                                    <p class="head_couter">￦1500</p>
                                 </div>
                              </div>
                           </div>
                        </button>
                        </div>
                        
                        <div class="col-md-6 col-lg-3">
                        <button class="button" id="bag" onclick="menu_click(this.id)">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-star red_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no">바게트빵</p>
                                    <p class="head_couter">￦5000</p>
                                 </div>
                              </div>
                           </div>
                        </button>
                        </div>

                     </div>
                     </div>
                  </div>
                  <!-- footer -->
                  <div class="container-fluid">
                     <div class="footer">
                        <p>Copyright © 2018 Designed by html.design. All rights reserved.<br><br>
                           Distributed By: <a href="https://themewagon.com/">ThemeWagon</a>
                        </p>
                     </div>
                  </div>
               </div>
               <!-- end Menu inner -->
            </div>
         </div>
      </div>
      <script src="menu.js"></script>
      <!-- jQuery -->
      <script src="js2/jquery.min.js"></script>
      <script src="js2/popper.min.js"></script>
      <script src="js2/bootstrap.min.js"></script>
      <!-- wow animation -->
      <script src="js2/animate.js"></script>
      <!-- select country -->
      <script src="js2/bootstrap-select.js"></script>
      <!-- owl carousel -->
      <script src="js2/owl.carousel.js"></script> 
      <!-- chart js -->
      <script src="js2/Chart.min.js"></script>
      <script src="js2/Chart.bundle.min.js"></script>
      <script src="js2/utils.js"></script>
      <script src="js2/analyser.js"></script>
      <!-- nice scrollbar -->
      <script src="js2/perfect-scrollbar.min.js"></script>
      <script>
         var ps = new PerfectScrollbar('#sidebar');
      </script>
      <!-- custom js -->
      <script src="js2/custom.js"></script>
      <script src="js2/chart_custom_style1.js"></script>
      <script>
         let basket = {};
         let basketId = 0;
         let basketTotalPrice = 0;
         </script>
   </body>
</html>