<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.ReportDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<script> jQuery(document).ready(function($) {
$('.counter').counterUp({ delay: 10, time: 1000 }); });</script>

<title>���Ͼ | MARKETUS</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->


<link rel="stylesheet"
   href="assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
   href="assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
<link rel="stylesheet"
   href="assets/vendor/chartist/css/chartist-custom.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="assets/css/main.css">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet" href="assets/css/demo.css">
<!-- GOOGLE FONTS -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">   
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
   href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
   href="assets/img/favicon.png">
<link rel="stylesheet" href="assets/css/style.css">
<style type="text/css">
.korean{
   font-family: 'Noto Sans KR', sans-serif;
}

.col-md-4-1 {
   width: 50%;
   color: #3a3a3a;
}

.col-md-3-1 {
   width: 50%;
}

.col-md-4 {
   color: #3a3a3a;
}

.col-md-3 {
   color: #3a3a3a;
}

.pro {
   width: 30%
}

.col {
   color: #3a3a3a;
}

.panel {
   font-size: 20px;
   color: #3a3a3a;
}

h3.panel-title {
   color: #3a3a3a;
}

p{
   font-size: 20px;
}

</style>
</head>

<body>
   <%
   ReportDTO report = (ReportDTO) session.getAttribute("report");
   
   
   MemberDTO info = (MemberDTO) session.getAttribute("influMypage");
   System.out.println("ReportDTO.getAd_estimate() : " + report.getAll_avg_like());

   ArrayList<Integer> numList = new ArrayList<Integer>();
   ArrayList<Integer> categoryList = new ArrayList<Integer>();

   numList.add(report.getAssesment());
   numList.add(report.getCommunication());
   numList.add(report.getInquire());
   categoryList.add(report.getCategory_dailylife());
   categoryList.add(report.getCategory_beauty());
   categoryList.add(report.getCategory_fashion());
   categoryList.add(report.getCategory_food());

   System.out.println("report.getCategory_dailylife() : " + report.getCategory_dailylife());
   %>

   <!-- WRAPPER -->
   <div id="wrapper">





      <header id="main_menu" class ="korean header navbar-fixed-top">
         <div class ="korean main_menu_bg" style = "background-color:white;">
            <div class ="korean container" style = "width:100%;">
               <div class ="korean row">
                  <div class ="korean nave_menu">
                     <nav class ="korean navbar navbar-default">
                        <div class ="korean container-fluid">
                           <!-- Brand and toggle get grouped for better mobile display -->
                           <div class ="korean navbar-header">
                              <button type="button" class ="korean navbar-toggle collapsed"
                                 data-toggle="collapse"
                                 data-target="#bs-example-navbar-collapse-1"
                                 aria-expanded="false">
                                 <span class ="korean sr-only">Toggle navigation</span> <span
                                    class ="korean icon-bar"></span> <span class ="korean icon-bar"></span> <span
                                    class ="korean icon-bar"></span>
                              </button>


                              <a class ="korean navbar-brand" href="../bino-free-html5-landing-page-template/firstPage.jsp"> <img
                                 src="images/logo_high_re.png" style = "width:120px; height:50px; margin-left: 30px; margin-top:10px"/>
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->

                           <div class ="korean collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">

                              <ul class ="korean nav navbar-nav navbar-right">
                                 <li><a href="" >HOME</a></li><!-- ���ǰ��޾ƿͼ� influencer/companymain���� �̵� -->
                                            <li><a href="hashtag.jsp">HASHTAG LAB</a></li>
                                            <li><a href="../InfluencerMypage?name=inf" >My Page</a></li><!-- ���ǰ��޾ƿͼ� mypage/mypage_ad���� �̵� -->
                                            <%if(info == null){ %>
                                 <li><a href="page-login.jsp">LOGIN</a></li>
                                 <%} else{ %>
                                 <li><a href="">LOGOUT</a></li>
                                 <%} %>
                              </ul>
                           </div>
                        </div>
                     </nav>
                  </div>
               </div>

            </div>

         </div>
      </header>
      <!--End of header -->
      <!-- LEFT SIDEBAR -->
      <div id="sidebar-nav" class ="korean sidebar" style="display: none">
         <div class ="korean sidebar-scroll">
            <nav>
               <ul class ="korean nav">
                  <li><a href="index.html" class ="korean active"><i
                        class ="korean lnr lnr-home"></i> <span>Dashboard</span></a></li>
                  <li><a href="elements.html" class ="korean "><i
                        class ="korean lnr lnr-code"></i> <span>Elements</span></a></li>
                  <li><a href="charts.html" class ="korean "><i
                        class ="korean lnr lnr-chart-bars"></i> <span>Charts</span></a></li>
                  <li><a href="panels.html" class ="korean "><i class ="korean lnr lnr-cog"></i>
                        <span>Panels</span></a></li>
                  <li><a href="notifications.html" class ="korean "><i
                        class ="korean lnr lnr-alarm"></i> <span>Notifications</span></a></li>
                  <li><a href="#subPages" data-toggle="collapse"
                     class ="korean collapsed"><i class ="korean lnr lnr-file-empty"></i> <span>Pages</span>
                        <i class ="korean icon-submenu lnr lnr-chevron-left"></i></a>
                     <div id="subPages" class ="korean collapse ">
                        <ul class ="korean nav">
                           <li><a href="page-profile.html" class ="korean ">Profile</a></li>
                           <li><a href="page-login.html" class ="korean ">Login</a></li>
                           <li><a href="page-lockscreen.html" class ="korean ">Lockscreen</a></li>
                        </ul>
                     </div></li>
                  <li><a href="tables.html" class ="korean "><i
                        class ="korean lnr lnr-dice"></i> <span>Tables</span></a></li>
                  <li><a href="typography.html" class ="korean "><i
                        class ="korean lnr lnr-text-format"></i> <span>Typography</span></a></li>
                  <li><a href="icons.html" class ="korean "><i
                        class ="korean lnr lnr-linearicons"></i> <span>Icons</span></a></li>
               </ul>
            </nav>
         </div>
      </div>
      <!-- END LEFT SIDEBAR -->
      <!-- MAIN -->
      <div class ="korean main" style="width: 100%">
         <!-- MAIN CONTENT -->
         <div class ="korean main-content">
            <div class ="korean container-fluid">
               <!-- OVERVIEW -->



               <!-- ���� �Խñ� �ȷο� �ȷ��� -->
               <div class ="korean col-md-4 col-md-4-1" style="width: 50%">
                  <!-- TASKS -->
                  <!-- ���� -->
                  <div class ="korean panel">
                     <div>
                        <br> <br>

                        <div class ="korean row">
                        <div class ="korean korean left" >
                        
                        
                        <img alt="" src="assets/img/heeruring.jpg" class ="korean img-circle" style="height: 150px; visibility: hidden">
                              <img alt="" src="assets/img/<%=info.getInflu_id()%>.jpg" class ="korean img-circle" style="height: 150px;">
                              </div>
                              <div class ="korean right" style = "padding-right: 60px; ">

                           <div>
                              <h2 class ="korean korean" style="position:absolute !important; right : 100px !important; bottom : 200px !important; color: black; text-align: right; "><%=report.getInfluence_score() %> ��</h2><br>
                              <script
                                 src="//cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
                              <script src="jquery.counterup.min.js"></script>
                           </div>

                           <div>
                              <p class ="korean korean" style="font-size: 15px; padding-left: 100px; text-align: center; margin-bottom: 100px" >������� �ǹ̴� ���÷���� ������ ��������<br> ���� �Խ������� ��Ÿ�����ִ� ����</p>
                           </div>

                        </div>
                              

                        </div>
                        <br>
                                                <br> <br>
                        <div class ="korean panel-body">

                           <div class ="korean col-md-3 col-md-3-1 pro">
                              <div class ="korean metric">
                                 <span class ="korean icon"><i class ="korean fa fa-shopping-bag"></i></span>
                                 <p>
                                    <span class ="korean number"><%=report.getNum_media()%></span> <span
                                       class ="korean title">�Խñ�</span>
                                 </p>
                              </div>
                           </div>
                           <div class ="korean col-md-3 col-md-3-1 pro">
                              <div class ="korean metric">
                                 <p>
                                    <span class ="korean number"><%=report.getFake_follower()%></span> <span
                                       class ="korean title">�ȷο�</span>
                                 </p>
                              </div>
                           </div>
                           <div class ="korean col-md-3 col-md-3-1 pro">
                              <div class ="korean metric">
                                 <span class ="korean icon"><i class ="korean fa fa-shopping-bag"></i></span>
                                 <p>
                                    <span class ="korean number"><%=report.getNum_following()%></span> <span
                                       class ="korean title">�ȷ���</span>
                                 </p>
                              </div>
                           </div>

                        </div>
                     </div>
                     <div class ="korean right">
                        <div class ="korean panel-body"></div>
                     </div>
                  </div>
               </div>

               <!-- �ٸ� ���� -->
               <div class ="korean col-md-4 col-md-4-1">
                  <!-- TASKS -->
                  <!-- ���� -->
                  <div class ="korean panel">

                     <div class ="korean panel-body">

                        <div class ="korean col-md-3 col-md-3-1">
                           <div class ="korean metric">
                              <span class ="korean icon"><i class ="korean fa fa-shopping-bag"></i></span>
                              <p>
                                 <span class ="korean number"><%=report.getRank_percent()%>%</span> <span
                                    class ="korean title">���� %</span>
                              </p>
                           </div>
                        </div>
                        <div class ="korean col-md-3 col-md-3-1">
                           <div class ="korean metric">
                              <span class ="korean icon"><i class ="korean fa fa-shopping-bag"></i></span>
                              <p>
                                 <span class ="korean number"><%=info.getInflu_category()%></span> <span
                                    class ="korean title">ī�װ�</span>
                              </p>
                           </div>
                        </div>
                        <div class ="korean col-md-3 col-md-3-1">
                           <div class ="korean metric">
                              <span class ="korean icon"><i class ="korean fa fa-shopping-bag"></i></span>
                              <p>
                                 <span class ="korean number"><%=info.getInflu_targetGender()%></span>
                                 <span class ="korean title">Ÿ�� ����</span>
                              </p>
                           </div>
                        </div>
                        <div class ="korean col-md-3 col-md-3-1">
                           <div class ="korean metric">
                              <span class ="korean icon"><i class ="korean fa fa-shopping-bag"></i></span>
                              <p>
                                 <span class ="korean number"><%=info.getInflu_targetAge()%></span> <span
                                    class ="korean title">Ÿ�� ����</span>
                              </p>
                           </div>
                        </div>
                        <div class ="korean col-md-3 col-md-3-1">
                           <div class ="korean metric">
                              <span class ="korean icon"><i class ="korean fa fa-shopping-bag"></i></span>
                              <p>
                                 <span class ="korean number"><%=report.getTot_like()%></span> <span
                                    class ="korean title">�� ���ƿ�</span>
                              </p>
                           </div>
                        </div>
                        <div class ="korean col-md-3 col-md-3-1">
                           <div class ="korean metric">
                              <span class ="korean icon"><i class ="korean fa fa-shopping-bag"></i></span>
                              <p>
                                 <span class ="korean number"><%=report.getTot_comment()%></span> <span
                                    class ="korean title">�� ���</span>
                              </p>
                           </div>
                        </div>

                     </div>
                  </div>
                  <div class ="korean right">
                     <div class ="korean panel-body"></div>
                  </div>
               </div>

               <!-- END VISIT CHART -->
               <!-- END TASKS -->
            </div>


            <div class ="korean row">
               <!-- ��� ���� -->
               <div class ="korean col-md-4 col-md-4-1">
                  <!-- TASKS -->
                  <!-- ���� -->
                  <div class ="korean panel">
                     <div class ="korean left" style="width: 60%">
                        <div class ="korean panel-heading">
                           <h3 class ="korean panel-title korean" style = "font-weight: bold; font-size: 30px; text-align: right;">
                           ���� ��� ����</h3>

                        </div>
                        <ul class ="korean list-unstyled list-justify">

                        </ul>
                     </div>

                     <div class ="korean panel-body">
                        <div id="chartdiv"></div>
						<p class ="korean" style="font-size: 15px; text-align: center; margin-bottom: 100px">* ��/���� ���� �������� ���� ������� ũ�ٰ� �Ǵ��մϴ�.</p>
                     </div>

                     <ul class ="korean list-unstyled task-list">
                  </div>
               </div>

               <!-- END VISIT CHART -->
               <!-- END TASKS -->





               <!-- ī�װ� -->
               <div class ="korean col-md-4 col-md-4-1">
                  <!-- TASKS -->
                  <!-- ���� -->
                  <div class ="korean panel">
                     <div class ="korean left" style="width: 60%">
                        <div class ="korean panel-heading">
                           <h3 class ="korean panel-title korean" style = "font-weight: bold; font-size: 30px; text-align: right;">ī�װ�</h3>

                        </div>
                     </div>
                     <ul class ="korean list-unstyled list-justify">
                        <div class ="korean panel-body">


                           <!-- HTML -->
                           <div class ="korean panel-body">
                               <div id="chartdiv2"></div>
						<p class ="korean" style="font-size: 15px; text-align: center; margin-bottom: 100px">* �ش� ���÷���� ī�װ��� ���� �������� �����մϴ�.</p>
                     </div>
                           </div>
                     </ul>
                  </div>
               </div>
            </div>
            <!-- END VISIT CHART -->



            <div class ="korean row">
               <!-- ��¥ ��¥ �ȷο� -->
               <div class ="korean col-md-4 col-md-4-1">
                  <!-- TASKS -->
                  <!-- ���� -->
                  <div class ="korean panel">
                     <div class ="korean left" style="width: 100%">
                        <div class ="korean panel-heading">
                           <h3 class ="korean panel-title" style = "font-weight: bold; font-size: 30px; text-align: center;">��¥ / ��¥ �ȷο�</h3>

                        </div>

                     </div>
                     <div class ="korean panel-body">

                        <div class ="korean panel-body">
                           <div id="chartdiv3"></div>
						<p class ="korean" style="font-size: 15px; text-align: center; margin-bottom: 100px">* �ش� ���÷�𼭸� �ȷ����ϰ� �ִ� �ȷο����� ��¥/��¥���� �Ǻ��մϴ�.</p>

                        </div>

                        <div style = "width : 80%; margin-left: 10%">
                           
                              <p>
                                 ��¥ �ȷο� <span class ="korean label-percent"><%=report.getReal_follower()%>%</span>
                              </p>
                              <div class ="korean progress progress-xs">
                                 <div class ="korean progress-bar progress-bar-success"
                                    role="progressbar" aria-valuenow="80" aria-valuemin="0"
                                    aria-valuemax="100"
                                    style="width: <%=report.getReal_follower()%>%; background-color: #4AB34A">
                                    <span class ="korean sr-only">80% Complete</span>
                                 </div>
                              </div>
                           



                              <p>
                                 ��¥ �ȷο� <span class ="korean label-percent"><%=report.getFake_follower()%>%</span>
                              </p>
                              <div class ="korean progress progress-xs">
                                 <div class ="korean progress-bar progress-bar-danger"
                                    role="progressbar" aria-valuenow="23" aria-valuemin="0"
                                    aria-valuemax="100"
                                    style="width: <%=report.getFake_follower()%>%; background-color: #FF3232">
                                    <span class ="korean sr-only">23% Complete</span>
                                 </div>
                              </div>





                           </ul>
                        </div>

                     </div>

                     <!-- END VISIT CHART -->
                     <!-- END TASKS -->
                  </div>
               </div>

               <!-- ��¥ / ��¥ ��� -->
               <div class ="korean col-md-4 col-md-4-1">
                  <!-- TASKS -->
                  <!-- ���� -->
                  <div class ="korean panel">
                     <div class ="korean left" style="width: 100%">
                        <div class ="korean panel-heading">
                           <h3 class ="korean panel-title" style = "font-weight: bold; font-size: 30px; text-align: center;">��¥ / ��¥ ���</h3>

                        </div>
                     </div>
                     <div class ="korean panel-body">
                        <div class ="korean panel-body">
                           <div id="chartdiv4"></div>
						<p class ="korean" style="font-size: 15px; text-align: center; margin-bottom: 100px">* ���÷�� �Խù��� ����� ��¥/��¥���� �Ǻ��մϴ�.</p>
                        </div>
                     </div>

                     <div style = "width : 80%; margin-left: 10%">
                           <p>
                              ��¥ ��� <span class ="korean label-percent"><%=report.getReal_comment()%>%</span>
                           </p>
                           <div class ="korean progress progress-xs">
                              <div class ="korean progress-bar progress-bar-success"
                                 role="progressbar" aria-valuenow="80" aria-valuemin="0"
                                 aria-valuemax="100"
                                 style="width: <%=report.getReal_comment()%>%; background-color: #4AB34A">
                                 <span class ="korean sr-only">80% Complete</span>
                              </div>
                           </div>



                           <p>
                              ��¥ ��� <span class ="korean label-percent"><%=report.getFake_comment()%>%</span>
                           </p>
                           <div class ="korean progress progress-xs">
                              <div class ="korean progress-bar progress-bar-danger"
                                 role="progressbar" aria-valuenow="23" aria-valuemin="0"
                                 aria-valuemax="100"
                                 style="width: <%=report.getFake_comment()%>%; background-color: #FF3232">
                                 <span class ="korean sr-only">23% Complete</span>
                              </div>
                           </div>
                        </ul>
                     </div>


                  </div>
               </div>



               <!-- END VISIT CHART -->
               <!-- END TASKS -->
            </div>

         </div>




         <!-- ���Ϻ� -->
         <div class ="korean col-md-4 col-md-4-1">
            <!-- VISIT CHART -->
            <div class ="korean panel">
               <div class ="korean left" style="width: 60%">
                  <div class ="korean panel-heading">
                     <h3 class ="korean panel-title" style = "font-weight: bold; font-size: 30px; text-align: right;">�ܰ� ���</h3>
                  </div>
               </div>
               <div class ="korean panel-body">
                  <div class ="korean panel-body">
                     <div id="week-chart" class ="korean ct-chart"></div>
<p class ="korean" style="font-size: 15px; text-align: center; margin-bottom: 100px">* ���� 3������ ���÷�� �����ÿ� ����� 2ȸ �̻� ���� �ܰ� ��۷� ���� �����Դϴ�.</p>
                  </div>
               </div>
            </div>
         </div>

         <!-- �ð��� -->
         <div class ="korean col-md-4 col-md-4-1">
            <!-- VISIT CHART -->

            <div class ="korean panel">
               <div class ="korean left" style="width: 60%">
                  <div class ="korean panel-heading">
                     <h3 class ="korean panel-title" style = "font-weight: bold; font-size: 30px; text-align: right;">�ܰ� ���ƿ�</h3>

                  </div>
               </div>
               <div class ="korean panel-body">
                  <div class ="korean panel-body">
                     <div id="like-chart" class ="korean ct-chart"></div>
                     <p class ="korean" style="font-size: 15px; text-align: center; margin-bottom: 100px">* ���� 3������ ���÷�� �����ÿ� ���ƿ並 2ȸ �̻� ���� �ܰ� ���ƿ��� ���� �����Դϴ�.</p>
                  </div>
               </div>
            </div>


            <!-- END VISIT CHART -->
         </div>





         <!-- ���ƿ� ��ȭ�� -->
         <div class ="korean col-md-6" style="width: 100%">
            <!-- MULTI CHARTS -->
            <div class ="korean panel">
               <div class ="korean panel-heading">
                  <h3 class ="korean panel-title" style = "font-weight: bold; font-size: 30px; text-align: center;">���ƿ� ��ȭ��</h3>

               </div>

               <div class ="korean panel-body">

                  <!-- HTML -->
                  <div id="chartdiv5"></div>



               </div>


            </div>
            <!-- END MULTI CHARTS -->
         </div>




         <!-- END MULTI CHARTS -->

         <div class ="korean col-md-4 col-md-4-1">
            <!-- ����Ʈ ����(���Ϻ�) -->

            <!-- VISIT CHART -->
            <div class ="korean panel">
               <div class ="korean panel-heading">
                  <h3 class ="korean panel-title" style = "font-weight: bold; font-size: 30px; text-align: center;">���Ϻ� ����Ʈ ����</h3>

               </div>
               <div class ="korean panel-body">
                  <!-- HTML -->
                  <div id="chartdiv6"></div>

               </div>
            </div>


            <!-- END VISIT CHART -->

         </div>

         <!-- ����Ʈ ����(�ð���) -->
         <div class ="korean col-md-4 col-md-4-1">

            <!-- VISIT CHART -->
            <div class ="korean panel">
               <div class ="korean panel-heading" >
                  <h3 class ="korean panel-title" style = "font-weight: bold; font-size: 30px; text-align: center;">�ð��� ����Ʈ ����</h3>

               </div>

               <div class ="korean panel-body">
                  <!-- HTML -->
                  <div id="chartdiv7"></div>

               </div>
            </div>
            <!-- END VISIT CHART -->

         </div>









         <div class ="korean col-md-6" style="width: 100%">
            <!-- ���� ���ƿ� & ��� -->

            <!-- VISIT CHART -->
            <div class ="korean panel">
               <div class ="korean panel-heading">
                  <h3 class ="korean panel-title" style = "font-weight: bold; font-size: 30px; text-align: center;">���ƿ� ����</h3>

               </div>
               <div class ="korean panel-body">
                  <!-- HTML -->
                  <div id="chartdiv8"></div>

               </div>
            </div>
            <!-- END VISIT CHART -->

         </div>









      </div>
   </div>
   </div>
   <!-- END MAIN CONTENT -->
   </div>
   <!-- END MAIN -->
   <div class ="korean clearfix"></div>
   <footer>
      <div class ="korean container-fluid">
         <p class ="korean copyright">
            Shared by <i class ="korean fa fa-love"></i><a
               href="https://bootstrapthemes.co">BootstrapThemes</a>
         </p>
      </div>
   </footer>
   </div>
   <!-- END WRAPPER -->
   <!-- Javascript -->
   <script src="assets/vendor/jquery/jquery.min.js"></script>
   <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
   <script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
   <script
      src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
   <script src="assets/vendor/chartist/js/chartist.min.js"></script>
   <script src="assets/scripts/klorofil-common.js"></script>
   <script src="assets/vendor/jquery/jquery.counterup.min.js"></script>
   <script src="assets/vendor/jquery/jquery.counterup.js"></script>



   <!--  �� �׷��� ���� ��ũ��Ʈ 
   <script src="assets/vendor/jquery/main.js"></script>
   <script
      src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
   <script
      src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
-->



   <script>
   
   
   
      $(function() {
        
            var data, options;

            

               
               


            // �ܰ� ���
            data = {
               labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
               series: [{
                  name: 'series-real',
                  data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
               }, {
                  name: 'series-projection',
                  data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],
               }]
            };

            options = {
               fullWidth: true,
               lineSmooth: false,
               height: "270px",
               low: 0,
               high: 'auto',
               series: {
                  'series-projection': {
                     showArea: true,
                     showPoint: false,
                     showLine: false
                  },
               },
               axisX: {
                  showGrid: false,

               },
               axisY: {
                  showGrid: false,
                  onlyInteger: true,
                  offset: 0,
               },
               chartPadding: {
                  left: 20,
                  right: 20
               }
            };

            new Chartist.Line('#week-chart', data, options);

            


            // �ܰ� ���ƿ�
            data = {
               labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
               series: [{
                  name: 'series-real',
                  data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
               }, {
                  name: 'series-projection',
                  data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],
               }]
            };

            options = {
               fullWidth: true,
               lineSmooth: false,
               height: "270px",
               low: 0,
               high: 'auto',
               series: {
                  'series-projection': {
                     showArea: true,
                     showPoint: false,
                     showLine: false
                  },
               },
               axisX: {
                  showGrid: false,

               },
               axisY: {
                  showGrid: false,
                  onlyInteger: true,
                  offset: 0,
               },
               chartPadding: {
                  left: 20,
                  right: 20
               }
            };

            new Chartist.Line('#like-chart', data, options);
         });
         </script>
   <style>
#chartdiv {
   width: 100%;
   height: 500px;
}
</style>

   <!-- Resources -->
   <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

   <!-- Chart code -->
   <script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("chartdiv", am4charts.PieChart);

// Add and configure Series
var pieSeries = chart.series.push(new am4charts.PieSeries());
pieSeries.dataFields.value = "litres";
pieSeries.dataFields.category = "country";

// Let's cut a hole in our Pie chart the size of 30% the radius
chart.innerRadius = am4core.percent(30);

// Put a thick white border around each Slice
pieSeries.slices.template.stroke = am4core.color("#fff");
pieSeries.slices.template.strokeWidth = 2;
pieSeries.slices.template.strokeOpacity = 1;
pieSeries.slices.template
  // change the cursor on hover to make it apparent the object can be interacted with
  .cursorOverStyle = [
    {
      "property": "cursor",
      "value": "pointer"
    }
  ];

pieSeries.alignLabels = false;
pieSeries.labels.template.bent = true;
pieSeries.labels.template.radius = 3;
pieSeries.labels.template.padding(0,0,0,0);

pieSeries.ticks.template.disabled = true;

// Create a base filter effect (as if it's not there) for the hover to return to
var shadow = pieSeries.slices.template.filters.push(new am4core.DropShadowFilter);
shadow.opacity = 0;

// Create hover state
var hoverState = pieSeries.slices.template.states.getKey("hover"); // normally we have to create the hover state, in this case it already exists

// Slightly shift the shadow and make it more prominent on hover
var hoverShadow = hoverState.filters.push(new am4core.DropShadowFilter);
hoverShadow.opacity = 0.7;
hoverShadow.blur = 5;

// Add a legend
chart.legend = new am4charts.Legend();

chart.data = [{
  "country": "����",
  "litres": <%=report.getCommunication()%>
},{
  "country": "��",
  "litres":  <%=report.getAssesment()%>
}, {
  "country": "����",
  "litres":  <%=report.getInquire()%>
}];

}); // end am4core.ready()
</script>



   <style>
#chartdiv2 {
   width: 100%;
   height: 500px;
}
</style>

   <!-- Resources -->
   <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

   <!-- Chart code -->
   <script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("chartdiv2", am4charts.PieChart);

// Add and configure Series
var pieSeries = chart.series.push(new am4charts.PieSeries());
pieSeries.dataFields.value = "litres";
pieSeries.dataFields.category = "country";

// Let's cut a hole in our Pie chart the size of 30% the radius
chart.innerRadius = am4core.percent(30);

// Put a thick white border around each Slice
pieSeries.slices.template.stroke = am4core.color("#fff");
pieSeries.slices.template.strokeWidth = 2;
pieSeries.slices.template.strokeOpacity = 1;
pieSeries.slices.template
  // change the cursor on hover to make it apparent the object can be interacted with
  .cursorOverStyle = [
    {
      "property": "cursor",
      "value": "pointer"
    }
  ];

pieSeries.alignLabels = false;
pieSeries.labels.template.bent = true;
pieSeries.labels.template.radius = 3;
pieSeries.labels.template.padding(0,0,0,0);

pieSeries.ticks.template.disabled = true;

// Create a base filter effect (as if it's not there) for the hover to return to
var shadow = pieSeries.slices.template.filters.push(new am4core.DropShadowFilter);
shadow.opacity = 0;

// Create hover state
var hoverState = pieSeries.slices.template.states.getKey("hover"); // normally we have to create the hover state, in this case it already exists

// Slightly shift the shadow and make it more prominent on hover
var hoverShadow = hoverState.filters.push(new am4core.DropShadowFilter);
hoverShadow.opacity = 0.7;
hoverShadow.blur = 5;

// Add a legend
chart.legend = new am4charts.Legend();

chart.data = [{
  "country": "��Ƽ",
  "litres": <%=report.getCategory_beauty()%>
},{
  "country": "�м�",
  "litres": <%=report.getCategory_fashion()%>
},{
  "country": "Ǫ��",
  "litres": <%=report.getCategory_food()%>
   },
{
  "country": "��Ÿ",
  "litres": <%=report.getCategory_dailylife()%>
}];

}); // end am4core.ready()
</script>


   <!-- Styles -->
   <style>
#chartdiv3 {
   width: 100%;
   height: 500px;
}
</style>

   <!-- Resources -->
   <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

   <!-- Chart code -->
   <script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("chartdiv3", am4charts.PieChart);

// Let's cut a hole in our Pie chart the size of 40% the radius
chart.innerRadius = am4core.percent(40);



// Add and configure Series
var pieSeries = chart.series.push(new am4charts.PieSeries());
pieSeries.dataFields.value = "value";
pieSeries.dataFields.category = "category";
pieSeries.slices.template.stroke = am4core.color("#fff");
pieSeries.innerRadius = 10;
pieSeries.slices.template.fillOpacity = 0.5;

pieSeries.slices.template.propertyFields.disabled = "labelDisabled";
pieSeries.labels.template.propertyFields.disabled = "labelDisabled";
pieSeries.ticks.template.propertyFields.disabled = "labelDisabled";


// Add data
pieSeries.data = [{
  "category": " ",
  "value": 100
}, {
  "category": "Unused",
  "value": 0,
  "labelDisabled":true
}];


// Disable sliding out of slices
pieSeries.slices.template.states.getKey("hover").properties.shiftRadius = 0;
pieSeries.slices.template.states.getKey("hover").properties.scale = 1;

// Add second series
var pieSeries2 = chart.series.push(new am4charts.PieSeries());
pieSeries2.dataFields.value = "value";
pieSeries2.dataFields.category = "category";
pieSeries2.slices.template.states.getKey("hover").properties.shiftRadius = 0;
pieSeries2.slices.template.states.getKey("hover").properties.scale = 1;
pieSeries2.slices.template.propertyFields.fill = "fill";

// Add data
pieSeries2.data = [{
  "category": "��¥ �ȷο�",
  "value": <%=report.getReal_follower()%>
}, {
  "category": "��¥ �ȷο�",
  "value": <%=report.getFake_follower()%>
}];


pieSeries.adapter.add("innerRadius", function(innerRadius, target){
  return am4core.percent(40);
})

pieSeries2.adapter.add("innerRadius", function(innerRadius, target){
  return am4core.percent(60);
})

pieSeries.adapter.add("radius", function(innerRadius, target){
  return am4core.percent(100);
})

pieSeries2.adapter.add("radius", function(innerRadius, target){
  return am4core.percent(80);
})

}); // end am4core.ready()
</script>


   <!-- Styles -->
   <style>
#chartdiv4 {
   width: 100%;
   height: 500px;
}
</style>

   <!-- Resources -->
   <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

   <!-- Chart code -->
   <script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("chartdiv4", am4charts.PieChart);

// Let's cut a hole in our Pie chart the size of 40% the radius
chart.innerRadius = am4core.percent(40);



// Add and configure Series
var pieSeries = chart.series.push(new am4charts.PieSeries());
pieSeries.dataFields.value = "value";
pieSeries.dataFields.category = "category";
pieSeries.slices.template.stroke = am4core.color("#fff");
pieSeries.innerRadius = 10;
pieSeries.slices.template.fillOpacity = 0.5;

pieSeries.slices.template.propertyFields.disabled = "labelDisabled";
pieSeries.labels.template.propertyFields.disabled = "labelDisabled";
pieSeries.ticks.template.propertyFields.disabled = "labelDisabled";


// Add data
pieSeries.data = [{
  "category": "",
  "value": 100
  
}, {
  "category": "Unused",
  "value": 0,
  "labelDisabled":true
}];

// Disable sliding out of slices
pieSeries.slices.template.states.getKey("hover").properties.shiftRadius = 0;
pieSeries.slices.template.states.getKey("hover").properties.scale = 1;


var pieSeries2 = chart.series.push(new am4charts.PieSeries());
pieSeries2.dataFields.value = "value";
pieSeries2.dataFields.category = "category";
pieSeries2.slices.template.states.getKey("hover").properties.shiftRadius = 0;
pieSeries2.slices.template.states.getKey("hover").properties.scale = 1;
pieSeries2.slices.template.propertyFields.fill = "fill";

// Add data
pieSeries2.data = [{
  "category": "��¥ ���",
  "value": <%=report.getReal_comment()%>
}, {
  "category": "��¥ ���",
  "value": <%=report.getFake_comment()%>
}];


pieSeries.adapter.add("innerRadius", function(innerRadius, target){
  return am4core.percent(40);
})

pieSeries2.adapter.add("innerRadius", function(innerRadius, target){
  return am4core.percent(60);
})

pieSeries.adapter.add("radius", function(innerRadius, target){
  return am4core.percent(100);
})

pieSeries2.adapter.add("radius", function(innerRadius, target){
  return am4core.percent(80);
})

}); // end am4core.ready()
</script>


   <!-- Styles -->
   <style>
#chartdiv5 {
   width: 100%;
   height: 500px;
}
</style>

   <!-- Resources -->
   <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

   <!-- Chart code -->
   <script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("chartdiv5", am4charts.XYChart);

// Create daily series and related axes
var dateAxis1 = chart.xAxes.push(new am4charts.DateAxis());
dateAxis1.renderer.grid.template.location = 0;
dateAxis1.renderer.minGridDistance = 40;

var valueAxis1 = chart.yAxes.push(new am4charts.ValueAxis());

var series1 = chart.series.push(new am4charts.ColumnSeries());
series1.dataFields.valueY = "value";
series1.dataFields.dateX = "date";
series1.data = generateDailyData();
series1.xAxis = dateAxis1;
series1.yAxis = valueAxis1;
series1.tooltipText = "{dateX}: [bold]{valueY}[/]";

// Create hourly series and related axes
var dateAxis2 = chart.xAxes.push(new am4charts.DateAxis());
dateAxis2.renderer.grid.template.location = 0;
dateAxis2.renderer.minGridDistance = 40;
dateAxis2.renderer.labels.template.disabled = true;
dateAxis2.renderer.grid.template.disabled = true;
dateAxis2.renderer.tooltip.disabled = true;

var valueAxis2 = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis2.renderer.opposite = true;
valueAxis2.renderer.grid.template.disabled = true;
valueAxis2.renderer.labels.template.disabled = true;
valueAxis2.renderer.tooltip.disabled = true;

var series2 = chart.series.push(new am4charts.LineSeries());
series2.dataFields.valueY = "value";
series2.dataFields.dateX = "date";
series2.data = generateHourlyData();
series2.xAxis = dateAxis2;
series2.yAxis = valueAxis2;
series2.strokeWidth = 3;
series2.tooltipText = "{dateX.formatDate('yyyy-MM-dd hh:00')}: [bold]{valueY}[/]";

// Add cursor
chart.cursor = new am4charts.XYCursor();

function generateDailyData() {
    var firstDate = new Date();
    firstDate.setDate(firstDate.getDate() - 10);
    firstDate.setHours(0, 0, 0, 0);
    var data = [];
    for(var i = 0; i < 10; i++) {
      var newDate = new Date(firstDate);
      newDate.setDate(newDate.getDate() + i);
      data.push({
        date: newDate,
        value: Math.round(Math.random() * 12) + 1
      });
    }
  return data;
}

function generateHourlyData() {
    var firstDate = new Date();
    firstDate.setDate(firstDate.getDate() - 10);
    var data = [];
    for(var i = 0; i < 10 * 24; i++) {
        var newDate = new Date(firstDate);
      newDate.setHours(newDate.getHours() + i);

        if (i == 0) {
            var value = Math.round(Math.random() * 10) + 1;
        } else {
            var value = Math.round(data[data.length - 1].value / 100 * (90 + Math.round(Math.random() * 20)) * 100) / 100;
        }
      data.push({
        date: newDate,
        value: value
      });
    }
  return data;
}

}); // end am4core.ready()
</script>

   <!-- Styles -->
   <style>
#chartdiv6 {
   width: 100%;
   height: 500px;
}
</style>

   <!-- Resources -->
   <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

   <!-- Chart code -->
   <script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

var chart = am4core.create("chartdiv6", am4charts.XYChart);

chart.data = [{
 "country": "������",
 "visits": <%=report.getDispos_mon()%>
}, {
 "country": "ȭ����",
 "visits": <%=report.getDispos_tue()%>
}, {
 "country": "������",
 "visits": <%=report.getDispos_wed()%>
}, {
 "country": "�����",
 "visits": <%=report.getDispos_thu()%>
}, {
 "country": "�ݿ���",
 "visits": <%=report.getDispos_fri()%>
}, {
 "country": "�����",
 "visits": <%=report.getDispos_sat()%>
}, {
 "country": "�Ͽ���",
 "visits": <%=report.getDispos_sun()%>
}];

chart.padding(40, 40, 40, 40);

var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
categoryAxis.renderer.grid.template.location = 0;
categoryAxis.dataFields.category = "country";
categoryAxis.renderer.minGridDistance = 60;
categoryAxis.renderer.inversed = true;
categoryAxis.renderer.grid.template.disabled = true;

var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis.min = 0;
valueAxis.extraMax = 0.1;
//valueAxis.rangeChangeEasing = am4core.ease.linear;
//valueAxis.rangeChangeDuration = 1500;

var series = chart.series.push(new am4charts.ColumnSeries());
series.dataFields.categoryX = "country";
series.dataFields.valueY = "visits";
series.tooltipText = "{valueY.value}"
series.columns.template.strokeOpacity = 0;
series.columns.template.column.cornerRadiusTopRight = 10;
series.columns.template.column.cornerRadiusTopLeft = 10;
//series.interpolationDuration = 1500;
//series.interpolationEasing = am4core.ease.linear;
var labelBullet = series.bullets.push(new am4charts.LabelBullet());
labelBullet.label.verticalCenter = "bottom";
labelBullet.label.dy = -10;
labelBullet.label.text = "{values.valueY.workingValue.formatNumber('#.')}";

chart.zoomOutButton.disabled = true;

// as by default columns of the same series are of the same color, we add adapter which takes colors from chart.colors color set
series.columns.template.adapter.add("fill", function (fill, target) {
 return chart.colors.getIndex(target.dataItem.index);
});



categoryAxis.sortBySeries = series;

}); // end am4core.ready()
</script>






   <!-- Styles -->
   <style>
#chartdiv7 {
   width: 100%;
   height: 500px;
}
</style>

   <!-- Resources -->
   <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

   <!-- Chart code -->
   <script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

var chart = am4core.create("chartdiv7", am4charts.XYChart);

chart.data = [{
 "country": "0~4��",
 "visits": <%=report.getDispos_first_time()%>
}, {
 "country": "4~8��",
 "visits": <%=report.getDispos_second_time()%>
}, {
 "country": "8~12��",
 "visits": <%=report.getDispos_third_time()%>
}, {
 "country": "12~16��",
 "visits": <%=report.getDispos_fourth_time()%>
}, {
 "country": "16~20��",
 "visits": <%=report.getDispos_fifth_time()%>
}, {
 "country": "20~24��",   //�߰��ؾ���!!!!!!
 "visits": <%=540%>
}];

chart.padding(40, 40, 40, 40);

var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
categoryAxis.renderer.grid.template.location = 0;
categoryAxis.dataFields.category = "country";
categoryAxis.renderer.minGridDistance = 60;
categoryAxis.renderer.inversed = true;
categoryAxis.renderer.grid.template.disabled = true;

var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis.min = 0;
valueAxis.extraMax = 0.1;
//valueAxis.rangeChangeEasing = am4core.ease.linear;
//valueAxis.rangeChangeDuration = 1500;

var series = chart.series.push(new am4charts.ColumnSeries());
series.dataFields.categoryX = "country";
series.dataFields.valueY = "visits";
series.tooltipText = "{valueY.value}"
series.columns.template.strokeOpacity = 0;
series.columns.template.column.cornerRadiusTopRight = 10;
series.columns.template.column.cornerRadiusTopLeft = 10;
//series.interpolationDuration = 1500;
//series.interpolationEasing = am4core.ease.linear;
var labelBullet = series.bullets.push(new am4charts.LabelBullet());
labelBullet.label.verticalCenter = "bottom";
labelBullet.label.dy = -10;
labelBullet.label.text = "{values.valueY.workingValue.formatNumber('#.')}";

chart.zoomOutButton.disabled = true;

// as by default columns of the same series are of the same color, we add adapter which takes colors from chart.colors color set
series.columns.template.adapter.add("fill", function (fill, target) {
 return chart.colors.getIndex(target.dataItem.index);
});



categoryAxis.sortBySeries = series;

}); // end am4core.ready()
</script>



   <!-- Styles -->
   <style>
#chartdiv8 {
   width: 100%;
   height: 500px;
}
</style>

   <!-- Resources -->
   <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
   <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

   <!-- Chart code -->
   <script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end



var chart = am4core.create('chartdiv8', am4charts.XYChart)
chart.colors.step = 2;

chart.legend = new am4charts.Legend()
chart.legend.position = 'top'
chart.legend.paddingBottom = 20
chart.legend.labels.template.maxWidth = 95

var xAxis = chart.xAxes.push(new am4charts.CategoryAxis())
xAxis.dataFields.category = 'category'
xAxis.renderer.cellStartLocation = 0.1
xAxis.renderer.cellEndLocation = 0.9
xAxis.renderer.grid.template.location = 0;

var yAxis = chart.yAxes.push(new am4charts.ValueAxis());
yAxis.min = 0;

function createSeries(value, name) {
    var series = chart.series.push(new am4charts.ColumnSeries())
    series.dataFields.valueY = value
    series.dataFields.categoryX = 'category'
    series.name = name

    series.events.on("hidden", arrangeColumns);
    series.events.on("shown", arrangeColumns);

    var bullet = series.bullets.push(new am4charts.LabelBullet())
    bullet.interactionsEnabled = false
    bullet.dy = 30;
    bullet.label.text = '{valueY}'
    bullet.label.fill = am4core.color('#ffffff')

    return series;
}

chart.data = [
    {
        category: '��� ���ƿ�',
        first: <%=report.getAll_avg_like()%>,
        second: <%=report.getInflu_inde_avg_like()%>
       
    },
    {
        category: '��� ��� ��',
        first: <%=report.getAll_avg_like_comment()%>,
        second: <%=report.getInflu_inde_avg_comment()%>
    },
    {
        category: '��� ��¥ ��� ��',
        first: <%=report.getAll_real_avg_comment()%>,
        second: <%=report.getInflu_inde_real_avg_comment()%>
    }
]


createSeries('first', '���');
createSeries('second', 'ȸ��');

function arrangeColumns() {

    var series = chart.series.getIndex(0);

    var w = 1 - xAxis.renderer.cellStartLocation - (1 - xAxis.renderer.cellEndLocation);
    if (series.dataItems.length > 1) {
        var x0 = xAxis.getX(series.dataItems.getIndex(0), "categoryX");
        var x1 = xAxis.getX(series.dataItems.getIndex(1), "categoryX");
        var delta = ((x1 - x0) / chart.series.length) * w;
        if (am4core.isNumber(delta)) {
            var middle = chart.series.length / 2;

            var newIndex = 0;
            chart.series.each(function(series) {
                if (!series.isHidden && !series.isHiding) {
                    series.dummyData = newIndex;
                    newIndex++;
                }
                else {
                    series.dummyData = chart.series.indexOf(series);
                }
            })
            var visibleCount = newIndex;
            var newMiddle = visibleCount / 2;

            chart.series.each(function(series) {
                var trueIndex = chart.series.indexOf(series);
                var newIndex = series.dummyData;

                var dx = (newIndex - trueIndex + middle - newMiddle) * delta

                series.animate({ property: "dx", to: dx }, series.interpolationDuration, series.interpolationEasing);
                series.bulletsContainer.animate({ property: "dx", to: dx }, series.interpolationDuration, series.interpolationEasing);
            })
        }
    }
}

}); // end am4core.ready()
</script>