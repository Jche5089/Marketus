<%@page import="com.common.Util"%>
<%@page import="com.model.CampaginDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%
String servletPath = request.getServletPath();
String ImgDirRealPath = request.getRealPath(servletPath.substring(0, servletPath.lastIndexOf("/") + 1) + "images");

System.out.println(ImgDirRealPath);

File ImgDirObj = new File(ImgDirRealPath);
//���� jsp������ �ִ� ������ images������ �̹��� ��� ��������
List<File> imgFileList = Util.getImgFileList(ImgDirObj);
System.out.println("imgFileList : " + imgFileList.size());
%>
<!DOCTYPE html>
<html>


<style>
span.imgTitle {
	font-weight: bold;
	display: block;
	margin: 15px;
}
/* ���� */
.main_menu_bg .navbar-nav>li>a {
	/*  padding-top: 15px;
    padding-bottom: 20px; */
	text-transform: uppercase;
	font-size: 20px;
	color: white;
	text-align: center;
}

img {
	max-width: 100%;
	margin: auto;
}
</style>


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>���Ͼ | MARKETUS</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">


<link rel="stylesheet" href="assets/css/iconfont.css">
<link rel="stylesheet" href="assets/css/slick/slick.css">
<link rel="stylesheet" href="assets/css/slick/slick-theme.css">
<link rel="stylesheet" href="assets/css/stylesheet.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/jquery.fancybox.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


<!--For Plugins external css-->
<link rel="stylesheet" href="assets/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<%
	System.out.println("-------------- influencer_main.jsp -----------");
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	ArrayList<CampaginDTO> cList = (ArrayList<CampaginDTO>) session.getAttribute("campAll");
	ArrayList<Integer> numList = new ArrayList<Integer>();
	ArrayList<Integer> numList0 = new ArrayList<Integer>();
	int k = 0;
	int m = 0;

	if (info != null) {
		System.out.println("info :" + info.getInflu_gender());
		System.out.println("cList :" + cList.get(0).getRq_gender());
		for (int i = 0; i < cList.size(); i++) {
			if (cList.get(i).getRq_age() == 0 || cList.get(i).getRq_age() == info.getInflu_targetAge()) { //�䱸 20�� -> 20 <= 25 >= 30
				if (cList.get(i).getRq_gender().equals(info.getInflu_gender()) || info.getInflu_gender().equals("A")) {
					if (cList.get(i).getCategory().equals(info.getInflu_category())) {
						numList.add(cList.get(i).getCampaign_Sid());
						numList0.add(cList.get(i).getCampaign_Sid());
						System.out.println("cList.get(i).getCampaign_Sid() " + cList.get(i).getCampaign_Sid());
						k = k + 1;
			}
		}
			} else {
		System.out.println("b " + i);
		m = m + 1;
			}
		}

	} else {
		numList = null;
		System.out.println("info = null :");
	}

	//info.getInflu_gender();
	%>

	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<div class="culmn">
		<header id="main_menu" class="header navbar-fixed-top">
			<div class="main_menu_bg" style="background-color: white;">
				<div class="container" style="width: 100%">
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


										<a class="navbar-brand" href="firstPage.jsp"
											style="margin-left: 30px;"> <img
											src="images/logo_high_re.png"
											style="width: 140px; height: 50px;" />
										</a>
									</div>

									<!-- Collect the nav links, forms, and other content for toggling -->


									<ul class="nav navbar-nav navbar-right">
										<li><a href="">HOME</a></li>
										<!-- ���ǰ��޾ƿͼ� influencer/companymain���� �̵� -->
										<li><a href="hashtag.jsp">HASHTAG</a></li>
										<li><a href="../InfluencerMypage?name=inf">My Page</a></li>
										<!-- ���ǰ��޾ƿͼ� mypage/mypage_ad���� �̵� -->
										<%
										if (info == null) {
										%>
										<li><a
											href="../klorofil-free-dashboard-template-v2.0/page-login.jsp?value=inf">LOGIN</a></li>
										<%
										} else {
										%>
										<li><a href="../LogoutService">LOGOUT</a></li>
										<%
										}
										%>
									</ul>
								</div>
						</div>
						</nav>
					</div>
				</div>

			</div>
	</div>
	</div>
	</header>
	<!--End of header -->

	<!--home Section -->
	<section id="home" class="home" style="background-color: #F0F8FF;">
		<div class="">
			<div class="home_skew_border">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 ">
							<div class="main_home_slider text-center">

								<%
								if (numList != null) {
									System.out.println("numList�� null�� �ƴ�000");
									//�̹��� ������ ���ӵ� 
									ArrayList<String> imgName = new ArrayList<String>();
									ArrayList<String> imgName2 = new ArrayList<String>();

									System.out.println("imgFileList.size()" + imgFileList.size());
									for (int i = 0; i < imgFileList.size(); i++) {
										File f = imgFileList.get(i);
										imgName.add(Util.getFileNameNoExt(f.getName()));
										
										
									}
									for(int i=0; i< imgName.size();i++){
										System.out.println("imgName :"  + imgName.get(i));
										
									}
									
									String[] SList = new String[imgFileList.size()];
									for (int i = 0; i < imgFileList.size(); i++) {
										SList[i] = imgName.get(i);

									}

									System.out.println("numList.size()" + numList.size());
									for (int j = 0; j < numList.size(); j++) {

										imgName2.add(SList[numList.get(j)]);

									}

									System.out.println("imgName2.size()" + imgName2.size());
									for (int i = 0; i < imgName2.size(); i++) {
										System.out.println("imgName2 : " + imgName2.get(i));
									}

									int[] nList = new int[numList.size()];
									for (int i = 0; i < imgName.size(); i++) {
										for (int j = 0; j < numList.size(); j++) {
									if (imgName.get(i).equals(String.valueOf(numList.get(j)))) {
										nList[j] = i;
										System.out.println("nList[i] : " + i);
									}

										}
									}
									// ���� ķ���� ��Ī�� 3�� �̸��� ��� ������ �ٲ� �����/ ���� ó���� �ؾ���( nList.length)
									int num = 3;
									int s = 0;
									for (int j = 0; j < ((nList.length / 3) + 1); j++) {
										System.out.println("�ݺ�Ƚ�� : " + ((nList.length / 3) + 1));
								%>
								<div class="single_home_slider">
									<%
									System.out.println("������ : " + num);
									for (int i = s; i < num; i++) {
									%>
									<div class="main_home wow fadeInUp col-sm-4"
										data-wow-duration="700ms">
										<%
										// �̹��� ���� �ѱ��
										String strImgConFormat1 = "<div class=\"images\">" + "<span class=\"imgTitle\"> %s </span>"
												+ "<a href = \"../CampaignService?id=%s\">  <img width='300' height = '400' src=\"%s\"/></a>" + "</div>";

										System.out.println("numList: " + numList0.get(i));
										System.out.println("nList[i]: " + numList0.get(i));
										File f = imgFileList.get(nList[i]); //numList.get(i)-1
										String title = "";//Util.getFileNameNoExt(f.getName());
										String id = numList0.get(i) + ",inf";
										String url = Util.getImgSrc(f);

										out.print(String.format(strImgConFormat1, title, id, url));
										%>

									</div>
									<%
									}

									if (numList.size() >= 6) {
									if (num < numList.size()) {
										if ((numList.size() - num) >= 3) {
											num += 3;
										} else {
											num = numList.size();
										}

									} else if (num >= numList.size()) {
										num = numList.size();
									}
									} else {
									if (numList.size() == 4) {
										num += 1;
									} else if (numList.size() == 5) {
										num += 2;
									} else {
										num = 3;
									}
									}

									s = s + 3;
									%>
								</div>
								<%
								}

								} else {
								int num = 3;
								int s = 0;
								int end = 13;
								for (int j = 0; j < ((end / 3) + 1); j++) {
								System.out.println("�ݺ�Ƚ�� : " + ((end / 3) + 1));
								%>
								<div class="single_home_slider">
									<%
									System.out.println("������2 : " + s);
									System.out.println("������ : " + num);
									for (int i = s; i < num; i++) {
										System.out.println("s : " + s);
										System.out.println("num : " + num);
									%>
									<div class="main_home wow fadeInUp col-sm-4"
										data-wow-duration="700ms">
										<%
										// �̹��� ���� �ѱ��
										String strImgConFormat1 = "<div class=\"images\">" + "<span class=\"imgTitle\"> %s </span>"
												+ "<a href = \"../CampaignService?id=%s\">  <img width='300' height = '400' src=\"%s\"/></a>" + "</div>";

										File f = imgFileList.get(i); //numList.get(i)-1
										String title = "";//Util.getFileNameNoExt(f.getName());
										String id = "1,inf";
										String url = Util.getImgSrc(f);
										out.print(String.format(strImgConFormat1, title, id, url));
										%>
									</div>
									<%
									}

									if (num >= end) {

									if (num < end) {
										if ((end - num) >= 3) {
											num += 3;
										} else {
											num = end;
										}

									} else if (num >= end) {
										num = end;
									}

									} else {
									if (num < end) {
										if ((end - num) >= 3) {
											num += 3;
										} else {
											num = end;
										}

									} else if (num >= end) {
										num = end;
									}
									}

									s = s + 3;
									%>
								</div>
								<%
								}

								}
								%>

							</div>
						</div>
					</div>
				</div>
				<div class="scrooldown">
					<a href="#feature"><i class="fa fa-arrow-down"></i></a>
				</div>
			</div>
		</div>
	</section>
	<!--End of home section -->

	<!--feature section -->
	<section id="feature" class="feature sections">
		<div class="container">
			<div class="row">
				<div class="main_feature text-center">

					<div class="col-sm-3">
						<div class="single_feature">
							<div class="single_feature_icon">
								<i class="fa fa"><img alt="" src="images/as_con.png"
									style="width: 45px"></i>
							</div>

							<h4>������ ������</h4>
							<div class="separator3"></div>
							<p></p>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="single_feature">
							<div class="single_feature_icon">
								<i class="fa fa"><img alt="" src="images/as_match.png"
									style="width: 45px"></i>
							</div>

							<h4>���÷�� ���� �� ��Ī</h4>
							<div class="separator3"></div>
							<p></p>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="single_feature">
							<div class="single_feature_icon">
								<i class="fa fa"><img alt="" src="images/as_cam.png"
									style="width: 45px"></i>
							</div>
							<h4>ķ���� ��û �� ������</h4>
							<div class="separator3"></div>
							<p></p>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="single_feature">
							<div class="single_feature_icon">
								<i class="fa fa"><img alt="" src="images/as_report.png"
									style="width: 45px"></i>
							</div>

							<h4>����Ʈ ����</h4>
							<div class="separator3"></div>
							<p></p>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!--End of container -->
	</section>
	<!--End of feature Section -->

	<!-- History section -->
	<section id="history" class="history sections">
		<div class="container">
			<div class="row">
				<div class="main_history">
					<div class="col-sm-6">
						<div class="single_history_img">
							<img src="assets/images/img/connect.png" alt="" />
						</div>
					</div>

					<div class="col-sm-6">
						<div class="single_history_content">
							<div class="head_title">
								<h2>About Us</h2>
							</div>
							<h3 style="color: black">�����ͽ��� ���÷�𼭿� �����ָ� ���� ���񽺸� �����ϰ� ������,
								�����Ǵ� ���񽺷δ� ���÷�� ������ �м� �ַ��(���÷�� ����Ʈ, �ؽ��±�), ������&���÷�� ��Ī����
								������ ���񽺸� �����ϰ� �ֽ��ϴ�. ���÷�� �� ���� ������ �����ð� �����ս� �����úκ����� Ȯ���� ������
								�������� ������ ���� ���൵ �Բ� �����ϰ� �ֽ��ϴ�.</h3>

							<a href="" class="btn btn-lg" style="display: none">BROWSE
								OUR WORK</a>
						</div>
					</div>
				</div>
			</div>
			<!--End of row -->
		</div>
		<!--End of container -->
	</section>
	<!--End of history -->
	<hr />



	<!--Footer section-->
	<section class="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="main_footer">
						<div class="row">
							<div class="col-sm-6 col-xs-12">
								<div class="flowus">
									<a href=""><i class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-instagram"></i></a> <a href=""><i
										class="fa fa-youtube"></i></a> <a href=""><i
										class="fa fa-dribbble"></i></a>
								</div>
							</div>

							<div class="col-sm-6 col-xs-12">
								<div class="copyright_text">
									<p class=" wow fadeInRight" data-wow-duration="1s">
										Made with <i class="fa fa-heart"></i> by MARKETUS 2021.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End off footer Section-->











	</div>

	<!-- START SCROLL TO TOP  -->

	<div class="scrollup">
		<a href="#"><i class="fa fa-chevron-up"></i></a>
	</div>

	<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="assets/js/vendor/bootstrap.min.js"></script>

	<script src="assets/js/jquery.magnific-popup.js"></script>
	<script src="assets/js/jquery.mixitup.min.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/js/jquery.masonry.min.js"></script>

	<!--slick slide js -->
	<script src="assets/css/slick/slick.js"></script>
	<script src="assets/css/slick/slick.min.js"></script>


	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>