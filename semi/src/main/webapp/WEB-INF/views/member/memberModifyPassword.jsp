<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<link href='/css/common.css' rel='stylesheet' />
<!DOCTYPE html>
<html>
<head>
<script>
	$(document).ready(function(){
		$("#btnLogin").click(function(){
			const password = $("#password").val();
			const newPassword = $("#newPassword").val();
			
			if(password == ""){
				alert("현재 비밀번호를 입력하세요");
				$("#password").focus(); //입력포커스 이동
				return; // 함수 종료.
				}
			if(newPassword ==""){
				alert("새로운 비밀번호를 입력하세요");
				$("#newPassword").focus(); //입력포커스 이동
				return; // 함수 종료.
			}
			
			const sessionPassword = '<%=(String)session.getAttribute("password") %>';
			
			if(password != sessionPassword){
				alert("password가 일치하지 않습니다.");
				console.log(password + " "+sessionPassword);
				$("#password").focus(); //입력포커스 이동
				return;
			}
			
			console.log("기존 비번 :" +password + "새로운 비번 : "+newPassword);
			// 폼 내부의 데이터를 전송할 주소
			//document.form1.action = "${path}/admin/MemberloginCheck"
			// 제출
			document.form1.submit();
		});
	});


</script>


<meta charset="UTF-8">
<style type="text/css">
* {
	box-sizing: border-box;
}

input {
	width: 384;
	height: 57;
	border-radius: 10px;
	border: 1px solid #c4c4c4;
	font-size: 18px;
	padding: 10px 15px;
	margin: 8px 0px;
}

.control>input {
	background-color: white;
	border: 1px solid #c4c4c4;
	border-radius: 5px;
	margin-top: 30px;
}

.text_center {
	text-align: center;
}

label {
	font-size: 18px;
}
</style>
<title>헤더</title>
</head>
<body>

 	
    <c:forEach var="memberInfo" items="${memberInfoList}">
    
		<form action="${contextPath}/member/updatePassword" name="form1" method="post">
			<h1 class="text_center">비밀 번호 수정</h1>
			<table  align="center">
			   
			   <tr class="tblRow">
			      
			      <td width="400"><input type="hidden" name="id" value=${memberInfo.id}></input> </td>
			   </tr>
			   <tr>
			      <td width="200"><label for="password">현재 비밀번호</label></td>
			      <td width="400"><input type="password" id="password" name="password" value=""></td>
			   </tr>
			   <tr>
			      <td width="200"><label for="newPassword">새 비밀번호</label></td>
			      <td width="400"><input type="password" id="newPassword" name="newPassword" value=""></td>
			   </tr>
			   
			    <tr>
			       <td width="200"><p>&nbsp;</p></td>
			       <td width="400"><input type="button" id="btnLogin" value="수정하기"></input>
			       					<input type="reset" value="다시입력"></td>
			    </tr>
			</table>
		</form>
	
	</c:forEach>
	
	
	
	 </body>
</html>