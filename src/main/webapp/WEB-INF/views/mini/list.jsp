<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
	

<!--  
<script type="text/javascript">
	$(document).ready(function(){
		var actionForm = $("#actionForm");
		$(".box weekly a").click(function(e) {
			e.preventDefault();
			
			actionForm.find("[name='day']").val($(this).attr('href'));
			
			actionForm.submit();
		});
	});
</script>
-->
<title>Insert title here</title>
</head>
<body>

<!--  
<div id="container" class="container">
	<div class="box daily">
		<ul class="item corner" id="list">
			<li>
			<span>월</span>
			<a class="test" href="1">월</a>
			</li>
			<li>
			<span>화</span>
			<a href="2">화</a>
			</li>
			<li>
			<span>수</span>
			<a href="3">수</a>
			</li>
			<li>
			<span>목</span>
			<a href="4">목</a>
			</li>
			<li>
			<span>금</span>
			<a href="5">금</a>
			</li>
			<li>
			<span>토</span>
			<a href="6">토</a>
			</li>
			<li>
			<span>일</span>
			<a href="7">일</a>
			</li>
		</ul>
	</div>
</div>

<form id="actionForm" action="${root }/board/list">
	<input type="hidden" name="day" value="1">
	<input type="submit"/>
</form>
-->







<div class="header2">
        <nav class="header-nav">
           <ul class="navbar-nav">
		      <li class="nav-item active">
	       		 <a class="nav-link" href="/member/register">회원가입 <span class="sr-only">(current)</span></a>
	      	</li>
	      <sec:authorize access="isAnonymous()">
		      <li class="nav-item">
		        <a class="nav-link" href="/customLogin">로그인</a>
		      </li>
	      </sec:authorize>
	      
	      <sec:authorize access="isAuthenticated()">
		      <li class="nav-item">
	      	<form action="/logout" method="post">
		        <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
		        <button type="submit" class="btn btn-outline-dark btn-sm">로그아웃</button>
	      	</form>
		      </li>
	      </sec:authorize>
		   
		    </ul>
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
       		<jsp:include page="/resources/include/mini.jsp"/>
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