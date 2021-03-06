<%@page import="java.net.URLEncoder"%>
<%@page import="test.memberdao.MemberDao"%>
<%@page import="java.util.List"%>
<%@page import="test.memberdto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String keyword=request.getParameter("keyword"); //검색 키워드
	String condition=request.getParameter("condition"); //검색 조건
	if(keyword==null){//전달된 키워드가 없다면 
		keyword=""; //빈 문자열을 넣어준다. 
		condition="";
	}
	//인코딩된 키워드를 미리 만들어 둔다. 
	
	
	//검색 키워드와 startRowNum, endRowNum 을 담을 bulletin_dto 객체 생성
	
	   MemberDto dto=new MemberDto();
   		dto.setId(condition);
   		dto.setNick(keyword);
  	 List<MemberDto> list=null;
  	 
   if(keyword.equals("userAllCheck")){
      list=MemberDao.getInstance().getList();
   }else{
      if(!keyword.equals("")){  
         dto.setNick(keyword);
         list=MemberDao.getInstance().getListnick(dto);
      }else{
         list=MemberDao.getInstance().getListnick(dto);
      }   
   }

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/admin/admin.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/make.css" />

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</head>
<body>

<jsp:include page="/include/navbar.jsp">
	<jsp:param value="index" name="thisPage"/>
</jsp:include>


<div class="container">
	<h1>관리자 페이지 입니다</h1>
	<form action="admin_page.jsp" method="get">
		<label for="keyword">닉네임 :</label>
		<input value="<%=keyword%>" type="text" name="keyword" placeholder="검색어..."/>
		<button type="submit">검색</button>
	</form>
	<table class="table table-bordered table-hover">
		<thead class="thead-light">
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>닉네임</th>
				<th>이메일</th>
				<th>가입일자</th>
				<th>설정</th>
			</tr>
		</thead>
		<tbody style="font-size:0.8em;">
			<%for(MemberDto tmp : list){%>
			<tr>
				<th><%=tmp.getId() %></th>
				<td><%=tmp.getPwd() %></td>
				<td><%=tmp.getNick() %></td>
				<td><%=tmp.getEmail() %></td>
				<td><%=tmp.getRegdate() %></td>
				<td>	
					<div>
						<%if(tmp.getIsStop()==0){ %>
						<a class="btn btn-primary" href="admin_control.jsp?data=<%=tmp.getId() %>&select=정지&keyword=<%=keyword%>">정지</a>
						<%}else if(tmp.getIsStop()==1){ %>
						<a class="btn btn-warning" href="admin_control.jsp?data=<%=tmp.getId() %>&select=정지&keyword=<%=keyword%>">정지</a>
						<%} %>
						<a class="btn btn-danger" href="admin_control.jsp?data=<%=tmp.getId() %>&select=탈퇴">탈퇴</a>
					</div>
				</td>
			</tr>
			<%} %>
		</tbody>
	</table>
</div>

<jsp:include page="/include/footer.jsp">
	<jsp:param value="index" name="thisPage"/>
</jsp:include>

</body>
</html>