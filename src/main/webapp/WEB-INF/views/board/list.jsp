<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>


<script type="text/javascript">
	
	$(document).ready(function() {
		
		
		
		var actionForm = $("#actionForm");
		$(".pagination a").click(function(e) {
			e.preventDefault();
			
			actionForm.find("[name='pageNum']").val($(this).attr('href'));
			
			actionForm.submit();
		});
		
		
		$(".move ").click(function(e){
			e.preventDefault();
			
			actionForm.append("<input type='hidden' name='board_bno' value='"+$(this).attr("href")+"'>");
			actionForm.attr("action", "/board/read");
			
			actionForm.submit();
		});
		
		var searchForm = $("#searchForm");
		$("#searchForm button").click(function(e){
			if(!searchForm.find("[name='keyword']").val()){
				alert("검색 키워드를 입력하세요");
				return false;
			}
			
			e.preventDefault;
			searchForm.find("[name='pageNum']").val("1");
			
			searchForm.submit();
			
		});
		
		$("button[data-oper='register']").click(function(e){
			
			actionForm.attr("action", "/board/register");
			actionForm.submit();
			
			
		});
	});

</script>


<title>Insert title here</title>
</head>
<body>

<!-- board -->
<div class="container-sm">
  <div class="row">
    <table class="table table-striped table-hover">
    	<thead>
    		<tr>
    			<th>번호</th>
    			<th>제목</th>
    			<th>작성자</th>
    			<th>작성일</th>   		
    		</tr>    		    		
    	</thead>
    	
    	<tbody>
    	<c:forEach items="${list }" var="boardVO">
    		<tr>
    			<td>${boardVO.board_bno }</td>
    			<td>
    				<a class="move" href="<c:out value='${boardVO.board_bno}'/>">
    					<c:out value="${boardVO.board_title }"/>
    				</a>
    			</td>
    			<td>${boardVO.board_id }</td>
    			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${boardVO.board_regdate}"/><td>
    		</tr>		    			
    	</c:forEach>
    	
    	</tbody>
    	
    	
	</table>
	<div class="btn-group btn-group-lg">
  		<button data-oper="register" type="button" class="btn btn-secondary">글쓰기</button>
	</div>
			
  </div>
 </div>
 

			

 
 
 <!-- searchForm -->
 <div class="container-sm mt-3">
	<div class="row justify-content-center">
	
	<form id="searchForm" action="/board/list">
		<select name='type' id="type">
			<option value="T" <c:out value="${pageInfo.board_Criteria.type eq 'T' ? 'selected' : '' }"/>>제목</option>
			<option value="I" <c:out value="${pageInfo.board_Criteria.type eq 'I' ? 'selected' : '' }"/>>아이디</option>
			<option value="N" <c:out value="${pageInfo.board_Criteria.type eq 'N' ? 'selected' : '' }"/>>게시물번호</option>
		</select>
		<input type="text" name="keyword" value='<c:out value="${pageInfo.board_Criteria.keyword }"/>'>
		<input type="hidden" name="pageNum" value="${pageInfo.board_Criteria.pageNum }">
		<input type="hidden" name="amount" value="${pageInfo.board_Criteria.amount }">
		<input type="hidden" name="day" value="${pageInfo.board_Criteria.day }">
	
		<button class="btn btn-secondary">검색</button>
	</form>
	
	</div>
</div>
 
 
 
 
 <!-- pagination -->
 <div class="container-sm mt-3">
	<div class="row justify-content-center">
		<ul class="pagination">
		
		<!-- prev -->
		<c:if test="${pageInfo.prev }">
			<li class="paginate_button previous"><a href="${pageInfo.startPage-10 }">이전</a></li>
		</c:if>
		
		<!-- pageButton -->
		<c:forEach var="num" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
			<li class="paginate_button ${pageInfo.board_Criteria.pageNum == num ? 'active' :'' }"><a href="${num }">${num }</a></li>
		</c:forEach>
		
		<!-- next -->
		<c:if test="${pageInfo.next }">
			<li class="paginate_button next"><a href="${pageInfo.startPage+10 }">다음</a></li>
		</c:if>
		</ul>
	</div>
</div>



<div class="d-none">
	<form id="actionForm" action="/board/list">
		<input type="hidden" name="pageNum" value="${pageInfo.board_Criteria.pageNum }">
		<input type="hidden" name="amount" value="${pageInfo.board_Criteria.amount }">
		<input type="hidden" name="type" value="${pageInfo.board_Criteria.type }">
		<input type="hidden" name="keyword" value="${pageInfo.board_Criteria.keyword }">
		<input type="hidden" name="day" value="${pageInfo.board_Criteria.day }">
		
		<input type="submit" />
	</form>	
</div>






</body>
</html>