<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
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
.notice-title {
            cursor: pointer;
            font-weight: bold;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        .notice-content {
            display: none;
            padding: 10px;
            background: #f9f9f9;
            border-bottom: 1px solid #ccc;
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
              <h1>FAQ</h1>
              <p class="mb-0">자동차제작결함 및 신차안전도평가와 관련하여 FAQ를 제공합니다.</p>
            </div>
          </div>
        </div>
      </div>
      <nav class="breadcrumbs">
        <div class="container">
          <ol>
              <li class="faq-item-create">제작관리</li>
            <li class="faq-item-home"><a href="index.html">자동차리콜센터</a></li>
          </ol>
        </div>
      </nav>
    </div><!-- End Page Title -->

    <!-- Starter Section Section -->
    <section id="starter-section" class="starter-section section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up" style="list-style-type: none; ">
        <h2>제작관리</h2>
		<!-- Faq Section -->
		<section id="faq" class="faq section">

		  <div class="container">

		    <div class="row gy-4">

		      <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
		        <div class="content px-xl-5">
		          <h3><span>자주 묻는 </span><strong>질문들</strong></h3>
		          <p>
		           
		          </p>
		        </div>
		      </div>

		      <div class="col-lg-8" data-aos="fade-up" data-aos-delay="200">

		        <div class="faq-container">
		          <div class="faq-item faq-active">
		            <h3><img src="assets/img/qna.png" alt="">&nbsp<span>자동차 결함을 신고하고 싶은데 어떻게 하나요?</span></h3>
		            <div class="faq-content">
		              <p>						자동차 운행 중 안전상의 문제 등 자동차 결함과 관련하여 국토해양부 및 자동차안전연구원에서는 자동차제작결함정보를 수집하고 있습니다.

						자동차결함신고센터(www.car.go.kr)를 방문하셔서 본인의 신상정보 및 차량정보를 입력하신 후 자동차 결함현상에 대하여 입력하거나 제작결함신고전용전화(080-357-2500)를 이용하시길 바랍니다.

						여러분이 제공하신 자동차제작결함정보는 향후 제작결함조사를 수행하는 하나의 귀중한 자료로 활용됩니다.
						제공하신 제작결함 정보에 대해 검토와 분석에 일정기간이 소요됨에 따라 매 건별로 회신이 불가능하며, 경우에 따라서 제작결함 정보를 제공한 자동차 소유자에게 제작결함조사를 수행하는 성능시험대행기관에서 제공정보에 대해 유선으로 확인을 실시할 수 있습니다.</p>
		            </div>
		            <i class="faq-toggle bi bi-chevron-right"></i>
		          </div><!-- End Faq item-->

		          <div class="faq-item">
		            <h3><img src="assets/img/qna.png" alt="">&nbsp<span>제작결함조사에서는 어떤 업무를 수행하나요?</span></h3>
		            <div class="faq-content">
		              <p>						제작결함조사는 정부가 규정한 안전기준 적합 여부를 확인하는 자기인증적합조사와 안전 운행에 지장을 주는 지 여부를 확인하는 안전결함조사가 있으며, 자기인증적합조사와 안전결함조사의 세부 내용은 다음과 같습니다.

						ㅇ 자기인증 적합조사
						- 자동차 제작.조립 수입자가 안전기준 등 자동차관리법령에 적합하게 자기인증하여 판매한 자동차에 대해, 정부가 시판중인 자동차를 구매하여 자동차관리법령에 적합하게 제작되었는지를 확인하는 조사입니다.

						ㅇ 안전결함조사
						- 안전결함조사는 안전사고 발생 가능성이 높거나 설계와 다르게 오작동 등 자동차 안전운행에 지장을 줄 수 있는 안전관련 결함 여부를 조사하는 제도입니다.

						* 자기인증적합조사 및 안전결함조사는 “자동차안전연구원”에서 시행합니다.</p>
					</div>
		            <i class="faq-toggle bi bi-chevron-right"></i>
		          </div><!-- End Faq item-->

		          <div class="faq-item">
		            <h3><img src="assets/img/qna.png" alt="">&nbsp<span>리콜시행전 자비로 수리한 부분에 대한 보상이 가능할까요?</span></h3>
		            <div class="faq-content">
		              <p>리콜보상제도는 자동차관리법 제31조의2에 따라 제작사가 자기인증하여 판매한 자동차에 결함이 발생한 경우 제작결함 시정전에 자동차 소유자가 자기비용으로 결함을 시정한 경우 이에 대한 비용을 제작자가 보상하는 제도입니다. 정부는 리콜보상제도를 2009년 3월부터 도입하였으며 자동차 소비자가 리콜시행 이전 1년간 지불한 비용을 증명할 수 있는 서류를 구비하여 제작자에 청구하시면 됩니다. 구비서류 1. 제134조제2항에 따른 별지 제89호의2서식의 자동차점검ㆍ정비내역서 2.「부가가치세법」에 따른 세금계산서 또는 영수증(신용카드매출전표를 포함한다) 3. 자동차등록증, 자동차 소유자의 신분증 및 입금통장 사본
						</p>
		            </div>
		            <i class="faq-toggle bi bi-chevron-right"></i>
		          </div><!-- End Faq item-->

		          <div class="faq-item">
		            <h3><img src="assets/img/qna.png" alt="">&nbsp<span>제가 자동차결함 신고를 하면 즉시 제작결함조사를 하나요?</span></h3>
		            <div class="faq-content">
		              <p>제작결함조사는 자동차의 기능 이상, 설계의도를 벗어난 오작동 등 자동차 안전운행에 지장을 줄 수 있는 안전도 관련 결함 여부를 확인하는 것입니다.제작결함조사와 관련하여 자동차제작결함정보전산망, 자동차제작결함신고전화 및 언론매체 등 다양한 채널을 통하여 정보를 수집하고 있습니다.

						수집된 정보는 주기적인 분석을 통하여 자동차제작결함조사여부를 판단하고 있으며 동일차종에서 동일 현상으로 다수의 결함 발생 여부 등을 분석하고 있습니다.

						이러한 분석자료를 바탕으로 제작결함조사를 실시하게 되므로 상당기간이 소요됨을 양해하시길 바랍니다
						</p>
					</div>
		            <i class="faq-toggle bi bi-chevron-right"></i>
		          </div><!-- End Faq item-->

		          <div class="faq-item">
		            <h3><img src="assets/img/qna.png" alt="">&nbsp<span>리콜(제작결함 시정) 사실은 어떻게 일반인에게 알려지나요?</span></h3>
		            <div class="faq-content">
		              <p>국토해양부는 리콜사실의 대국민 공개를 위해 리콜 결정시 언론에 보도자료를 공표하고, 제작사는 중앙일간지에 리콜사실을 고지하며, 자동차소유자에게는 리콜 우편통지를 통해 알려지도록 하고 있으며, 리콜현황을 「자동차결함신고센터(www.car.go.kr)」에서 항상 확인이 가능합니다.
						</p>
					  </div>
		            <i class="faq-toggle bi bi-chevron-right"></i>
		          </div><!-- End Faq item-->
				  
		          <div class="faq-item">
		            <h3><img src="assets/img/qna.png" alt="">&nbsp<span>자동차 리콜(recall)과 제조물책임제도(pl)의 차이가 무엇인가요?</span></h3>
		            <div class="faq-content">
		              <p>자동차 리콜제도는 자동차의 결함으로 인해 국민의 생명 및 재산손실이 발생하거나 발생 가능성이 있는 경우에 그 자동차를 제작ㆍ조립 또는 수입한 제작자 등이 결함 관련 사실을 소비자에게 통보하여 수리, 교환 또는 환불 등의 조치를 통해 안전과 관련된 사고 및 소비자 피해를 사전에 예방하고 재발을 방지하기 위한 제도입니다.
						제조물 책임(pl product liability) 제도는 제조업자(제조물 제조ㆍ가공 또는 수입을 업으로 하는 자)가 제조물의 결함으로 인하여 생명, 신체 또는 재산에 손해를 입은 자에게 그 손해를 배상토록 하는 손해배상 책임제도입니다.

						* 리콜과 제조물책임제도는 안전과 관련한 소비자 피해와 권익을 보호하는 측면에서는 공통점이 있지만, 소비자 피해보상제도와 제조물책임제도가 이미 발생한 소비자 피해에 대하여 제작자가 직접 보상해주는 사후보상 측면의 제도인데 반하여, 리콜제도는 결함제품을 제작자가 자발적 또는 정부에 의해 강제적으로 적절한 시정조치를 취하여 소비자 피해를 사전에 방지하는 사전적 예방 차원의 보다 적극적인 소비자보호 제도입니다.
					  </p>
					</div>
		            <i class="faq-toggle bi bi-chevron-right"></i>
		          </div><!-- End Faq item-->
				  
		          <div class="faq-item">
		            <h3><img src="assets/img/qna.png" alt="">&nbsp<span>리콜에는 자발적인 리콜과 강제적인 리콜이 있다고 하는데 차이점은 무엇인지요?</span></h3>
		            <div class="faq-content">
		              <p>국토해양부는 리콜사실의 대국민 공개를 위해 리콜 결정시 언론에 보도자료를 공표하고, 제작사는 중앙일간지에 리콜사실을 고지하며, 자동차소유자에게는 리콜 우편통지를 통해 알려지도록 하고 있으며, 리콜현황을 「자동차결함신고센터(www.car.go.kr)」에서 항상 확인이 가능합니다.</p>	
					  </div>
		            <i class="faq-toggle bi bi-chevron-right"></i>
		          </div><!-- End Faq item-->
				  
		          <div class="faq-item">
		            <h3><img src="assets/img/qna.png" alt="">&nbsp<span>리콜(제작결함 시정)명령은 어떤 방식으로 이루어지나요?</span></h3>
		            <div class="faq-content">
		              <p>자동차안전연구원의 제작결함조사 결과를 국토교통부장관 소속하에 구성된 제작결함심사평가위원회에서 심의 의결을 거쳐 리콜여부를 결정하며, 국토교통부의 청문을 실시한 다음 리콜명령을 하게 됩니다.

						* 제작결함심사평가위원회는 대학교수, 시민단체, 한국소비자원 등 20명으로 구성</p>
					</div>
					<i class="faq-toggle bi bi-chevron-right"></i>
		          </div><!-- End Faq item-->
				  
		          <div class="faq-item">
		            <h3><img src="assets/img/qna.png" alt="">&nbsp<span>제작결함 정보수집이란 무엇을 말하는 것인가요?</span></h3>
		            <div class="faq-content">
		              <p>제작결함 정보수집은 자동차 소유자, 소비자단체, 자동차결함신고센터(www.car.go.kr)등을 통해 자동차 결함 정보를 수집하여 일정기간동안 동일문제에 대한 발생 빈도 및 지속성 등을 수집하는 행위를 말합니다.
						</p>
					  </div>
		            <i class="faq-toggle bi bi-chevron-right"></i>
		          </div><!-- End Faq item-->
				  
		          <div class="faq-item">
		            <h3><img src="assets/img/qna.png" alt="">&nbsp<span>제 차를 교환 또는 환불받고 싶은데 가능한가요?</span></h3>
		            <div class="faq-content">
		              <p>새로 구매한 차량의 교환·환불에 대해서는 신차 교환·환불 e만족(adr.katri.or.kr)에서 도움을 받으시길 바랍니다. 아울러, 자동차 수리·교환 과정 중에 발생한 문제 등 신고인 개별사안에 대해서는 한국소비자원(kca.go.kr ☎1372)를 이용해 피해구제 등의 도움을 받으시길 바랍니다.
						</p>
					  </div>
		            <i class="faq-toggle bi bi-chevron-right"></i>
		          </div><!-- End Faq item-->

		        </div>

		      </div>
		    </div>

		  </div>

		</section><!-- /Faq Section -->

  
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
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>

    <script>
		$(document).ready(function() {
		          $('.notice-title').click(function() {
		              $(this).next('.notice-content').slideToggle(200);
		          });
		      });
    </script>
</body>

</html>