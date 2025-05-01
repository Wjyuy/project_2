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

	.year-form .inline-group {
	  display: inline-block;
	  margin: 0 10px;
	}

	.year-form label {
	  font-weight: bold;
	  margin-right: 5px;
	}

	.year-form select {
	  padding: 5px 10px;
	  border-radius: 4px;
	  border: 1px solid #ccc;
	  min-width: 100px;
	  font-size: 14px;
	}

	.year-form input[type="submit"] {
	  margin-left: 20px;
	  padding: 6px 14px;
	}

	.table-summary {
	    width: 100%;
	    border-collapse: collapse;
	    font-size: 14px;
	    text-align: center;
	    background-color: #ffffff;
	  }

	  .table-summary th, .table-summary td {
	    padding: 12px 15px;
	    border: 1px solid color-mix(in srgb, var(--default-color), transparent 60%);
	  }

	  .table-summary th {
	    background-color: color-mix(in srgb, var(--default-color), transparent 80%);
	    font-weight: bold;
	    color: #333;
	  }

	  .table-summary tr:nth-child(even) {
	    background-color: #f9f9f9;
	  }

	  .table-summary tr:hover {
	    background-color: #f1f1f1;
	  }
	  
	  .btn-get-started {
	    color: color-mix(in srgb, var(--default-color), transparent 40%);
	    background: var(--accent-color);
	    font-family: var(--heading-font);
	    font-weight: 500;
	    font-size: 14px;
	    letter-spacing: 1px;
	    display: inline-block;
	    padding: 14px 40px;
	    border-radius: 50px;
	    transition: 0.3s;
	    border: 2px solid color-mix(in srgb, var(--default-color), transparent 90%);
	    background-color: color-mix(in srgb, var(--default-color), transparent 90%);
	  }

	  .btn-get-started:hover {
	    border-color: color-mix(in srgb, var(--default-color), transparent 60%);
	  }
  </style>
  <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
	// 토글 버튼 클릭 시 콘텐츠 숨기거나 보여주는 함수
	function toggleContent(contentId, btnElement) {
	    var content = document.getElementById(contentId);

	    if (content.style.display === "none" || content.style.display === "") {
	        content.style.display = "block";
	        btnElement.textContent = "자세히 보기 -";
	    } else {
	        content.style.display = "none";
	        btnElement.textContent = "자세히 보기 +";
	    }
	}

  </script>
  
  <script>
	// 제조사별 토글 버튼 클릭 시 작동 
  document.addEventListener('DOMContentLoaded', function () {
    const rows = document.querySelectorAll('.subtotal');
    rows.forEach(function (row) {
      row.addEventListener('click', function () {
        const nextRows = [];
        let next = row.nextElementSibling;
        while (next && !next.classList.contains('subtotal')) {
          nextRows.push(next);
          next = next.nextElementSibling;
        }
        nextRows.forEach(function (r) {
          r.style.display = (r.style.display === 'none') ? 'table-row' : 'none';
        });

        const toggleCell = row.querySelector('td:first-child');
        if (toggleCell.innerText.includes('+')) {
          toggleCell.innerText = toggleCell.innerText.replace('+', '-');
        } else {
          toggleCell.innerText = toggleCell.innerText.replace('-', '+');
        }
      });
    });
  });
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
		            <h4 class="title"><a href="${pageContext.request.contextPath}/recall_statics_month" class="stretched-link">월별</a></h4>
		          </div>
		        </div><!--End Icon Box -->

		        <div class="col-xl-3 col-md-6">
		          <div class="icon-box">
		            <div class="icon"><i class="bi bi-gem"></i></div>
		            <h4 class="title"><a href="${pageContext.request.contextPath}/recall_statics_year" class="stretched-link">연도별</a></h4>
		          </div>
		        </div><!--End Icon Box -->

		        <div class="col-xl-3 col-md-6">
		          <div class="icon-box">
		            <div class="icon"><i class="bi bi-geo-alt"></i></div>
		            <h4 class="title"><a href="#about" class="stretched-link">리콜현황</a></h4>
		          </div>
		        </div><!--End Icon Box -->

		        <div class="col-xl-3 col-md-6">
		          <div class="icon-box">
		            <div class="icon"><i class="bi bi-command"></i></div>
		            <h4 class="title"><a href="#Stats" class="stretched-link">제조사별</a></h4>
		          </div>
		        </div><!--End Icon Box -->

		      </div>
		    </div>
		  </div>

		</section><!-- /Hero Section -->

		  <!-- Section Title -->
		  <div class="container section-title" data-aos="fade-up">
			
			<div class="container section-title" data-aos="fade-up">
		      <h2>연도별 리콜 통계 신고 현황</h2>
		    </div>
			  <div class="widgets-container">
				  <p>시작 연도와 종료 연도를 선택하시면 해당하는 연도 기간에 신고된 결함신고자료를 년단위로 제공합니다.</p>
						<form method="get" action="/recall_statics_year" class="year-form">
						  <div class="inline-group">
						    <label for="startYear">시작 연도</label>
						    <select name="startYear">
						      <option value="">-- 선택 --</option>
						      <c:forEach var="year" begin="2000" end="2025">
						        <option value="${year}" ${param.startYear == year ? 'selected' : ''}>${year}</option>
						      </c:forEach>
						    </select>
						  </div>
	
						  <div class="inline-group">
						    <label for="endYear">종료 연도</label>
						    <select name="endYear">
						      <option value="">-- 선택 --</option>
						      <c:forEach var="year" begin="2000" end="2025">
						        <option value="${year}" ${param.endYear == year ? 'selected' : ''}>${year}</option>
						      </c:forEach>
						    </select>
						  </div>
	
						  <input type="submit" value="조회" class="btn-get-started"/>
						</form>
						
				  <section id="about" class="about section">
  					<div class="container section-title" data-aos="fade-up">
					  
					  <h2>📊 결함 신고 요약 통계 
							<c:choose>
						        <c:when test="${not empty param.startYear && not empty param.endYear}">
						            (${param.startYear} ~ ${param.endYear})
						        </c:when>
						        <c:otherwise>
						            (2000 ~ 2025 전체)
						        </c:otherwise>
						    </c:choose>
					  </h2>
				  	</div>
					  <table class="table-summary">
					      <thead>
					          <tr>
					              <th rowspan="2">해당 연도</th>
					              <th colspan="2">국산자동차</th>
					              <th colspan="2">수입자동차</th>
					              <th colspan="2">계</th>
					          </tr>
					          <tr>
					              <th>차종</th>
					              <th>대수</th>
					              <th>차종</th>
					              <th>대수</th>
					              <th>차종</th>
					              <th>대수</th>
					          </tr>
					      </thead>
					      <tbody>
					          <tr>
								<td>${summary.label}</td>
								<td>${summary.domesticModelCount}</td>
								<td>${summary.domesticCount}</td>
								<td>${summary.domesticModelCount}</td>
								<td>${summary.importedCount}</td>
								<td>${summary.totalModelCount}</td>
								<td>${summary.totalCount}</td>
					          </tr>
					      </tbody>
					  </table>
				  </section>
				  
				  <section id="about" class="about section">
					<div class="container section-title" data-aos="fade-up">
				 	 <button class="toggle-btn btn-get-started" onclick="toggleContent('content1', this)">자세히 보기 +</button>
				    </div>
				          <!-- 숨겨진 내용 -->
				          <div id="content1" class="toggle-content" style="display:none;">
							<div class="container section-title" data-aos="fade-up">
							  <h2>연도별 리콜현황</h2>
							</div>
							<div class="container section-title" data-aos="fade-up">
								<table class="table-summary">
								    <thead>
									  <tr>
							              <th rowspan="2">해당 연도</th>
							              <th colspan="2">국산자동차</th>
							              <th colspan="2">수입자동차</th>
							              <th colspan="2">계</th>
							          </tr>
								      <tr>
								        <th>국산 차종</th>
								        <th>국산 대수</th>
								        <th>수입 차종</th>
								        <th>수입 대수</th>
								        <th>전체 차종</th>
								        <th>전체 대수</th>
								      </tr>
								    </thead>
								    <tbody>
										<c:forEach var="item" items="${summaryList}">
										    <tr>
										        <td>${item.report_year}</td>
										        <td>${item.domesticModelCount}</td>
										        <td>${item.domesticCount}</td>
										        <td>${item.importedModelCount}</td>
										        <td>${item.importedCount}</td>
										        <td>${item.totalModelCount}</td>
										        <td>${item.totalCount}</td>
										    </tr>
										</c:forEach>
								    </tbody>
								  </table>
							  </div>
							  <div class="container section-title" data-aos="fade-up">
	  							  <h2>연도별 대수 리콜현황</h2>
								  <canvas id="yearlyRoundChart" width="600" height="300"></canvas>
							  </div>
							  <div class="container section-title" data-aos="fade-up">
	  							  <h2>연도별 차종 리콜현황</h2>
								  <canvas id="yearlyBarChart" width="600" height="300"></canvas>
							  </div>
							  
							  
				          	</div> <!-- End toggle  -->
						  </section>
						  
						  <section id="Stats" class="about section">
							<div class="container section-title" data-aos="fade-up">
		  					  <h2>연도별 리콜 요약 통계-제조사별</h2>
		  				  	</div>
							<div class="container section-title" data-aos="fade-up">
								<table class="table-summary">
								  <thead>
								    <tr>
								      <th>제조사명</th>
								      <th>계</th>
								    </tr>
								  </thead>
								  <tbody>
								    <c:forEach var="entry" items="${groupedRecallStats}">
								      <tr style="font-weight:bold;">
								        <td>${entry.key}</td>
								        <td>
								          <c:set var="sum" value="0" />
								          <c:forEach var="recall" items="${entry.value}">
								            <c:set var="sum" value="${sum + recall.recallCount}" />
								          </c:forEach>
								          ${sum}
								        </td>
								      </tr>
								    </c:forEach>
								  </tbody>
								</table>
							  </div>
						  </section>

						  <section id="about" class="about section">
		  					<div class="container section-title" data-aos="fade-up">
		  				 	 <button class="toggle-btn btn-get-started" onclick="toggleContent('content2', this)">자세히 보기 +</button>
		  				    </div>
	  				          <!-- 숨겨진 내용 -->
	  				          <div id="content2" class="toggle-content" style="display:none;">
		    					<div class="container section-title" data-aos="fade-up">
			  					  <h2>연도별 리콜 현황-제조사별</h2>
			  				  	</div>
								<div class="container section-title" data-aos="fade-up">
								  <table class="table-summary">
								    <thead>
										<tr>
										  <th>해당 연도</th>
										  <th>제조사명</th>
										  <th>계</th>
										</tr>
										<c:forEach var="entry" items="${groupedRecallStats}">
										  <tr class="subtotal" style="font-weight:bold;">
										    <td>합산 +</td>
										    <td>${entry.key}</td>
										    <td>
										      <c:set var="sum" value="0" />
										      <c:forEach var="recall" items="${entry.value}">
										        <c:set var="sum" value="${sum + recall.recallCount}" />
										      </c:forEach>
										      ${sum}
										    </td>
										  </tr>
	
										  <!-- 상세 내용 -->
										  <c:forEach var="recall" items="${entry.value}">
										    <tr class="detail-row" style="display:none;">
										      <td>${recall.reportYear}</td>
										      <td>${recall.car_manufacturer}</td>
										      <td>${recall.recallCount}</td>
										    </tr>
										  </c:forEach>
										</c:forEach>
	
									    </tbody>
									  </table>
								  </div>
								  
								  <div class="container section-title" data-aos="fade-up">
									<h2>제조사별 리콜 점유율 (도넛 그래프)</h2>
								    <canvas id="manufacturerDonutChart" width="400" height="400"></canvas>
								  </div>
							  </div>
						  </section>
						  
				</div> <!-- End widgets-container -->
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
  
  <!-- canvas 그래프 코드 -->
  <script>
	const labels = [<c:forEach var="item" items="${summaryList}" varStatus="status">"${item.report_year}"<c:if test="${!status.last}">,</c:if></c:forEach>];

	const domesticCounts = [<c:forEach var="item" items="${summaryList}" varStatus="status">${item.domesticCount}<c:if test="${!status.last}">,</c:if></c:forEach>];
	const importedCounts = [<c:forEach var="item" items="${summaryList}" varStatus="status">${item.importedCount}<c:if test="${!status.last}">,</c:if></c:forEach>];

	const ctx = document.getElementById('yearlyRoundChart').getContext('2d');
	new Chart(ctx, {
	  type: 'line',  // 곡선형 그래프 
	  data: {
	    labels: labels,
	    datasets: [
	      {
	        label: '국산 대수',
	        data: domesticCounts,
	        borderColor: '#80c1ba', 
	        backgroundColor: 'rgba(128, 193, 186, 0.2)', 
	        fill: true, 
	        tension: 0.4,  
	        borderWidth: 2 
	      },
	      {
	        label: '수입 대수',
	        data: importedCounts,
	        borderColor: '#b7dcd8',
	        backgroundColor: 'rgba(183, 220, 216, 0.2)',
	        fill: true,  
	        tension: 0.4,  
	        borderWidth: 2  
	      }
	    ]
	  },
	  options: {
	    responsive: true,
	    plugins: {
	      title: {
	        display: true,
	        text: ''
	      }
	    },
	    scales: {
	      y: {
	        beginAtZero: true,
	        ticks: {
	          stepSize: 10
	        }
	      }
	    }
	  }
	});
	</script>
	
	<script>
	const Barlabels = [<c:forEach var="item" items="${summaryList}" varStatus="status">"${item.report_year}"<c:if test="${!status.last}">,</c:if></c:forEach>];

	const BardomesticModelCounts = [<c:forEach var="item" items="${summaryList}" varStatus="status">${item.domesticModelCount}<c:if test="${!status.last}">,</c:if></c:forEach>];
	const BarimportedModelCounts = [<c:forEach var="item" items="${summaryList}" varStatus="status">${item.importedModelCount}<c:if test="${!status.last}">,</c:if></c:forEach>];

	const Barctx = document.getElementById('yearlyBarChart').getContext('2d');
	new Chart(Barctx, {
	  type: 'bar',  // 막대 그래프
	  data: {
	    labels: Barlabels, 
	    datasets: [
	      {
	        label: '국산 차종',
	        data: BardomesticModelCounts,  
	        backgroundColor: '#80c1ba',
	        borderWidth: 1
	      },
	      {
	        label: '수입 차종',
	        data: BarimportedModelCounts, 
	        backgroundColor: '#b7dcd8', 
	        borderWidth: 1
	      }
	    ]
	  },
	  options: {
	    responsive: true,
	    plugins: {
	      title: {
	        display: true,
	        text: '' 
	      }
	    },
	    scales: {
	      y: {
	        beginAtZero: true,
	        ticks: {
	          stepSize: 10 
	        }
	      }
	    }
	  }
	});

  </script>
  <script>
    // 제조사 이름 배열
    const manufacturerLabels = [
      <c:forEach var="entry" items="${groupedRecallStats}" varStatus="status">
        "${entry.key}"<c:if test="${!status.last}">,</c:if>
      </c:forEach>
    ];

    // 리콜 총합 배열
    const recallSums = [
      <c:forEach var="entry" items="${groupedRecallStats}" varStatus="status">
        <c:set var="sum" value="0" />
        <c:forEach var="recall" items="${entry.value}">
          <c:set var="sum" value="${sum + recall.recallCount}" />
        </c:forEach>
        ${sum}<c:if test="${!status.last}">,</c:if>
      </c:forEach>
    ];

    // 차트 그리기
    const donutCtx = document.getElementById('manufacturerDonutChart').getContext('2d');
    new Chart(donutCtx, {
      type: 'doughnut',
      data: {
        labels: manufacturerLabels,
        datasets: [{
          label: '리콜 건수',
          data: recallSums,
          backgroundColor: [
            '#0f887a', '#dce8e7', '#0a8878', '#5aaea6', '#73c7c6',
            '#579c8b', '#64b8c1', '#014d44', '#253e4a', '#3aa494', '#b7dcd8'
          ],
          borderWidth: 1
        }]
      },
      options: {
        responsive: true,
        plugins: {
          title: {
            display: true,
          }
        }
      }
    });
  </script>


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