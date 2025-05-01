<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.uploadResult{
		width: 100%;
		background-color: gray;
	}
	.uploadResult ul{
		display: flex;
		flex-flow: row;
	}
	.uploadResult ul li{
		list-style: none;
		padding: 10px;
	}
	.uploadResult ul li img{
		width: 20px;
	}
</style>
<!-- 	<script src="../resources/js/jquery.js"></script> -->
	<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script type="text/javascript">
		function fn_submit() {
			alert("01");
			var formData = $("#frm").serialize();//form 요소 자체
			alert("02");
			
			//비동기 전송방식의 jquery 함수
			$.ajax({
				 type:"post"
				,data:formData
				,url:"write"
				,success: function(data) {
					alert("저장완료");
					location.href="list";
				}
				,error: function() {
					alert("오류발생");
				}
			});
		}
	</script>
</head>
<body>
	<table width="500" border="1">
<!-- 		<form method="post" action="write"> -->
		<!-- <form id="frm"> -->
		<form id="frm" method="post" action="defect_list">
			신청이 완료 되었습니다 *>ㅡ<*
			<tr>
				<td colspan="2">
					<button type="submit">이동</button>
					&nbsp;&nbsp;
					<a href="defect_reports">뒤로가기</a>
					<a href="defect_details_check">관리자 페이지 이동 8~8</a>
					
				</td>
			</tr>
		</form>
	</table>

	</body>







