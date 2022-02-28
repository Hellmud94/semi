<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<!DOCTYPE html>
<html>
<head>



<meta charset="UTF-8">
<style type="text/css">
	img {
		width: 200px;
		height: 200px;
	}
	table {
		margin: auto;
	}
	#empty {
		width: 100px;
	}
	#radius {
	height: 40px;
	color: white;
	background-color: gray;
	border-radius: 0px 0px 10px 10px;
	}
	
	button {
		width: 384;
		height: 57;
		border-radius: 10px;
		border: 1px solid #c4c4c4;
		font-size: 18px;
		padding: 10px 15px;
		margin: 8px 0px;
	}
	butto:hover{
		cursor: pointer;
    	opacity: 0.8;
    	background-color:pink;
	}
	
</style>
<title>헤더</title>
</head>
<body>
	
            <td></td>
            <td id="radius"><button type="button" onclick="location.href='${contextPath}/member/memberUpdate'">개인정보수정</button></td>
			<td></td>
            <td id="radius"><button type="button" onclick="location.href='${contextPath}/member/memberUpdatePassword'">비밀번호 수정</button></td>
       


</body>
</html>