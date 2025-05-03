<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		    <h2>신고인 및 자동차 정보 입력</h2>
		    <form action="insertDefect" method="post" class="uk-form-stacked">
	
				<hr margin:auto >
			<table class="uk-table uk-table-divider table-form valickTbl1"  style="margin-left:30%;margin-bottom:10%">
			        <caption>신고인 정보 입력 폼</caption>
			        <colgroup>
			            <col class="th">
			            <col class="td">
			        </colgroup>
			        <tbody>
			        	<tr>
			                <th class="th">신고인<i class="ion-ios7-checkmark-empty"></i></th>
			                <td class="td">	
			                	<input type="text" id="name" name="reporter_name" class="uk-input uk-form-width-medium" >
			                	
			              		<input type="hidden" id="sex" name="sex" value="F">
			            		<input type="hidden" id="ipAddress" name="ipAddress" value="1.220.191.166">
			                </td>
			            </tr>
			            <tr>
			                <th class="th">생년월일(8자리)<i class="ion-ios7-checkmark-empty"></i></th>
			                <td class="td">
			                	<input id="residentId" name="birth_date" class="uk-input uk-form-width-medium" type="text" maxlength="7" placeholder="예)9901011" >
			                </td>
			            </tr>
<!--			            <tr>-->
<!--			                <th class="th">휴대폰번호<i class="ion-ios7-checkmark-empty"></i></th>-->
<!--			                <td class="td phone">-->
<!--								<select id="cellular1" name="mobile_number1" class="uk-select">-->
<!--									<option value="010">010</option>-->
<!--									<option value="011">011</option>-->
<!--									<option value="016">016</option>-->
<!--					 				<option value="017">017</option>-->
<!--									<option value="019">019</option>-->
<!--								</select>-->
<!--								<span><input type="number" name="mobile_number2"  pattern="\d*" id="cellular2" min="0" maxlength="4" oninput="maxLengthCheck(this)" class="uk-input reqed" title="핸드폰번호"></span>-->
<!--								<span><input type="number" name="mobile_number3" pattern="\d*" id="cellular3" min="0" maxlength="4" oninput="maxLengthCheck(this)" class="uk-input reqed" title="핸드폰번호"></span>-->
<!--								<input type="number" id="mobile_number" name="mobile_number" >-->
<!--							</td>-->
<!--			            </tr>-->
						<tr>
						  <th class="th">휴대폰번호<i class="ion-ios7-checkmark-empty"></i></th>
						  <td class="td phone">
						    <!-- 사용자 입력용 -->
						    <input type="text" id="cellular_display" oninput="formatAndStorePhone()" maxlength="13" class="uk-input reqed" placeholder="예: 01012345678">
						    
						    <!-- 서버 전송용 -->
						    <input type="hidden" id="mobile_number" name="mobile_number">
						  </td>
						</tr>
						
						<tr>
						  <th class="th">전화번호</th>
						  <td class="td phone">
						    <!-- 사용자 입력용 -->
						    <input type="text" id="telephone_display" oninput="formatAndStoreTelephone()" maxlength="13" class="uk-input" placeholder="예: 0212345678">
						    
						    <!-- 서버 전송용 -->
						    <input type="hidden" id="phone_number" name="phone_number">
						  </td>
						</tr>
						
<!--			            <tr>-->
<!--			                <th class="th">전화번호</th>-->
<!--			                <td class="td phone">-->
<!--								<input id="phone" type="number" name="phone_number1" pattern="\d*" min="0" maxlength="3" oninput="maxLengthCheck(this)" class="uk-input">-->
<!--								<span><input id="telephone2" type="number" name="phone_number2" pattern="\d*" min="0" maxlength="4" oninput="maxLengthCheck(this)" class="uk-input"></span>-->
<!--								<span><input id="telephone3" type="number" name="phone_number3" pattern="\d*" min="0" maxlength="4" oninput="maxLengthCheck(this)" class="uk-input"></span>-->
<!--							</td>-->
<!--			            </tr>-->
<!--			            <tr>-->
							<th class="th">주소<i class="ion-ios7-checkmark-empty"></i></th>
							<td class="td addr">
<!--								<p><input id="zipcode" name="zipcode" class="uk-input uk-form-width-medium reqed" title="주소" type="text" readonly="">-->
<!--								<button type="button" id="zipcodeBtn" onclick="javascript:daumPostcode()" class="uk-button uk-button-secondary">우편번호 찾기</button></p>-->
								<input id="addrBase" name="address" class="uk-input uk-form-width-large" type="text" placeholder="기본주소" >
<!--								<input id="addrDetail" name="address" class="uk-input uk-form-width-large" title="상세주소" type="text" placeholder="상세주소를 입력해주세요" maxlength="70">-->
							</td>
						</tr>
								<input type="hidden" id="emailAddress" name="emailAddress">
				
								<input type="hidden" name="mailYn" value="N">
						<tr>
							<th class="th">공개여부</th>
							<td class="td radio">
								<label for="podCk1"><input id="podCk1" name="visibility" class="uk-radio" type="radio" value="true" checked=""> 공개</label>
								<label for="podCk2"><input id="podCk2" name="visibility" class="uk-radio" type="radio" value="false"> 비공개</label>
							</td>
						</tr>

						<tr class="layerPasswd">
			                <th class="th">비밀번호<i class="ion-ios7-checkmark-empty"></i></th>
			                <td class="td"><input id="password" name="password" oninput="validatePassword()" class="uk-input uk-form-width-medium reqed" title="비밀번호" type="password">
							<span id="password-msg" class="uk-text-meta" style="color: red;"></span><br>
			                <span class="uk-text-meta">비밀번호는 9~15자의 영문/숫자/특수문자(~, !, @, #, $, *, (, ), =, +, _, ., |) 혼용만 가능합니다.</span></td>
			            </tr>
			        </tbody>
			      </table>

				<table class="uk-table uk-table-divider table-form valickTbl2" style="margin-left:30%;margin-bottom:10%">
			    <h2>자동차 정보 입력</h2>
				<hr>
			        <caption>자동차 정보 입력 폼</caption>
			        <colgroup>
			            <col class="th">
			            <col class="td">
			        </colgroup>
			        <tbody>
			            <tr class="layer0">
							<th class="th">신고유형<i class="ion-ios7-checkmark-empty"></i></th>
							<td class="td radio"><!-- 자동차, 이륜, 건설기계 -->
							
							
							
								<label for="dCk1"><input id="dCk1" name="report_type" class="uk-radio" type="radio" value="A" checked=""> 자동차</label>
								<label for="dCk2"><input id="dCk2" name="report_type" class="uk-radio" type="radio" value="B"> 이륜</label>
							
							
							</td>
						</tr>                   
						
			        	<tr>
			                <th class="th">자동차 등록번호<i class="ion-ios7-checkmark-empty"></i></th>
			                <td class="td">
			                	<input id="vehicleNumber" name="car_registration_number" class="uk-input uk-form-width-medium" onkeydown="if(event.keyCode==13) $main.event.vehicleNumberSearch();" type="text" placeholder="예 )서울00나0000">
								
							</td>
			            </tr> 
						<tr>
	                        <th class="th">자동차 모델명<i class="ion-ios7-checkmark-empty"></i></th>
	                        <td class="td"><input id="car_model" name="car_model" class="uk-input uk-form-width-medium" type="text" ></td>
                    	</tr>
						<tr>
	                        <th class="th">자동차 제조사<i class="ion-ios7-checkmark-empty"></i></th>
	                        <td class="td"><input id="car_manufacturer" name="car_manufacturer" class="uk-input uk-form-width-medium" type="text" ></td>
                    	</tr>
						<tr>
	                        <th class="th">제조일자<i class="ion-ios7-checkmark-empty"></i></th>
	                        <td class="td"><input id="car_manufacturing_date" name="car_manufacturing_date" class="uk-input uk-form-width-medium" type="date" ></td>
                    	</tr>
						</table>
						
		
	     
	    
      </form>
    </div>
  </section>
</main>

<footer id="footer" class="footer accent-background">
	<div class="text-center">
<!--			<button type="submit" class="btn btn-primary"  onclick="document.querySelector('form').submit(); margin-left:10px >자동차 결함 신고</button>-->
			<button type="button" class="btn btn-primary" onclick="document.querySelector('form').submit();">
			  자동차 결함 신고
			</button>
	</div>			
	
</footer>

<script src="../../vendors/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/main.js"></script>
<script>
function formatAndStorePhone() {//휴대전화번호 스크립트
  const input = document.getElementById("cellular_display");
  const hidden = document.getElementById("mobile_number");

  // 숫자만 추출
  let raw = input.value.replace(/[^0-9]/g, '');

  // 하이픈 표시용 포맷
  let formatted = raw;
  if (raw.length <= 3) {
    formatted = raw;
  } else if (raw.length <= 7) {
    formatted = raw.slice(0, 3) + '-' + raw.slice(3);
  } else {
    formatted = raw.slice(0, 3) + '-' + raw.slice(3, 7) + '-' + raw.slice(7, 11);
  }

  input.value = formatted;

  // 전송할 값: 하이픈 제거하거나 포함해도 됨
  hidden.value = formatted; // or: hidden.value = raw;
}

function formatAndStoreTelephone() {//전화번호 스크립트
  const input = document.getElementById("telephone_display");
  const hidden = document.getElementById("phone_number");

  let raw = input.value.replace(/[^0-9]/g, '');

  // 지역번호가 02이면 (2자리), 그 외는 3자리로 처리
  let isSeoul = raw.startsWith('02');
  let formatted = raw;

  if (isSeoul) {
    if (raw.length <= 2) {
      formatted = raw;
    } else if (raw.length <= 6) {
      formatted = raw.slice(0, 2) + '-' + raw.slice(2);
    } else {
      formatted = raw.slice(0, 2) + '-' + raw.slice(2, 6) + '-' + raw.slice(6, 10);
    }
  } else {
    if (raw.length <= 3) {
      formatted = raw;
    } else if (raw.length <= 7) {
      formatted = raw.slice(0, 3) + '-' + raw.slice(3);
    } else {
      formatted = raw.slice(0, 3) + '-' + raw.slice(3, 7) + '-' + raw.slice(7, 11);
    }
  }

  input.value = formatted;
  hidden.value = formatted; // or: raw
  }
</script>

<script>
function validatePassword() {
  const passwordInput = document.getElementById("password");
  const msgSpan = document.getElementById("password-msg");
  const password = passwordInput.value;

  const specialChars = "~!@#$*()=+_.|";
  const escapedSpecialChars = specialChars.replace(/[-[\]/{}()*+?.\\^$|]/g, '\\$&');

  const regex = new RegExp(
    "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[" + escapedSpecialChars + "])[A-Za-z\\d" + escapedSpecialChars + "]{9,15}$"
  );

  if (password.length === 0) {
    msgSpan.textContent = "";
    passwordInput.style.borderColor = "";
    return;
  }

  if (!regex.test(password)) {
    msgSpan.textContent = "조건에 맞지 않는 비밀번호입니다.";
    passwordInput.style.borderColor = "red";
    msgSpan.style.color = "red";
  } else {
    msgSpan.textContent = "사용 가능한 비밀번호입니다.";
    passwordInput.style.borderColor = "green";
    msgSpan.style.color = "green";
  }
}
</script>



</body>
</html>
