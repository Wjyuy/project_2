<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>신고 정보 입력</title>
  
  <meta content="width=device-width, initial-scale=1.0" name="viewport" content="width=device-width, initial-scale=1.0">

   <meta name="description" content="">
   <meta name="keywords" content="">

   <meta name="robots" content="noindex, nofollow">

   <!-- Favicons -->
   <link href="assets/img/favicon.png" rel="icon">
   <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

   <!-- Fonts -->
   <link href="https://fonts.googleapis.com" rel="preconnect">
   <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

   <!-- Vendor CSS Files -->
   <link href="../../vendors/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <link href="../../vendors/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
   <link href="../../vendors/aos/aos.css" rel="stylesheet">
   <link href="../../vendors/glightbox/css/glightbox.min.css" rel="stylesheet">
   <link href="../../vendors/swiper/swiper-bundle.min.css" rel="stylesheet">

   <!-- Main CSS File -->
   <link href="assets/css/main.css" rel="stylesheet">
	
   
 
</head>
<body class="index-page">

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
			
			<style type="text/css">
					   /* 자동완성 */
					   .auto_card_main {
					       position: absolute;
					       top: 70px;
					       left: 0;
					       width: calc(100% - 60px);
					       background-color: #fff;
					       z-index: 10;
					       text-align: left;
					       box-shadow: rgba(39, 45, 40, 0.3) 5px 5px 10px;
					       padding: 30px;
					       border: 1px solid #0297d6;
					   }

					   .auto_card_main li a {
					       font-size: 16px;
					       font-weight: 300;
					       line-height: 1.75;
					       text-align: left;
					       color: #333333;
					   }

					   .auto_card_main ul {
					       margin-bottom: 0;
					   }

					   .auto_card_main li a span {
					       color: #0297d6;
					   }
					   </style>
					   
					   <style>
					   @keyframes highlight {
					     0%   { box-shadow: 0 0 0px rgba(255, 165, 0, 0); }
					     50%  { box-shadow: 0 0 10px rgba(255, 165, 0, 0.8); }
					     100% { box-shadow: 0 0 0px rgba(255, 165, 0, 0); }
					   }

					   .blink-highlight {
					     animation: highlight 1s ease-in-out;
					   }
					   </style>


		  </header>

<main class="main">
	
	<div class="container" data-aos="fade-up" data-aos-delay="100">
	
	<!-- Section Title -->
	<div class="container section-title" data-aos="fade-up">
	  <h2>Contact</h2>
	  <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
	</div><!-- End Section Title -->

	<div class="container" data-aos="fade-up" data-aos-delay="100">
	
		<section id="formSection" class="contact section">
		  <div class="container d-flex flex-column align-items-center justify-content-center text-center" style="max-width: 900px;" data-aos="fade-up">
		    <h2>리콜 정보 입력</h2>
		    <form action="insertDefectDetails" method="post" class="uk-form-stacked">
	
				<hr margin:auto >
			<table class="uk-table uk-table-divider table-form valickTbl1"  style="margin-left:30%;margin-bottom:10%">
			        <caption>관리자 정보 입력 폼</caption>
			        <colgroup>
			            <col class="th">
			            <col class="td">
			        </colgroup>
			        <tbody>
						
			        	<tr>
			                <th class="th">아이디<i class="ion-ios7-checkmark-empty"></i></th>
			                <td class="td">	
								
			                	<input type="text" id="id" name="id" class="uk-input uk-form-width-medium"   placeholder="아이디를 입력하세요">
<!--			                	<input type="text" id="id" name="id" class="uk-input uk-form-width-medium" readonly="" value="${dto.id}">-->
								
<!--			                	버튼 클릭시 select 쿼리로 검색 가능하게 끌어오게끔-->
<!--			                	<input type="hidden" id="id" name="id" class="uk-input uk-form-width-medium" disabled>-->
								<button type="button" class="btn btn-primary" onclick="searchDefect()" >
										검색
								</button>
								
								
			                </td>
			            </tr>
						
						
			            <tr>
			                <th class="th">리콜정보<i class="ion-ios7-checkmark-empty"></i></th>
			                <td class="td">
								<select id="recallinfo" name="product_name1" class="uk-select">
									<option value="볼보">볼보</option>
									<option value="마세라티">마세라티</option>
									<option value="016">벤츠</option>
					 				<option value="017">볼보트럭</option>
									<option value="019">현대자동차</option>
								</select>
			                	<input id="product_name" name="product_name" class="uk-input uk-form-width-medium" type="text" maxlength="7" placeholder="예)계기판 관련 리콜" >
			                </td>
			            </tr>
						
						<tr>
	                        <th class="th">자동차 제조사<i class="ion-ios7-checkmark-empty"></i></th>
	                        <td class="td">
								<input id="manufacturer" name="manufacturer" class="uk-input uk-form-width-medium" type="text" placeholder="예)볼보 자동차 코리아" readonly >
							</td>
	                	</tr>
									
						<tr>
						    <th class="th">기간<i class="ion-ios7-checkmark-empty"></i></th>
						    <td class="td">
						        <input id="start_date" class="uk-input uk-form-width-small" type="date" onchange="updatePeriodDisplay()">
						        ~
						        <input id="end_date" class="uk-input uk-form-width-small" type="date" onchange="updatePeriodDisplay()">
						        <span id="period_display" style="margin-left: 10px; font-weight: bold;"></span>
						        <input type="hidden" name="manufacturing_period" id="manufacturing_period">
						    </td>
						</tr>
						
						<tr>
		                    <th class="th">자동차 모델명<i class="ion-ios7-checkmark-empty"></i></th>
		                    <td class="td">
								<input id="model_name" name="model_name" class="uk-input uk-form-width-medium" type="text" >
							</td>
		            	</tr>
						
						<tr>
		                    <th class="th">리콜 형식<i class="ion-ios7-checkmark-empty"></i></th>
<!--		                    <td class="td"><input id="car_model" name="car_model" class="uk-input uk-form-width-medium" type="text" value="자발적리콜" readonly="" ></td>-->
		                    <td class="td"><input id="recall_type" name="recall_type" class="uk-input uk-form-width-medium" type="text" value="자발적리콜" readonly="" ></td>
		            	</tr>
						
						<tr>
						    <th class="th">회사(대표번호)<i class="ion-ios7-checkmark-empty"></i></th>
						    <td class="td">
						        <select id="company_select" name="contact_info1" class="uk-select" onchange="updateContactInfo()">
						            <option value="">회사 선택</option>
						            <option value="[볼보자동차]">[볼보자동차]</option>
						            <option value="[마세라티]">[마세라티]</option>
									<option value="[벤츠코리아]">[벤츠코리아]</option>
					 				<option value="[볼보트럭]">[볼보트럭]</option>
									<option value="[현대자동차]">[현대자동차]</option>
						        </select>
								<input id="contact_info" name="contact_info" type="hidden">
						        <input id="contact_number" name="contact_info" class="uk-input uk-form-width-medium" type="text" maxlength="7" placeholder="예)볼보자동차 대표번호 1588-1777" oninput="updateContactInfo()">
								
						    </td>
						</tr>
						
						<tr>
		                    <th class="th">상세 결함<i class="ion-ios7-checkmark-empty"></i></th>
		                    <td class="td"><input id="additional_info" name="additional_info" class="uk-input uk-form-width-medium" type="text" ></td>
		            	</tr>

			</table>
      </form>
    </div>
  </section>
</main>



<script src="../../vendors/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/main.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>//id값 조회해서 맞는 값 가져오기
	function searchDefect() {
	    var id = $('#id').val(); // input에서 ID 값 가져오기

	    if (!id) {
	        alert("아이디를 입력해 주세요.");
	        return;
	    }

	    $.ajax({
	        url: '/api/selectDefectreport',  // API 호출
	        type: 'GET',
	        data: { id: id },  // id 값 전달
	        success: function(data) {
	            if (data) {
	                // 데이터가 있으면 input 필드에 값 채워넣기
	                $('#id').val(data.id);  // ID 필드 값
	                $('#manufacturer').val(data.car_manufacturer);  // 제조사 필드 값
	                $('#model_name').val(data.car_model);  // 모델명 필드 값
	            } else {
	                alert("해당 ID의 데이터를 찾을 수 없습니다.");
	            }
	        },
	        error: function() {
	            alert("데이터를 가져오는 중 오류가 발생했습니다.");
	        }
	    });
	}	
	
</script>

<script>
	// 날짜를 yyMMdd 형식으로 변환하는 함수
	function formatDateToYYMMDD(dateStr) {
	    const date = new Date(dateStr);
	    const year = String(date.getFullYear()).slice(2);  // 연도의 뒤 두 자리
	    const month = String(date.getMonth() + 1).padStart(2, '0');  // 두 자리 월
	    const day = String(date.getDate()).padStart(2, '0');  // 두 자리 일
		
		console.log("Date object:", date);
		console.log("Year:", date.getFullYear());
		console.log("Month:", date.getMonth() + 1);  // 0-based
		console.log("Day:", date.getDate());
		console.log("total:", year+month+day);
		

	    return year+month+day;  // 'yyMMdd' 형식 반환
	}

	function updatePeriodDisplay() {
	    const start = document.getElementById('start_date').value;
	    const end = document.getElementById('end_date').value;
	    const display = document.getElementById('period_display');
	    const hiddenInput = document.getElementById('manufacturing_period');  // 히든 필드
		
		// start_date와 end_date 값이 제대로 입력되었는지 로그로 확인
		console.log("start_date:", start);
		console.log("end_date:", end);

	    // 날짜 값이 모두 입력되었을 때만 period 값을 설정
	    if (start && end) {
	        const startFormatted = formatDateToYYMMDD(start);  // 시작일 포맷팅
	        const endFormatted = formatDateToYYMMDD(end);      // 종료일 포맷팅

	        const period = startFormatted+"~"+endFormatted;  // 기간 결합
<!--	        display.textContent = period;  // 화면에 출력-->
	        hiddenInput.value = period;    // 히든 필드에 값 설정
			
			// 포맷팅된 기간 확인 로그
			     console.log("formatted period:", period);
	    } else {
	        display.textContent = '';  // 기간이 없으면 표시 안 함
	        hiddenInput.value = '';    // 히든 필드 초기화
	    }
	}

	// 날짜 입력 변경 시마다 실행
	document.getElementById('start_date').addEventListener('change', updatePeriodDisplay);
	document.getElementById('end_date').addEventListener('change', updatePeriodDisplay);

	// 폼 제출 전에 값 강제로 다시 한 번 세팅
	document.querySelector('form').addEventListener('submit', function(e) {
	    updatePeriodDisplay();  // 폼 제출 전에 히든 값 세팅
	    console.log("제출 시 히든값:", document.getElementById('manufacturing_period').value);  // 제출 시 히든 값 확인
	});
</script>

<script>// 마지막 날짜 클릭 스크립트
  document.getElementById('start_date').addEventListener('change', () => {
    const endDateInput = document.getElementById('end_date');
    endDateInput.classList.add('blink-highlight');
    setTimeout(() => {
      endDateInput.classList.remove('blink-highlight');
    }, 1000);
  });
</script>

<script>// 회사(대표번호) 스크립트 
    const contactNumbers = {
        "[볼보자동차]": "1588-1777",
        "[마세라티]": "1600-0036",
        "[벤츠코리아]": "080-001-1886",
        "[볼보트럭]": "080-038-1000",
        "[현대자동차]": "080-600-6000",

    };

    document.getElementById('company_select').addEventListener('change', function() {
        const selectedCompany = this.value;
        const numberInput = document.getElementById('contact_number');
		const hiddenInput = document.getElementById('contact_info');

        if (contactNumbers[selectedCompany]) {
            numberInput.value = contactNumbers[selectedCompany];
        } else {
            numberInput.value = ''; // 선택 안 됐거나 없는 값이면 초기화
        }
		
		hiddenInput.value = selectedCompany +" 대표번호 : "+ numberInput.value;
		//최종 값넘길때의 형태
    });
</script>





<footer id="footer" class="footer accent-background">

	<button type="button" class="btn btn-primary" onclick="document.querySelector('form').submit();">
		검수 완료
	</button>
	
</footer>



</body>
</html>
