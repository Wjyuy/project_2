<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>리콜 정보 출력</title>
<!--<script src="${pageContext.request.contextPath}/js/jquery.js"></script>-->
<!--<script type="text/javascript">-->
<!--    $(function() {-->
<!--        $.ajax({-->
<!--             url: "/proxy?cntntsId=0301",  // proxy.jsp 대신 Spring Boot 컨트롤러 호출-->
<!--             dataType: "xml",-->
<!--             success: function(data) {-->
<!--                 console.log(data);  // 추가-->
<!--                 var $data = $(data).find("return  > content");-->

<!--                 if ($data.length > 0) {-->
<!--                     var tb = $("<table border='1' style='border-collapse:collapse;'>");-->

<!--                     var header = $("<tr/>").append(-->
<!--                         $("<th/>").text("제품명"),-->
<!--                         $("<th/>").text("제조사"),-->
<!--                         $("<th/>").text("제조기간"),-->
<!--                         $("<th/>").text("기타정보"),-->
<!--                         $("<th/>").text("모델명"),-->
<!--                         $("<th/>").text("리콜유형"),-->
<!--                         $("<th/>").text("연락처")-->
<!--                     );-->
<!--                     tb.append(header);-->

<!--                     $.each($data, function(i, o){-->
<!--                         var productNm = $(o).find("productNm").text().trim();-->
<!--                         var makr = $(o).find("makr").text().trim();-->
<!--                         var mnfcturPd = $(o).find("mnfcturPd").text().trim();-->
<!--                         var etcInfo = $(o).find("etcInfo").text().trim();-->
<!--                         var modlNmInfo = $(o).find("modlNmInfo").text().trim();-->
<!--                         var recallSe = $(o).find("recallSe").text().trim();-->
<!--                         var recallEntrpsInfo = $(o).find("recallEntrpsInfo").text().trim();-->

<!--                         var row = $("<tr/>").append(-->
<!--                             $("<td/>").text(productNm),-->
<!--                             $("<td/>").text(makr),-->
<!--                             $("<td/>").text(mnfcturPd),-->
<!--                             $("<td/>").html(etcInfo),-->
<!--                             $("<td/>").text(modlNmInfo),-->
<!--                             $("<td/>").text(recallSe),-->
<!--                             $("<td/>").text(recallEntrpsInfo)-->
<!--                         );-->
<!--                         tb.append(row);-->
<!--                     });-->

<!--                     $(".wrap").html(tb);-->
<!--                 } else {-->
<!--                     $(".wrap").text("데이터가 없습니다.");-->
<!--                 }-->
<!--             },-->
<!--             error: function() {-->
<!--                 $(".wrap").text("데이터 로딩 실패!");-->
<!--             }-->
<!--        });-->
<!--    });-->
<!--</script>-->

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
  <style>
	    div.paging {
	  width: 100%;
	  display: inline-flex;
	  align-items: center;
	  margin-top: 20px;
	  justify-content: center;
	}
	div.paging>i,
	div.paging>div.pages {
	  margin: 0 10px;
	}
	div.paging>i,
	div.paging>div.pages>span {
	  margin: 0 3px;
	  cursor: pointer;
	}
	span.active {
	  color: orangered;
	  font-weight: bold;
	}
</style>
</head>
<body class="starter-page-page">

  <header id="header" class="header fixed-top">

    <div class="topbar d-flex align-items-center">
      <div class="container d-flex justify-content-center justify-content-md-between">
        <div class="contact-info d-flex align-items-center">
          <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">contact@example.com</a></i>
          <i class="bi bi-phone d-flex align-items-center ms-4"><span>+051 1544-9970</span></i>
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
           <img src="assets/img/hmm.png" alt=""> 
          <h1 class="sitename">자동차리콜센터</h1>
          <span>.</span>
        </a>

        <nav id="navmenu" class="navmenu">
          <ul>
            <li><a href="#hero">결함신고<br></a></li>
            <li><a href="#about">리콜정보</a></li>
            <li><a href="#services">리콜제도</a></li>
            <li><a href="#portfolio">안전운전</a></li>
            <li><a href="#team">리콜센터</a></li>
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
              <h1>공지사항</h1>
              <p class="mb-0">자동차 리콜센터에서 제공하는 공지사항입니다.</p>
            </div>
          </div>
        </div>
      </div>
      <nav class="breadcrumbs">
        <div class="container">
          <ol>
            <li><a href="index.html">자동차리콜센터</a></li>
            <li class="current">공지사항</li>
          </ol>
        </div>
      </nav>
    </div><!-- End Page Title -->

    <!-- Starter Section Section -->
    <section id="starter-section" class="starter-section section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up" style="list-style-type: none; ">
        <h2>공지</h2>
		
        <li style="text-align: left;"><h4><a href="detail.jsp">자동차리콜센터 서비스 중단안내(7/15)</a></h4>
        <a href="detail.jsp">안녕하세요. 자동차안전연구원입니다.보다 안정적인 서비스를 위해 데이터베이스 서버 점검 작업이 아래와 같이 예정되어있습니다.작업시간 동안 서비스 이용이 불가능하오니 참고하시기 바랍니다.작업내용 : 데이터베이스 서버 점검 작업작업시간 : 2022년 7월 15일(금) 22시 ~ 24시작업 상황에 따라 점검시간이 변경될 수 있습니다.감사합니다.</a>
        </li><br>
        <li style="text-align: left;"><h4><a href="detail.jsp">리콜현황 서비스 점검 안내</a></h4>
        <a href="detail.jsp">리콜통계 현황을 점검 중입니다.빠른 조치 후 리콜현황 정보를 제공하겠습니다.이용하시는데 불편을 드려 죄송합니다.</a>
        </li><br>
        <li style="text-align: left;"><h4><a href="detail.jsp">자동차리콜센터 서비스 중단안내(11/6~11/7)</a></h4>
        <a href="detail.jsp">자동차리콜센터 시스템 서비스 중단 안내데이터베이스 이관 작업으로 아래와 같이 서비스 중단이 예정되어있습니다.작업시간 동안 서비스 이용이 불가능하오니 참고하시기 바랍니다.-  아    래  -작업내용 : 데이터베이스 이관 작업작업시간 : 2021년 11월 6일(토) 9시 ~ 7일(일) 22시</a>
        </li><br>
        <li style="text-align: left;"><h4><a href="detail.jsp">자동차리콜센터 콜센터 휴무안내</a></h4>
        <a href="detail.jsp">자동차리콜센터 콜센터(080-357-2500) 휴무안내 - 2021년 7월 2일(금요일) -한국교통안전공단 창립기념일을 맞아 7월2일은 자동차리콜센터의 휴무일입니다.해당일에는 콜센터의 전화상담업무가 중단되오니,결함신고 및 리콜불만신고, 상담신청 등은 자동차리콜센터 홈페이지를 이용해주시기 바랍니다.  </a>
        </li><br>
      </div><!-- End Section Title -->
	  <div class="paging">
	    <i class="fa-solid fa-angles-left" id="first_page">&lt;&lt;</i>
	    <i class="fa-solid fa-angle-left" id="prev_page">&lt;</i>
	    <div class="pages">
	      <span class="active">1</span>
	      <span>2</span>
	      <span>3</span>
	      <span>4</span>
	      <span>5</span>
	    </div>
	    <i class="fa-solid fa-angle-right" id="next_page">&gt;</i>
	    <i class="fa-solid fa-angles-right" id="last_page">&gt;&gt;</i>
	  </div>


      

    </section><!-- /Starter Section Section -->

  </main>
  <footer id="footer" class="footer accent-background">

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-5 col-md-12 footer-about">
          <a href="index.html" class="logo d-flex align-items-center">
            <span class="sitename">자동차리콜센터</span>
          </a>
          <p>우)445-871 경기도 화성시 송산면 삼존로 200 한국교통안전공단 자동차안전연구원 Tel : 080-357-2500 Fax : 031-355-0027
            본 홈페이지에 게시된 이메일 주소가 자동 수집되는 것을 거부하며, 이를 위반 시 정보통신망법에 의해 처벌됨을 유념하시기 바랍니다.</p>
          <div class="social-links d-flex mt-4">
            <a href=""><i class="bi bi-twitter-x"></i></a>
            <a href=""><i class="bi bi-facebook"></i></a>
            <a href=""><i class="bi bi-instagram"></i></a>
            <a href=""><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

        <div class="col-lg-2 col-6 footer-links">
          <h4>센터 메뉴</h4>
          <ul>
            <li><a href="#">결함신고</a></li>
            <li><a href="#">리콜정보</a></li>
            <li><a href="#">리콜제도</a></li>
            <li><a href="#">안전운전</a></li>
            <li><a href="#">리콜센터</a></li>
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
          <p>부산광역시 부산진구 중앙대로 672 2</p>
          <p>삼비빌딩</p>
          <p>2층, 12층</p>
          <p class="mt-4"><strong>Phone:</strong> <span>010-7750-8444</span></p>
          <p><strong>Email:</strong> <span>tjswls0147@naver.com</span></p>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <span>KH Company</span> <strong class="px-1 sitename">한국교통안전공단</strong> <span>자동차안전연구원 </span></p>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you've purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
        Designed by <a href="https://www.naver.com/">LeeSeonJinMade</a>
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

</html>
</html>
