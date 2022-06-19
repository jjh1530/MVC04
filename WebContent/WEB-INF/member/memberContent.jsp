<%@page import="kr.bit.model.MemberVO"%>
<%@page import="kr.bit.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
<form action="${ctx }/memberUpdate.do" method="post">
<input type="hidden" name="num" value="${vo.num }"/>
<table class="table table-bordered">
<c:if test="${vo!=null}">
	<tr>
		<td colspane ="2">${vo.name } 회원의 상세보기</td>
	</tr>
	<tr>
		<td>번호</td>
		<td>${vo.num }</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>${vo.id }</td>
	</tr>
	<tr>
		<td>패스워드</td>
		<td>${vo.pass }</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${vo.name }</td>
	</tr>
	<tr>
		<td>나이</td>
		<td><input type="text" name="age" value="${vo.age }"/></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email" value="${vo.email }"/></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="phone" value="${vo.phone }"/></td>
	</tr>
</c:if>

	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="수정" class="btn btn-primary"/>
			<input type="reset" value="취소" class="btn btn-warning"/>
			<input type="button" value="목록" class="btn" onclick="location.href='${ctx }/memberList.do'"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>