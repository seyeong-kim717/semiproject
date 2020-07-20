<%@page import="test.dao.bulletin_dao"%>
<%@page import="test.dto.bulletin_dto"%>
<%@page import="java.util.List"%>
<%@page import="test.memberdto.MemberDto"%>
<%@page import="test.memberdao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = (String)session.getAttribute("id");
	MemberDao dao = MemberDao.getInstance();
	MemberDto dto = dao.getData(id);
	
	List<bulletin_dto> list=bulletin_dao.getInstance().getLine();
	
	
	String url= request.getRequestURI();  // 현재 url 을  저장함
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/make.css" />
</head>

<body>


<jsp:include page="/include/navbar.jsp">
	<jsp:param value="index" name="thisPage"/>
</jsp:include>



 

<div class="container">
	<!--  콘테이너안에  div 9-3 으로 나눈 양식 입니다. 들여쓰기 해주세요
		
		
		
		<div class="row">
    		<div class="col-sm-9">
    		  	값 넣기
    		</div>
			
    		<div class="col-sm-3">
 				값 넣기
    		</div>
  		</div>	
	  -->
	
	<div class="row">
    		<div class="col-sm-9">
    		  	<div class="row">
   					 <div class="col-sm">
    					  <div class="card" >
 						 	<div class="card-header">
  								최신 <span style="color:red;"><string >HOT</string></span> 게시글 순위
 			 				</div>
 								<ul class="list-group">
									  								<li class="list-group-item d-flex justify-content-between align-items-center">
   									메가젠임플란트 대표이기도 한 대구 미르치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    에 상당히 도움이 될만한 
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 Cras justo odio
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 에 상당히 도움이 될만한 
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								</ul>
						</div>
    				</div>
    				<div class="col-sm">
    					  <div class="card" >
 						 	<div class="card-header">
  								최신 <span style="color:red;"><string >HOT</string></span> 게시글 순위
 			 				</div>
 							<ul class="list-group">
  								<li class="list-group-item d-flex justify-content-between align-items-center">
   									메가젠임플란트 대표이기도 한 대구 미르치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    에 상당히 도움이 될만한 
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 Cras justo odio
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 에 상당히 도움이 될만한 
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								</ul>
						</div>
   				 	</div>
 				 </div>
 				 
 				 
 				 <nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">유머</a>
    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">이슈</a>
    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">정보</a>
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
 	<div class="row">
 		<div class="col-4">
    		<div class="card" id = "card1-img">
  				<img src="${pageContext.request.contextPath}/images/colon.png" class="card-img-top" alt="무슨파일인지설명">
 			 	<ul class="list-group">
  					<li class="list-group-item d-flex justify-content-between align-items-center">
   						메가젠임플란트 대표이기도 한 대구 미르치
   						 <span class="badge badge-primary badge-pill">14</span>
  					</li>
  				</ul>
			</div>
    	</div>
    	<div class="col-8">
 <div class="card" id ="card1" >
 							<ul class="list-group">
  								<li class="list-group-item d-flex justify-content-between align-items-center">
   									메가젠임플란트 대표이기도 한 대구 미르치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    에 상당히 도움이 될만한 
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 Cras justo odio
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 에 상당히 도움이 될만한 
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								</ul>
						</div>
    	</div>
  	</div>	
  							
  </div>
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
  <div class="card"id ="card2" >
 						 	
 							<ul class="list-group">
  								<li class="list-group-item d-flex justify-content-between align-items-center">
   									메가젠임플란트 대표이기도 한 대구 미르치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    에 상당히 도움이 될만한 
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 Cras justo odio
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 에 상당히 도움이 될만한 
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								</ul>
						</div>
  </div>
  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
  <div class="card" id ="card3" >
 						 	
 							<ul class="list-group">
  								<li class="list-group-item d-flex justify-content-between align-items-center">
   									메가젠임플란트 대표이기도 한 대구 미르치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    에 상당히 도움이 될만한 
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 Cras justo odio
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 에 상당히 도움이 될만한 
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								</ul>
						</div>
  </div>
</div>
 				 <div class="row">
    			<div class="col-sm">
    				<div class="card" >
 						 	<div class="card-header">
  								 <span style="color:red;"><string >유머</string></span> 게시판
 			 				</div>
 							<ul class="list-group">
							 	<%for(int i=0; i<list.size(); i++) {
							 		bulletin_dto tmp = list.get(i);
							 		%>
									
								<li class="list-group-item d-flex justify-content-between align-items-center">
									<a href="funny/funny.jsp?num=<%=tmp.getNum()%>"><%=tmp.getBulletin_title() %></a>
								</li>	
								<%} %>
							</ul>
						</div>
    			
    			</div>
    			<div class="col-sm">
    				<div class="card" >
 						 	<div class="card-header">
  								최신 <span style="color:red;"><string >HOT</string></span> 게시글 순위
 			 				</div>
 							<ul class="list-group">
  								<li class="list-group-item d-flex justify-content-between align-items-center">
   									메가젠임플란트 대표이기도 한 대구 미르치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    에 상당히 도움이 될만한 
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 Cras justo odio
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 에 상당히 도움이 될만한 
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								</ul>
						</div>
    		
    			</div>
   				 <div class="col-sm">
    				<div class="card" >
 						 	<div class="card-header">
  								최신 <span style="color:red;"><string >HOT</string></span> 게시글 순위
 			 				</div>
 							<ul class="list-group">
  								<li class="list-group-item d-flex justify-content-between align-items-center">
   									메가젠임플란트 대표이기도 한 대구 미르치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    에 상당히 도움이 될만한 
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 Cras justo odio
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 에 상당히 도움이 될만한 
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">14</span>
  								</li>
 								 <li class="list-group-item d-flex justify-content-between align-items-center">
   									 범 원장이 문자메시지를 이용, 동료치
   									 <span class="badge badge-primary badge-pill">2</span>
  								</li>
								  <li class="list-group-item d-flex justify-content-between align-items-center">
								    Morbi leo risus
								    <span class="badge badge-primary badge-pill">1</span>
								  </li>
								</ul>
						</div>
    			
    			</div>
  			</div> 
  			<br /><!-- 두번째줄끝 -->
  			
 			<div class="row">
    			<div class="col-sm">
    				<div class="card" >
 						 <div class="card-header">
  						LOL
 			 			</div>
 						 <div class="card-body">
                        <p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                    	</div>
					</div>
    			
    			</div>
    			<div class="col-sm">
    				<div class="card" >
 						  <div class="card-header">
  						 배틀그라운드
 			 			</div>
 						 <div class="card-body">
                       			<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                    	</div>
					</div>
    		
    			</div>
   				 <div class="col-sm">
    				<div class="card" >
 						  <div class="card-header">
  						 FIFA Online
 			 			</div>
 						 <div class="card-body">
                        		<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                    	</div>
					</div>
    			
    			</div>
  			</div> 
  			<br /><!-- 세번째줄끝 -->
  			<div class="row">
    			<div class="col-sm">
    				<div class="card" >
 						 <div class="card-header">
  						축구
 			 			</div>
 						 <div class="card-body">
                        <p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                      		 	<p>운영체제가 Android 입니다.</p>
                    	</div>
					</div>
    			
    			</div>
  			</div>
		</div>
    	<div class="col-sm-3">
    	
    	
			
			
			<!-- 
			<div class="login-box well" >
                <form accept-charset="UTF-8" role="form" method="post" action="member/login.jsp">
                    <legend>로그인</legend>
                    <div class="input-group"  style="margin-bottom: 1em;"">
                        <span class="input-group-addon" ><i class="fa fa-user"></i></span>
                        <input type="text" name ="id"id="id" value='' placeholder="ID를 입력하세요" class="form-control" />
                    </div>
                    <div class="input-group" style="margin-bottom: 1em;">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password" name ="pwd"id="pwd" value='' placeholder="비밀번호를 입력하세요" class="form-control" />
                    </div>
                    <button type="submit"  class="btn btn-default btn-block bg-light" style="margin-bottom: 1em;"/>로그인</button>
                    
                </form>
               	
               	<form action="member/signup_form.jsp" method ="post">
               		<button type="submit"  class="btn btn-default btn-block bg-light" style="margin-bottom: 1em;"/>회원가입</button>
               	</form>	  
                </div>
			 -->
 		<!-- 로그인 폼 시작 -->
 

 				<jsp:include page="include/loginstatus.jsp"> 
 					<jsp:param value="<%=url %>" name="url"/>
 				</jsp:include>
    		
            
            
            
            </div>
            
      
        
    		</div>
  	</div>
	<jsp:include page="/include/footer.jsp">	
	<jsp:param value="index" name="thisPage"/>
	</jsp:include>
	

<!--  기존 로그인 폼
<div class="login-box well" >
                <form accept-charset="UTF-8" role="form" method="post" action="member/login.jsp">
                    <legend>로그인</legend>
                    <div class="input-group"  style="margin-bottom: 1em;"">
                        <span class="input-group-addon" ><i class="fa fa-user"></i></span>
                        <input type="text" name ="id"id="id" value='' placeholder="ID를 입력하세요" class="form-control" />
                    </div>
                    <div class="input-group" style="margin-bottom: 1em;">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password" name ="pwd"id="pwd" value='' placeholder="비밀번호를 입력하세요" class="form-control" />
                    </div>
                    <button type="submit"  class="btn btn-default btn-block bg-light" style="margin-bottom: 1em;"/>로그인</button>
                    
                </form>
               	
               	<form action="member/signup_form.jsp" method ="post">
               		<button type="submit"  class="btn btn-default btn-block bg-light" style="margin-bottom: 1em;"/>회원가입</button>
               	</form>	  
                </div>
<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★</-> -->


</body>
</html>