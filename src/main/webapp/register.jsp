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

<style type="text/css">
	 body {
	background-image: url("../resources/pic/background.jpg");
	background-size: contain;
	}	
	
	.nav-menu {
   	   display: flex;
   	   text-decoration: none;
   	   color: white;   	  
       padding: 10px 30px 10px 30px;
   }
   
   .nav-menu:hover {
   	   text-decoration: none;
   }
</style>
<script>
var appRoot = '${root}';

$(document).ready(function() {
	$("#pictureRoom-submit-btn1").click(function(e) {
		e.preventDefault();
		$(this)
		 .attr("disabled", "disabled")
		 .html('<i class="fas fa-spinner fa-spin"></i>');
		
		var formData = new FormData($("#pictureRoom-form1")[0]);
		
		$.ajax({
			url: appRoot + '/picroom/register',
			type: 'POST',
			data: formData,
	        cache: false,
	        contentType: false,
	        enctype: 'multipart/form-data',
	        processData: false
		 })
		 .done(function() {
			console.log("성공"); 
			$("#pictureRoom-modal-body1").text("새 글을 등록하였습니다.");
			$("#pictureRoom-modal1").modal("show");
			$("#pictureRoom-submit-btn1").removeAttr("disabled");
		 })
		 .fail(function() {
			console.log("실패");
			$("#pictureRoom-modal-body1").text("등록 실패하였습니다.");
			$("#pictureRoom-modal1").modal("show");
		 });
	});
});
</script>
<title>Insert title here</title>
</head>
<body>

<div class="header2">
        <nav class="header-nav">
            <a href="" style="text-decoration: none; color:white; align-items: center; display: flex;">회원가입</a>
        </nav>
    </div>
    <div class="wrapper">  

        <div class="header">
            <h1><a class="moon" href="${root }">Moon's radio</a></h1>
        </div> 

        <div class="nav">
              <jsp:include page="/resources/include/main_nav.jsp" />                  
        </div>

        <div class="corner">     
             <jsp:include page="/resources/include/main_corner.jsp" />  
        </div> 
        
        
        <div class="weekday">
            <jsp:include page="/resources/include/main_dayintro.jsp" />
        </div>  
        					

       <div class="main">
       		<div class="container-fluid">
<form id="pictureRoom-form1" action="${root }/picroom/register" method="post" enctype="multipart/form-data">
 	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}"/> 
  <div class="form-group">
    <label for="pictureRoom-input1">제목</label>
    <input name="title" type="text" class="form-control" id="pictureRoom-input1">
  </div>
  <div class="form-group">
    <label for="pictureRoom-textarea1">내용</label>
    <textarea name="content" class="form-control" id="pictureRoom-textarea1" rows="3"></textarea>
  </div>
   <div class="form-group">
    <label for="pictureRoom-file1">사진</label>
    <input type="file" name="file" accept="image/*" class="form-control-file" id="pictureRoom-file1">
  </div>
  <input type="hidden" name="memberId" value="abc"/>
  <button id="pictureRoom-submit-btn1" type="submit" class="btn btn-primary">등록</button>
</form>
</div>

<%-- modal --%>
<!-- Modal -->
<div id="pictureRoom-modal1" class="modal fade" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">새글 등록</h5>
      </div>
      <div id="pictureRoom-modal-body1" class="modal-body">
        새 글을 등록하였습니다.
      </div>
      <div class="modal-footer">
        <a href="${root }/picroom/list" class="btn btn-primary">목록</a>
      </div>
    </div>
  </div>
</div>
       </div>
       
       <div class="empty1">

       </div>
        
    </div>
    
    <div class="footer">
        <footer>
            footer
        </footer>
    </div>
    


</body>
</html>