<%@page import="kr.bit.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.bit.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//ArrayList<MemberVO> list = (ArrayList<MemberVO>)request.getAttribute("list");
%>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deleteFn(num) {
		location.href="${ctx}/memberDelete.do?num="+num;
	
	}
</script>
</head>
<body>
MVC04
<table class="table table-bordered">
  <tr>
    <td>번호</td>
    <td>아이디</td>
    <td>비밀번호</td>
    <td>이름</td>
    <td>나이</td>
    <td>이메일</td>
    <td>전화번호</td>
    <td>삭제</td>
  </tr>
  <c:forEach var="vo" items="${list }">
      <tr>
        <td>${vo.num }</td>
        <td><a href="${ctx }/memberContent.do?num=${vo.num }">${vo.id }</a></td>
        <td>${vo.pass }</td>
        <td>${vo.name }</td>
        <td>${vo.age }</td>
        <td>${vo.email }</td>
        <td>${vo.phone }</td>
        <td><input type="button" value="삭제" class="btn btn-warning"onclick="deleteFn(${vo.num })"></td>
      </tr>  
    </c:forEach>
  <tr>
  <td colspan="8" align="right"><input type="button" value="회원가입" class="btn btn-primary"onclick="location.href='${ctx }/memberRegister.do'"/></td>
  </tr>
</table>
</body>
</html>