<!-- �ֽź� -->
<%@page import="com.common.Util"%>
<%@page import="com.model.MatchingDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.AdvertiserDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="com.model.CampaginDTO" %>
<!doctype html>
<html lang="en">

<!-- ������ head �ڵ� start -->
<!-- <head>
   <title>Profile | Klorofil - Free Bootstrap Dashboard Template</title>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
   VENDOR CSS
   
   <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
   <link rel="stylesheet" href="assets/vendor/linearicons/style.css">
   MAIN CSS
   <link rel="stylesheet" href="assets/css/main.css">
   FOR DEMO PURPOSES ONLY. You should remove this in your project
   <link rel="stylesheet" href="assets/css/demo.css">
   GOOGLE FONTS
   <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
   ICONS
   <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
   <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
   <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
   <link rel="stylesheet" href="assets/css/style.css">
</head> -->
<!-- ������ head�ڵ� end -->


<!-- ���ο� head + style �ڵ� start  -->
<head>
<title>���Ͼ | MARKETUS</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->

<!-- ���� css -->
<link rel="stylesheet"
   href="assets/vendor/bootstrap/css/bootstrap.min.css">
<!-- ���� css -->


<link rel="stylesheet"
   href="assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="assets/css/main.css">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet" href="assets/css/demo.css">
<!-- GOOGLE FONTS -->
<link
   href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
   rel="stylesheet">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
   href="assets/img/apple-icon.png">fz
<link rel="icon" type="image/png" sizes="96x96"
   href="assets/img/favicon.png">
   <link rel="stylesheet" href="assets/css/style.css">

</head>


<style type="text/css">
body {
   text-align: center;
   display: block;
   margin: 0 auto;
   font-size: 18px;
   color: #999;
}

h1 {
   font-family: 'Oswald', sans-serif;
   font-size: 30px;
   color: #216182;
}

label {
   display: block;
   margin-top: 20px;
   letter-spacing: 2px;
}

form {
   margin: 0 auto;
   width: 459px;
}

input, textarea {
   width: 439px;
   height: 27px;
   background-color: #efefef;
   border-radius: 6px;
   border: 1px solid #dedede;
   padding: 10px;
   margin-top: 3px;
   font-size: 0.9em;
   color: #3a3a3a;
}

input:focus, textarea:focus {
   border: 1px solid #97d6eb;
}

textarea {
   height: 60px;
   background-color: #efefef;
}

#submit {
   width: 127px;
   height: 48px;
   text-align: center;
   border: none;
   margin-top: 20px;
   cursor: pointer;
}

#submit:hover {
   color: #fff;
   background-color: #216282;
   opacity: 0.9;
}

#cancel {
   width: 127px;
   height: 48px;
   text-align: center;
   border: none;
   margin-top: 20px;
   cursor: pointer;
}

#cancel:hover {
   color: #fff;
   background-color: #216282;
   opacity: 0.9;
}

.modal1 {
   position: fixed;
   left: 0;
   top: 0;
   width: 100%;
   height: 100%;
   background-color: rgba(0, 0, 0, 0.5);
   opacity: 0;
   visibility: hidden;
   transform: scale(1.1);
   transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform
      0.25s;
}

.modal-content {
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
   background-color: white;
   padding: 1rem 1.5rem;
   width: 500px;
   height: 350px;
   border-radius: 0.5rem;
}

.close-button {
   float: right;
   width: 1.5rem;
   line-height: 1.5rem;
   text-align: center;
   cursor: pointer;
   border-radius: 0.25rem;
   background-color: lightgray;
}

.close-button:hover {
   background-color: darkgray;
}

.show-modal {
   opacity: 1;
   visibility: visible;
   transform: scale(1.0);
   transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}
</style>
<!-- ���ο� head + style �ڵ� end -->

<body>
<%

System.out.println("myPage_ad.jsp");
AdvertiserDTO info = (AdvertiserDTO) session.getAttribute("info");

ArrayList<CampaginDTO> campignList = (ArrayList<CampaginDTO>)session.getAttribute("adverCampaignSelect");

System.out.println("campignList ::" +campignList.get(0).getAd_estimate());
session.removeAttribute("matchingadv12345");
%>

<%
String servletPath = request.getServletPath();
String ImgDirRealPath = request.getRealPath(servletPath.substring(0, servletPath.lastIndexOf("/") + 1) + "images");

System.out.println(ImgDirRealPath);

File ImgDirObj = new File(ImgDirRealPath);
//���� jsp������ �ִ� ������ images������ �̹��� ��� ��������
List<File> imgFileList = Util.getImgFileList(ImgDirObj);
System.out.println("imgFileList : " + imgFileList.size());
%>

   <!-- WRAPPER -->
   <div id="wrapper">
      <!-- NAVBAR -->
      <header id="main_menu" class="header navbar-fixed-top">
         <div class="main_menu_bg" style = "background-color:white;">
            <div class="container" style = "width : 100%">
               <div class="row">
                  <div class="nave_menu">
                     <nav class="navbar navbar-default">
                        <div class="container-fluid">
                           <!-- Brand and toggle get grouped for better mobile display -->
                           <div class="navbar-header">
                              <button type="button" class="navbar-toggle collapsed"
                                 data-toggle="collapse"
                                 data-target="#bs-example-navbar-collapse-1"
                                 aria-expanded="false">
                                 <span class="sr-only">Toggle navigation</span> <span
                                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                                    class="icon-bar"></span>
                              </button>


                              <a class="navbar-brand" href="../bino-free-html5-landing-page-template/firstPage.jsp"> <img
                                 src="images/logo_high_re.png" style = "width:140px; height:50px; margin-left: 30px; ">
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->

                           <div class="collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">

                             <ul class="nav navbar-nav navbar-right">
                                 <li><a href="../bino-free-html5-landing-page-template/company_main2.jsp" >HOME</a></li><!-- ���ǰ��޾ƿͼ� influencer/companymain���� �̵� -->
                                            <li><a href="../bino-free-html5-landing-page-template/hashtag.jsp">HASHTAG</a></li>
                                            <li><a href="../bino-free-html5-landing-page-template/pay.jsp">INQUIRUY</a></li>
                                            <li><a href="../InfluencerMypage?name=adver" >MY PAGE</a></li><!-- ���ǰ��޾ƿͼ� mypage/mypage_ad���� �̵� -->
                                             <%if(info == null){ %>
                                 <li><a href="../klorofil-free-dashboard-template-v2.0/page-login.jsp?value=inf">LOGIN</a></li>
                                 <%} else{ %>
                                 <li><a href="../LogoutService">LOGOUT</a></li>
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
      <!-- END NAVBAR -->
      
      
      <!-- LEFT SIDEBAR -->
      <div id="sidebar-nav" class="sidebar" style = 'display : none'>
         <div class="sidebar-scroll">
            <nav>
               <ul class="nav">
                  <li><a href="index.html" class=""><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
                  <li><a href="elements.html" class=""><i class="lnr lnr-code"></i> <span>Elements</span></a></li>
                  <li><a href="charts.html" class=""><i class="lnr lnr-chart-bars"></i> <span>Charts</span></a></li>
                  <li><a href="panels.html" class=""><i class="lnr lnr-cog"></i> <span>Panels</span></a></li>
                  <li><a href="notifications.html" class=""><i class="lnr lnr-alarm"></i> <span>Notifications</span></a></li>
                  <li>
                     <a href="#subPages" data-toggle="collapse" class="active"><i class="lnr lnr-file-empty"></i> <span>Pages</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                     <div id="subPages" class="collapse in">
                        <ul class="nav">
                           <li><a href="page-profile.html" class="active">Profile</a></li>
                           <li><a href="page-login.html" class="">Login</a></li>
                           <li><a href="page-lockscreen.html" class="">Lockscreen</a></li>
                        </ul>
                     </div>
                  </li>
                  <li><a href="tables.html" class=""><i class="lnr lnr-dice"></i> <span>Tables</span></a></li>
                  <li><a href="typography.html" class=""><i class="lnr lnr-text-format"></i> <span>Typography</span></a></li>
                  <li><a href="icons.html" class=""><i class="lnr lnr-linearicons"></i> <span>Icons</span></a></li>
               </ul>
            </nav>
         </div>
      </div>
      <!-- END LEFT SIDEBAR -->
      <!-- MAIN -->
      <div class="main" style = "width : 100%">
         <!-- MAIN CONTENT -->
         
<%
   AdvertiserDTO img = (AdvertiserDTO) session.getAttribute("adverMypage");
   System.out.println("������ : "+info);
   System.out.println("������1 : "+img);
   ArrayList<MatchingDTO> qList = (ArrayList<MatchingDTO>) session.getAttribute("adverMypageMatching");
   System.out.println("������2 : "+qList);

   System.out.println("info.getInflu_instaAddr() : " + img.getAdver_mbr());
   System.out.println("qList.size() : " + qList.size());
   
 
   
   %>         
         
         <%
         String name = info.getName();
         String phone = info.getPhone();
         String mail = info.getMail();               
         %>
         <div class="main-content">
            <div class="container-fluid">
               <div class="panel panel-profile">
                  <div class="clearfix">
                     <!-- LEFT COLUMN -->
                     <div class="profile-left" style="text-align: left;">
                        <!-- PROFILE HEADER -->
                        <div class="profile-header">
                           <div class="overlay"></div>
                           <div class="profile-main" style="background-color:#F0F0F0">
                           <img src="assets/img/<%="logos"%>.png" class="img" alt="Avatar" style  = "width : 220px; height : 160px;">
                              <!--  <img src="assets/img/<%=info.getName() %>.png" class="img" alt="Avatar" >-->
                              <h3 class="name" style = "color: black"><%=name %></h3>
                              <span class="online-status status-available"></span>
                           </div>
                           <div class="profile-stat" style = "display : none">
                              <div class="row">
                                 <div class="col-md-4 stat-item">
                                    45 <span>�Խñ�</span>
                                 </div>
                                 <div class="col-md-4 stat-item">
                                    1500 <span>�ȷο�</span>
                                 </div>
                                 <div class="col-md-4 stat-item">
                                    300 <span>�ȷ���</span>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- END PROFILE HEADER -->
                        <!-- PROFILE DETAIL -->
                        <br>
                        <div class="profile-detail">
                           <div class="profile-info">
                              <h4 class="heading">Basic Info</h4>
                              <ul class="list-unstyled list-justify">
                                 <li>�ڵ��� <span><%=phone %></span></li>
                                 <li>Email <span><%=mail %></span></li>
                                 
                              </ul>
                           </div>
                           <br>
                           <div class="profile-info">
                              <h4 class="heading">Social</h4>
                              <ul class="list-inline social-icons">
                                 <li><a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a></li>
                                 <li><a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a></li>
                                 <li><a href="#" class="google-plus-bg"><i class="fa fa-google-plus"></i></a></li>
                                 <li><a href="#" class="github-bg"><i class="fa fa-github"></i></a></li>
                              </ul>
                           </div>
                           <br><br><br>
                           <div class="profile-info" style = "display : none">
                              <h4 class="heading">About</h4>
                              <p>Interactively fashion excellent information after distinctive outsourcing.</p>
                           </div>
                           <div class="text-center"><a href="#" class="btn btn-lg">���� ����</a></div>
                        </div>
                        <!-- END PROFILE DETAIL -->
                     </div>
                     <!-- END LEFT COLUMN -->
                     <!-- RIGHT COLUMN -->
                     <!-- START... -->
                     <div class="profile-right">
                     <h4 class="heading">�������� ķ����</h4>
                     
                     <%
                                 int k=0;
                                 int j = 4;
                                 for (int i = 0; i < campignList.size(); i++) {
                                    System.out.println("campignList.size() : " + campignList.size());
                                    if (k == 4) {
                                       break;
                                    }else{

                                    if (campignList.get(i).getCampaign_status() == 0 || campignList.get(i).getCampaign_status() == 1) {
                                    	j--;
                                       k++;
                                       System.out.println("getCampaign_status() : " + campignList.get(i).getCampaign_status());
                                 %>
                                 <div class="col-md-3 col-sm-6">
                                    <div class="award-item">
                                       <img src="images/<%=campignList.get(i).getCampaign_Sid()%>.jpg"
                                          alt="Avatar"> <br> <br> <span><a href = ../CampaignMatchingService?ck=adver&&camnum=<%=campignList.get(i).getCampaign_Sid() + "," + campignList.get(i).getCampaign_status()%>><%=campignList.get(i).getCampaign_title()%></a></span>
                                    </div>
                                 </div>
                                 <%
                                 }
                                    }
                                 }
                                 %>
                                 <% 
                                 System.out.print("j : "+j);
                                 for (int z = 0; z < j ; z++){
                                    %>
                                    <div class="col-md-3 col-sm-6">
                                     <div class="award-item" style = "visibility: hidden;">

                                        <img src="images/<%=campignList.get(z).getCampaign_Sid()%>.jpg"
                                           alt="Avatar"> <br> <br> <span><%=campignList.get(z).getCampaign_title()%></span>
                                           
                                         

                                     </div>
                                  </div>
                                    
                                    <%
                                 }
                                 %>
                                 
                     
                     
                     
                     
                        
                  <!--       <div class="awards" style = "display:none">
                           <div class="row">
                              <a href = 'campain.jsp'>
                              <div class="col-md-3 col-sm-6">
                                 <div class="award-item">
                                    <img alt="" src="assets/img/3.48kg.jpg">
                                       <span> </span>
                                    <br><br>
                                    <span>ķ���� 1</span>
                                 </div>
                              </div>
                              </a>
                              
                              
                              <a href = 'campain.jsp'>
                              <div class="col-md-3 col-sm-6">
                                 <div class="award-item">
                                    <div class="hexagon">
                                       <span class="lnr lnr-clock award-icon"></span>
                                    </div>
                                    <span>ķ���� 2</span>
                                 </div>
                              </div>
                              </a>
                              
                              <a href = 'campain.jsp'>
                              <div class="col-md-3 col-sm-6">
                                 <div class="award-item">
                                    <div class="hexagon">
                                       <span class="lnr lnr-magic-wand award-icon"></span>
                                    </div>
                                    <span>ķ���� 3</span>
                                 </div>
                              </div>
                              </a>
                              
                              <a href = 'campain.jsp'>
                              <div class="col-md-3 col-sm-6">
                                 <div class="award-item">
                                    <div class="hexagon">
                                       <span class="lnr lnr-heart award-icon"></span>
                                    </div>
                                    <span>ķ���� 4</span>
                                 </div>
                              </div>
                              </a>
                              
                           
                           <br><br>
                           </div>
                           ...End
                           <div class="text-center" style = "display : none"><a href="#" class="btn btn-default">��� ķ���� ����</a></div>
                        </div> -->
                        <!-- END AWARDS -->
                        <!-- TABBED CONTENT -->
                        <div class="custom-tabs-line tabs-line-bottom left-aligned">
                           <ul class="nav" role="tablist" style = "display : none">
                              <li class="active"><a href="#tab-bottom-left1" role="tab" data-toggle="tab">����Ʈ</a></li>
                              <li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">����Ʈ ���� <span class="badge">7</span></a></li>
                           </ul>
                        </div>
                        <br><br>
                        
                        <div style ="text-align: center;"></div>
                        <div class="heading"  style = "text-align:center;">���� ķ����</div>
                        
                        <!-- AWARDS -->
                        <div class="awards">
                           <div class="row">
                        <%
                                 int k1=0;
                                 for (int i = 0; i < campignList.size(); i++) {
                                    System.out.println("campignList.size() : " + campignList.size());
                                    if (k1 == 4) {
                                       break;
                                    }else{

                                    if (campignList.get(i).getCampaign_status() == 2) {
                                       k1++;
                                       System.out.println("getCampaign_status() : " + campignList.get(i).getCampaign_status());
                                 %>
                                 <div class="col-md-3 col-sm-6">
                                    <div class="award-item">

                                       <img src="images/<%=campignList.get(i).getCampaign_Sid()%>.jpg"
                                          alt="Avatar"> <br> <br> <span><%=campignList.get(i).getCampaign_title()%></span>

                                    </div>
                                 </div>
                                 <%
                                 }
                                    }
                                 }
                                 %>
                           </div>
                           <br><br>
                           <div class="text-center"><button class="btn btn-lg trigger">��� ķ���� ����</button></div>
                        </div>
                        <!-- END TABBED CONTENT -->
                     </div>
                     <!-- END RIGHT COLUMN -->
                  </div>
               </div>
            </div>
         </div>
         <!-- END MAIN CONTENT -->
      </div>
      <!-- END MAIN -->
      <div class="clearfix"></div>
      <footer>
         <div class="container-fluid">
            <p class="copyright">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
</p>
         </div>
      </footer>
   </div>

         <!-- �˾� �� ���̾� -->
   <div class="modal1">
      <div class="modal-content" style = "width : 50%; height : 70%;">
         <span class="close-button">&times;</span>
         <h1 class="title">��� ķ����</h1>
         <div class="table-responsive">
            
            <br> <br>
            <%
                                 
                                 for (int i = 0; i < campignList.size(); i++) {

                                    
                                    if (campignList.get(i).getCampaign_status() == 2) {
                                       
                                       System.out.println("getMatch_ck() : " + campignList.get(i).getCampaign_Sid());
                                 %>
                                 <div class="col-md-3 col-sm-6">
                                    <div class="award-item">

                                       <img src="images/<%=campignList.get(i).getCampaign_Sid()%>.jpg"
                                          alt="Avatar"> <br> <br> <span><%=campignList.get(i).getCampaign_Sid()%></span>

                                    </div>
                                 </div>
                                 <%
                                 }
                                    
                                 }
                                 %>
         </div>
         
      </div>
   </div>
      
   
   <!-- END WRAPPER -->
   <!-- Javascript -->
      <script src="assets/vendor/jquery/jquery.min.js"></script>
   <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
   <script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
   <script src="assets/scripts/klorofil-common.js"></script>
   <script type="text/javascript">
      var modal = document.querySelector(".modal1");
      var trigger = document.querySelector(".trigger");
      var closeButton = document.querySelector(".close-button");
      var cancelButton = document.querySelector("#cancel");

      //console.log(modal);

      function toggleModal() {
         console.log("����");
         modal.classList.toggle("show-modal");
      }

      function windowOnClick(event) {
         if (event.target === modal) {
            toggleModal();
         }
      }

      trigger.addEventListener("click", toggleModal);
      closeButton.addEventListener("click", toggleModal);
      cancel.addEventListener("click", toggleModal);
      window.addEventListener("click", windowOnClick);
   </script>
   
   
<!--    <script src="assets/vendor/jquery/jquery.min.js"></script>
   <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
   <script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
   <script src="assets/scripts/klorofil-common.js"></script> -->
</body>

</html>