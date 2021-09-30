<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<!-- 검색창 - 관리자만 볼 수 있음 -->
	<c:if test="${admin == 1 }">
	<form action="qna/questionlist?qwriter=${qwriter }" method="get">
		<input type="text" name="keyword" value="${btnMaker.cri.keyword }" placeholder="작성자 아이디를 입력해주세요"/>
		<input type="submit" value="검색"/>
	</form>
	</c:if>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>No</th>
				<th>유형</th>
				<th>제목</th>
				<th>본문</th>
				<th>작성자</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${vo }" var="vo">
				<tr>
					<td>${vo.qnum }</td>
					<td>${vo.qtype }</td>
					<td><a href="/qna/getquestion?qnum=${vo.qnum }">${vo.qtitle }</a></td>
					<td>${vo.qcontent }</td>
					<td>${vo.qwriter }</td>
					<td>${vo.qdate  }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 페이징 처리 -->
	<nav aria-label="...">
	  <ul class="pagination justify-content-center">
	  	<c:if test="${btnMaker.prev }">
		    <li class="page-item">
		      <a class="page-link" href="/qna/questionlist?qwriter=${qwriter }&pageNum=${btnMaker.startPage - 1 }&keyword=${btnMaker.cri.keyword }">Previous</a>
		    </li>
		</c:if>
		<c:forEach var="pageNum" begin="${btnMaker.startPage }" end="${btnMaker.endPage }">
		    <li class="page-item ${btnMaker.cri.pageNum == pageNum ? 'active' : '' }">
		    	<a class="page-link"href="/qna/questionlist?qwriter=${qwriter }&pageNum=${pageNum }&keyword=${btnMaker.cri.keyword}">${pageNum }</a>
		    </li>
		</c:forEach>
		<c:if test="${btnMaker.next }">
		    <li class="page-item">
		      <a class="page-link" href="/qna/questionlist?qwriter=${qwriter }&pageNum=${btnMaker.endPage + 1 }&keyword=${btnMaker.cri.keyword }">Next</a>
		    </li>
		</c:if>
	  </ul>
	</nav>
	${btnMaker }
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
</html>