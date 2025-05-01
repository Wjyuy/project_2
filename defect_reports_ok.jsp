<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>신고 정보 입력</title>
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
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

  <!-- =======================================================
  * Template Name: Impact
  * Template URL: https://bootstrapmade.com/impact-bootstrap-business-website-template/
  * Updated: Aug 07 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style>
  .table-custom {
    width: 100%;
    border-collapse: collapse;
    font-size: 14px;
    text-align: center;
    background-color: #ffffff;
  }

  .table-custom th, .table-custom td {
    padding: 12px 15px;
    border: 1px solid color-mix(in srgb, var(--default-color), transparent 60%);
  }

  .table-custom th {
    background-color: color-mix(in srgb, var(--default-color), transparent 80%);
    font-weight: bold;
    color: #333;
  }

  .table-custom tr:nth-child(even) {
    background-color: #f9f9f9;
  }

  .table-custom tr:hover {
    background-color: #f1f1f1;
  }
  /* 테이블 기본 스타일 정리 */
  .table-form {
    width: 60%;
    margin: 2em auto;
    border-collapse: separate;
    border-spacing: 0 10px; /* row 간 여백 */
  }

  /* 제목 셀 정렬 및 너비 */
  .table-form th.th {
    text-align: left;
    vertical-align: middle;
    width: 150px;
    padding-right: 10px;
    font-weight: 500;
  }

  /* 입력 칸 여백 및 라인 정리 */
  .table-form td.td {
    vertical-align: middle;
    padding-bottom: 5px;
  }

  /* 아이콘 옆 공백 제거 */
  .table-form i[class^="ion-"] {
    margin-left: 5px;
    font-size: 16px;
    vertical-align: middle;
    color: #999;
  }

  /* 비밀번호 눈 아이콘 버튼 위치 보정 */
  .layerPasswd input[type="password"] {
    padding-right: 35px; /* 아이콘 공간 확보 */
  }

  .layerPasswd button {
    position: absolute;
    right: 10px;
    top: 50%;
    transform: translateY(-50%);
    background: none;
    border: none;
    padding: 0;
    cursor: pointer;
  }

  .layerPasswd button i {
    font-size: 18px;
    color: #333;
  }

  /* 라디오 버튼 간격 정리 */
  .table-form td.radio label {
    margin-right: 20px;
  }
  /* 모바일 대응 (반응형) */
  @media screen and (max-width: 768px) {
    .table-form {
      width: 90%;
    }

    .table-form th.th {
      display: block;
      margin-bottom: 5px;
    }

    .table-form td.td {
      display: block;
    }
  }
  button{
	background-color: #00796b;
	color: white;
	border: none;
	padding: 0PX 16PX;
	cursor: pointer;
  }
  button:hover{
	background-color: #1a5739;
  }
  input, select, button{
	height: 38PX;
	line-height: 38PX;
	vertical-align: middle;
	box-sizing: border-box;
  }
  input {
    height: 38px;
    line-height: 38px;
    vertical-align: middle;
    box-sizing: border-box;
    padding: 0 10px; /* 텍스트와 테두리 간의 간격을 좀 더 여유롭게 */
    border: 1px solid #ccc; /* 미세한 테두리 */
    border-radius: 5px; /* 둥근 모서리 */
    background-color: #f9f9f9; /* 배경색 */
    font-size: 14px; /* 텍스트 크기 */
    color: #333; /* 텍스트 색상 */
	font-family: 'Helvetica Neue', Arial, sans-serif; /* 깔끔한 폰트 */
	font-weight: 400; /* 적당한 폰트 두께 */
	text-align: left; /* 텍스트 정렬 */
    transition: all 0.3s ease; /* 애니메이션 효과 */
  }

  input:focus {
    border-color: #007bff; /* 포커스 시 테두리 색상 */
    background-color: #fff; /* 포커스 시 배경색 */
    outline: none; /* 기본 포커스 아웃라인 제거 */
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* 포커스 시 그림자 */
  }
  </style>
  <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
  <script>
	  $(document).on("click", ".paginate_button a", function(e) {
		e.preventDefault(); 
		    const page = $(this).attr("href"); 
		    $("#actionForm").find("input[name='pageNum']").val(page);
		    console.log("@#페이징>" + page);
		    $("#actionForm").submit(); 
	  });
  </script>
</head>

<body class="defect_reports-page">

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
            <li><a href="blog.html">Blog</a></li>
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
    <main class="main">

      <!-- Page Title -->
      <div class="page-title">
        <div class="heading">
          <div class="container">
            <div class="row d-flex justify-content-center text-center">
              <div class="col-lg-8">
                <h1>신고인 및 자동차 정보 입력</h1>
                <p class="mb-0">자동차 및 건설기계 결함내역을 신청할 수 있습니다.</p>
              </div>
            </div>
          </div>
        </div>
        <nav class="breadcrumbs">
          <div class="container">
            <ol>
              <li><a href="index.html">홈</a></li>
              <li class="current">정보 입력</li>
            </ol>
          </div>
        </nav>
      </div><!-- End Page Title -->

      <!-- Starter Section Section -->
      <section id="starter-section" class="starter-section section">

        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
          <h2 class="title">신청 완료</h2>
  		
  		<div class="widgets-container" style="text-align: center;">
  		    <form action="defect_list" method="post" class="uk-form-stacked">
  	
  				<hr margin:auto >
  				
  			<table class="uk-table uk-table-divider table-form valickTbl1"  style="margin-left:35%;margin-bottom:5%;margin-top:5%;">
  			        <colgroup>
  			            <col class="th">
  			            <col class="td">
  			        </colgroup>
  			        <tbody>
  			          
						<tr>
						  <th class="th" style="text-align: auto">
						    신청 완료 되었습니다
						    <i class="ion-ios7-checkmark-empty"></i>
						    <i class="ion-cloud-done" style="color: black;"></i>
						  </th>
						</tr>
  			        </tbody>
  			      </table>

  							
  						<div class="text-center">
  							<button type="submit"  onclick="handleSubmit()">
  							  결함신고 리스트로 이동
  							</button>
							&nbsp;&nbsp;&nbsp;&nbsp;
						  <button type="button" onclick="location.href='defect_reports'">
						    확인 완료
						  </button>
  						</div>		
						
        </form>

      </div>
      </div>
    </section>
  </main>
	
	
	<footer id="footer" class="footer accent-background">

	  <div class="container footer-top">
	    <div class="row gy-4">
	      <div class="col-lg-5 col-md-12 footer-about">
	        <a href="index.html" class="logo d-flex align-items-center">
	          <span class="sitename">Impact</span>
	        </a>
	        <p>Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus.</p>
	        <div class="social-links d-flex mt-4">
	          <a href=""><i class="bi bi-twitter-x"></i></a>
	          <a href=""><i class="bi bi-facebook"></i></a>
	          <a href=""><i class="bi bi-instagram"></i></a>
	          <a href=""><i class="bi bi-linkedin"></i></a>
	        </div>
	      </div>

	      <div class="col-lg-2 col-6 footer-links">
	        <h4>Useful Links</h4>
	        <ul>
	          <li><a href="#">Home</a></li>
	          <li><a href="#">About us</a></li>
	          <li><a href="#">Services</a></li>
	          <li><a href="#">Terms of service</a></li>
	          <li><a href="#">Privacy policy</a></li>
	        </ul>
	      </div>

	      <div class="col-lg-2 col-6 footer-links">
	        <h4>Our Services</h4>
	        <ul>
	          <li><a href="#">Web Design</a></li>
	          <li><a href="#">Web Development</a></li>
	          <li><a href="#">Product Management</a></li>
	          <li><a href="#">Marketing</a></li>
	          <li><a href="#">Graphic Design</a></li>
	        </ul>
	      </div>

	      <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
	        <h4>Contact Us</h4>
	        <p>A108 Adam Street</p>
	        <p>New York, NY 535022</p>
	        <p>United States</p>
	        <p class="mt-4"><strong>Phone:</strong> <span>+1 5589 55488 55</span></p>
	        <p><strong>Email:</strong> <span>info@example.com</span></p>
	      </div>

	    </div>
	  </div>

	  <div class="container copyright text-center mt-4">
	    <p>© <span>Copyright</span> <strong class="px-1 sitename">Impact</strong> <span>All Rights Reserved</span></p>
	    <div class="credits">
	      <!-- All the links in the footer should remain intact. -->
	      <!-- You can delete the links only if you've purchased the pro version. -->
	      <!-- Licensing information: https://bootstrapmade.com/license/ -->
	      <!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
	      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
	    </div>
	  </div>

	</footer>

	<!-- Scroll Top -->
	<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

	<!-- Preloader -->
	<div id="preloader"></div>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>

	<!-- Main JS File -->
	<script src="assets/js/main.js"></script>

	</body>







