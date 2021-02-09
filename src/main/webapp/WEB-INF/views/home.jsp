<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    body {
        
        background-image: url('pexels-john-walker-827898.jpg');
        background-size: cover;
        
    }
   .wrapper{      
        margin: 0 10% 0 10%;
        display: grid;
        grid-gap: 15px;
        height: 100%;
        grid-template-columns: 1fr 1fr 1fr 1fr ;
        grid-template-rows:  200px 50px 80px 150px 200px 200px;
        grid-template-areas: 'header header header header'
                             'nav nav nav nav'
                             'today today today today'
                             'coner weekday SNS every'
                             'list weekday listener every'
                             'list radio empty2 empty1'                            
   }
   .wrapper div{
        border-radius: 5px 5px;      
        text-align: inherit;
        display: grid;
   }
   .header{
        grid-area: header;
        color: thistle;
   }
   .nav{
        background-color: snow;
        grid-area: nav;
   }
   .today{
        background-color: snow;
        grid-area: today;
   }
   .coner{
        background-color: snow;
        grid-area: coner;
   }
   .list{
        background-color: snow;
        grid-area: list;
   }
   .weekday{
        background-color: snow;
        grid-area: weekday;
   }
   .radio{
        background-color: snow;
        grid-area: radio;
   }
   .listener{
        background-color: snow;
        grid-area: listener;
   }
   .SNS{
        background-color: snow;
        grid-area: SNS;
   }
   .empty1 {
        grid-area: empty1;
   }
   .empty2 {
        grid-area: empty2;
   }
   .every{
        background-color: snow;
        grid-area: every;
   }
   
   
   button {      
        padding-left: 30px;
        padding-right: 30px;
        border: none;
        outline: none;
        border-radius: 5px 5px;
        background-color: thistle; 
        color: white;
   }
   button:hover {
       
       cursor: pointer;
   }
   .nav .nav-flex {
       display: flex;
       padding-left: 30px;
       padding-right: 30px;
       border: none;
       outline: none;
       border-radius: 5px 5px;
       align-items: center;
       justify-content: center;
       background-color: thistle;
       
   }
   .title {
       padding: 10px 10px 0px 10px;
   }

   .header h1 {
       text-align: center;
       margin-top: 80px;
   }

   .header2 .header-nav{
       display: flex;
       background-color: black;
       height: 40px;
       justify-content: flex-end;
   }

   .header2 .header-nav .header-button {
       background-color: black;
   }

   .footer{
       height: 200px; 
       background-color: rgb(216, 161, 88);
       margin-top: 30px;
       width: 100%;
   }

   i {
       color: grey;
       margin-right: 5px;
   }
   .everyDay li {
       padding: 0px 5px 10px 20px;
   }

   .week {
       background-color: black;
       color: white;
   }

   ul {
       margin: 10%;
   }

   ul li{
       padding: 10px;
   }
</style>
<script>  
</script>
<body>  
    <div class="header2">
        <nav class="header-nav">
            <a href="">회원가입</a>
            <button class="header-button" type="button">로그인</button>
        </nav>
    </div>
    <div class="wrapper">  

        <div class="header">
            <h1>Moon's radio</h1>
        </div> 

            <div class="nav">
                <div class="nav-flex">               
                        <button type="button">mini메시지</button>
                        <button type="button">선곡표</button>
                        <button type="button">사연과 신청곡</button>
                        <button type="button">다시듣기</button>                   
                </div>                
            </div>

        <div class="today">
            <strong class="title">today</strong> |
        </div>
        
        <div class="coner">     
            <strong class="title"><i class="far fa-list-alt"></i>매일코너</strong>
                <ul class="everyDay" style="list-style: none; position: relative;">
                    <li><i class="fas fa-caret-right"></i></li>
                    <li><i class="fas fa-caret-right"></i></li>
                    <li><i class="fas fa-caret-right"></i></li>
                </ul>    
        </div>
        
        <div class="list">
            <strong class="title" style="overflow: scroll; overflow-x: hidden "><i class="far fa-list-alt"></i>선곡표</strong>
        </div>
        
        <div class="weekday">
            <strong class="title"><i class="far fa-list-alt"></i>요일코너</strong>
                <ul style="list-style: none;">
                    <li><span class="week">월</span></li>                   
                    <li><span class="week">화</span></li>
                    <li><span class="week">수</span></li>
                    <li><span class="week">목</span></li>
                    <li><span class="week">금</span></li>
                    <li><span class="week">토</span></li>
                    <li><span class="week">일</span></li>
                </ul>
        </div>

        <div class="radio">
            <strong class="title">보이는라디오</strong>
        </div>

        <div class="listener">
            <strong class="title">다시듣기</strong>           
        </div>

        <div class="SNS">
            <strong class="title">sns</strong>
        </div>

        <div class="empty1">empty</div>
        <div class="empty2">empty</div>

        <div class="every">
            <strong class="title">홍보</strong>
        </div>   
       
    </div>   
    <div class="footer">
        <footer>
            footer
        </footer>
    </div>
</body>
</html>
 