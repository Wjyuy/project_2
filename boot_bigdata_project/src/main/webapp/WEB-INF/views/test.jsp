<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>리콜 정보 출력</title>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript">
    $(function() {
        $.ajax({
             url: "/proxy?cntntsId=0301",  // proxy.jsp 대신 Spring Boot 컨트롤러 호출
             dataType: "xml",
             success: function(data) {
                 console.log(data);  // 추가
                 var $data = $(data).find("return  > content");

                 if ($data.length > 0) {
                     var tb = $("<table border='1' style='border-collapse:collapse;'>");

                     var header = $("<tr/>").append(
                         $("<th/>").text("제품명"),
                         $("<th/>").text("제조사"),
                         $("<th/>").text("제조기간"),
                         $("<th/>").text("기타정보"),
                         $("<th/>").text("모델명"),
                         $("<th/>").text("리콜유형"),
                         $("<th/>").text("연락처")
                     );
                     tb.append(header);

                     $.each($data, function(i, o){
                         var productNm = $(o).find("productNm").text().trim();
                         var makr = $(o).find("makr").text().trim();
                         var mnfcturPd = $(o).find("mnfcturPd").text().trim();
                         var etcInfo = $(o).find("etcInfo").text().trim();
                         var modlNmInfo = $(o).find("modlNmInfo").text().trim();
                         var recallSe = $(o).find("recallSe").text().trim();
                         var recallEntrpsInfo = $(o).find("recallEntrpsInfo").text().trim();

                         var row = $("<tr/>").append(
                             $("<td/>").text(productNm),
                             $("<td/>").text(makr),
                             $("<td/>").text(mnfcturPd),
                             $("<td/>").html(etcInfo),
                             $("<td/>").text(modlNmInfo),
                             $("<td/>").text(recallSe),
                             $("<td/>").text(recallEntrpsInfo)
                         );
                         tb.append(row);
                     });

                     $(".wrap").html(tb);
                 } else {
                     $(".wrap").text("데이터가 없습니다.");
                 }
             },
             error: function() {
                 $(".wrap").text("데이터 로딩 실패!");
             }
        });
    });
</script>

<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Index - Impact Bootstrap Template</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Impact
  * Template URL: https://bootstrapmade.com/impact-bootstrap-business-website-template/
  * Updated: Aug 07 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body class="blog-page">
	<header id="header" class="header fixed-top">

	    <div class="topbar d-flex align-items-center">
	      <div class="container d-flex justify-content-center justify-content-md-between">
	        <div class="contact-info d-flex align-items-center">
	          <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">contact@example.com</a></i>
	          <i class="bi bi-phone d-flex align-items-center ms-4"><span>+1 5589 55488 55</span></i>
	        </div>
	        <div class="social-links d-none d-md-flex align-items-center">
	          <a href="#" class="twitter"><i class="bi bi-twitter-x"></i></a>
	          <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
	          <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
	          <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
	        </div>
	      </div>
	    </div><!-- End Top Bar -->

	    <div class="branding d-flex align-items-cente">

	      <div class="container position-relative d-flex align-items-center justify-content-between">
	        <a href="index.html" class="logo d-flex align-items-center">
	          <!-- Uncomment the line below if you also wish to use an image logo -->
	          <!-- <img src="assets/img/logo.png" alt=""> -->
	          <h1 class="sitename">Impact</h1>
	          <span>.</span>
	        </a>

	        <nav id="navmenu" class="navmenu">
	          <ul>
	            <li><a href="#hero">Home<br></a></li>
	            <li><a href="#about">About</a></li>
	            <li><a href="#services">Services</a></li>
	            <li><a href="#portfolio">Portfolio</a></li>
	            <li><a href="#team">Team</a></li>
	            <li><a href="blog.html" class="active">Blog</a></li>
	            <li class="dropdown"><a href="#"><span>Dropdown</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
	              <ul>
	                <li><a href="#">Dropdown 1</a></li>
	                <li class="dropdown"><a href="#"><span>Deep Dropdown</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
	                  <ul>
	                    <li><a href="#">Deep Dropdown 1</a></li>
	                    <li><a href="#">Deep Dropdown 2</a></li>
	                    <li><a href="#">Deep Dropdown 3</a></li>
	                    <li><a href="#">Deep Dropdown 4</a></li>
	                    <li><a href="#">Deep Dropdown 5</a></li>
	                  </ul>
	                </li>
	                <li><a href="#">Dropdown 2</a></li>
	                <li><a href="#">Dropdown 3</a></li>
	                <li><a href="#">Dropdown 4</a></li>
	              </ul>
	            </li>
	            <li><a href="#contact">Contact</a></li>
	          </ul>
	          <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
	        </nav>

	      </div>

	    </div>

	  </header>
    <h3>리콜 정보 출력</h3>
    <div class="wrap"></div>
	
	
	
</body>
</html>
