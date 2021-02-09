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
	$(document).ready(function(e){
		
		var operForm = $("#operForm");
		$("button[data-oper='list']").click(function(e){
			
			operForm.attr("action", "/board/list");
			
			operForm.submit();
		});

		
		$("button[data-oper='modify']").click(function(e){
			operForm.append("<input type='hidden' name='board_bno' value='"+${boardVO.board_bno}+"'>");
			operForm.attr("action", "/board/modify");
			
			operForm.submit();
		});
		
		
		$("button[data-oper='delete']").click(function(e){
			operForm.append("<input type='hidden' name='board_bno' value='"+${boardVO.board_bno}+"'>");
			operForm.attr("method", "post");
			operForm.attr("action", "/board/delete");
			
			operForm.submit();
		});
		
		
		
		
		
		
		
	});
</script>
<title>Insert title here</title>
</head>
<body>
<div class="container-sm">
		<div class="row justify-content-center">
			<div class="col-lg-12">
				<h1>게시물 보기</h1>
			</div>
		</div>	
			
		<div class="row justify-content-center">
			<div class="col-lg-12">	
		

			<div class="form-group">
						<label for="input3">번호</label>
						<input class="form-control" type="text" id="input3" readonly value="${boardVO.board_bno }" />
			</div>
					
			<div class="form-group">
				<label for="input1">제목</label> <input readonly value='<c:out value="${boardVO.board_title}" />' type="text"
							class="form-control" id="input1" >
			</div>

			<div class="form-group">
					<label for="textarea1">내용</label>
					<textarea readonly class="form-control" id="textarea1"
							rows="3"><c:out value="${boardVO.board_content}" /></textarea>
			</div>

			<div class="form-group">
					<label for="input2">작성자</label> <input readonly 
						  value='<c:out value="${boardVO.board_id }" />' type="text"
					class="form-control" id="input2" >
			</div>
				
			<div class="form-group">
					<label for="input1">조회수</label> <input readonly 
					    value='<c:out value="${boardVO.board_read_cnt }" />' type="text"
						class="form-control" id="input1" >
			</div>
			</div>
			
		</div>
		
		
		<div class="btn-group btn-group-lg">
  			<button data-oper="list" type="button" class="btn btn-secondary">목록으로</button>
  			<button data-oper="modify" type="button" class="btn btn-light">수정하기</button>
  			<button data-oper="delete" type="button" class="btn btn-secondary">삭제하기</button>
		</div>
</div>

<div class="d-none">
	<form id="operForm" action="/board/list" method="get">
		<input type="hidden" name="pageNum" value="${board_Criteria.pageNum }">
		<input type="hidden" name="amount" value="${board_Criteria.amount }">
		<input type="hidden" name="type" value="${board_Criteria.type }">
		<input type="hidden" name="keyword" value="${board_Criteria.keyword }">
		<input type="hidden" name="day" value="${board_Criteria.day }">
		
		<input type="submit"/>
	</form>

</div>




</body>
</html>