<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Starter Page - Impact Bootstrap Template</title>
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
	.year-form {
	  background-color: #f9f9f9;
	  padding: 20px;
	  margin: 30px auto;
	  border: 1px solid #ddd;
	  border-radius: 8px;
	  width: fit-content;
	  text-align: center;
	  box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.05);
	}

	.year-form label {
	  margin: 0 10px;
	  font-weight: bold;
	}

	.year-form select {
	  padding: 5px 10px;
	  margin: 0 10px;
	  border-radius: 4px;
	  border: 1px solid #ccc;
	  min-width: 100px;
	  font-size: 14px;
	}


  </style>
  <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
  <script>
	
  </script>
</head>

<body class="starter-page-page">

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

    <!-- Starter Section Section -->
    <section id="starter-section" class="starter-section section">
		<!-- Hero Section -->
		<section id="hero" class="hero section accent-background">

		  <div class="container position-relative" data-aos="fade-up" data-aos-delay="100">
		    <div class="row gy-5 justify-content-between">
		      <div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center">
		        <h2><span>리콜 통계</span><span class="accent"> 자료실</span></h2>
		        <p>Sed autem laudantium dolores. Voluptatem itaque ea consequatur eveniet. Eum quas beatae cumque eum quaerat.</p>
		        <div class="d-flex">
		          <a href="#about" class="btn-get-started">Get Started</a>
		          <a href="https://www.youtube.com/watch?v=Y7f98aduVJ8" class="glightbox btn-watch-video d-flex align-items-center"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>
		        </div>
		      </div>
		      <div class="col-lg-5 order-1 order-lg-2">
		        <img src="assets/img/hero-img.svg" class="img-fluid" alt="">
		      </div>
		    </div>
		  </div>

		  <div class="icon-boxes position-relative" data-aos="fade-up" data-aos-delay="200">
		    <div class="container position-relative">
		      <div class="row gy-4 mt-5">

		        <div class="col-xl-3 col-md-6">
		          <div class="icon-box">
		            <div class="icon"><i class="bi bi-easel"></i></div>
		            <h4 class="title"><a href="" class="stretched-link">월별</a></h4>
		          </div>
		        </div><!--End Icon Box -->

		        <div class="col-xl-3 col-md-6">
		          <div class="icon-box">
		            <div class="icon"><i class="bi bi-gem"></i></div>
		            <h4 class="title"><a href="" class="stretched-link">연도별</a></h4>
		          </div>
		        </div><!--End Icon Box -->

		        <div class="col-xl-3 col-md-6">
		          <div class="icon-box">
		            <div class="icon"><i class="bi bi-geo-alt"></i></div>
		            <h4 class="title"><a href="" class="stretched-link">리콜현황</a></h4>
		          </div>
		        </div><!--End Icon Box -->

		        <div class="col-xl-3 col-md-6">
		          <div class="icon-box">
		            <div class="icon"><i class="bi bi-command"></i></div>
		            <h4 class="title"><a href="" class="stretched-link">결함신고</a></h4>
		          </div>
		        </div><!--End Icon Box -->

		      </div>
		    </div>
		  </div>

		</section><!-- /Hero Section -->

		  <!-- Section Title -->
		  <div class="container section-title" data-aos="fade-up">
		      <h2>연도별 리콜 통계 신고 현황</h2>
			  <p>시작 연도와 종료 연도를 선택하시면 해당하는 연도 기간에 신고된 결함신고자료를 년단위로 제공합니다.</p>
		      
		      <form method="get" action="/recall_statics">
		          <h3>시작 연도</h3>
		          <select name="startYear" class="form-select">
		              <option value="">-- 선택 --</option>
		              <c:forEach var="year" begin="2000" end="2025">
		                  <option value="${year}" ${param.startYear == year ? 'selected' : ''}>${year}</option>
		              </c:forEach>
		          </select>

		          <h3>종료 연도</h3>
		          <select name="endYear" class="form-select">
		              <option value="">-- 선택 --</option>
		              <c:forEach var="year" begin="2000" end="2025">
		                  <option value="${year}" ${param.endYear == year ? 'selected' : ''}>${year}</option>
		              </c:forEach>
		          </select>

		          <input type="submit" value="조회" class="year-form" />
		      </form>

		      <h3>리콜 신고 건수: ${count} 건</h3>
		  </div><!-- End Section Title -->

		
    </section><!-- /Starter Section Section -->

	
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
<!--
  
  <script>
  	//페이지 번호 처리 
  	$(".paginate_button a").on("click",function(e){
  		e.preventDefault();
  		console.log("페이징 클릭입니다 :> href속성=>"+$(this).attr("href"));

		const num = $(this).data('page'); // 클릭된 a의 data-page 값 읽기
		    $.ajax({
		        url: "/proxy?cntntsId=0301&pageNo=" + num,
		        type: "GET",
		        success: function(response) {
		            console.log(response);
		            // $("#contentArea").html(response);  // 필요하면 이렇게 결과를 넣을 수 있음
		        },
		        error: function(xhr, status, error) {
		            console.error("AJAX Error:", error);
		        }
		    });
  	}); //end of paginate_button click
	</script>
  	-->
</body>

</html>