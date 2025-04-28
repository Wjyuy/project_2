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
</head>
<body>
    <h3>리콜 정보 출력</h3>
    <div class="wrap"></div>
</body>
</html>
