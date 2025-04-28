<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>리콜 정보</title>
</head>
<body>
    <h3>차량 리콜 정보</h3>
    <form action="/recall" method="get">
        <label for="vehicleNumber">차량 번호:</label>
        <input type="text" name="vehicleNumber" id="vehicleNumber" />
        <input type="submit" value="리콜 정보 검색" />
    </form>
    
    <c:if test="${not empty recallData}">
        <div>
            <h4>리콜 정보:</h4>
            <pre>${recallData}</pre>
        </div>
    </c:if>
</body>
</html>
