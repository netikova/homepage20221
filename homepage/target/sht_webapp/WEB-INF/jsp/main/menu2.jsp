<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <nav> 
   
       <ul id="menu-nav">
             
                <li><a href="/index.do#intro" ></a></li>
                <li><a href="/index.do#content1">우리술정의</a></li>
                <!-- <li><a href="#education">EDUCATION</a></li> -->
                <li><a href="/index.do#content2">술의종류</a></li>
                <li><a href="/index.do#content3">서비스</a></li>
                <li><a href="/index.do#content4">술전시관</a></li>                        
                <li id="board2"><a href="/board2/selectList.do">갤러리</a></li> 
                <li id="board"><a href="/board/selectList.do">게시판</a></li>     
                <!-- <li id="member"><a href="asdfdsf.sdfdsf" target = "_blank">JOIN</a></li> -->
                
                <li id="login">
                <c:choose>
				   <c:when test="${empty USER_INFO.id}">
				      <a href="/login/egovLoginUsr.do" class="login">로그인</a>
				   </c:when>
				   <c:otherwise>
				       <a href="/login/actionLogout.do"><c:out value="${USER_INFO.name}">님 로그아웃</c:out></a>				      
				   </c:otherwise>
				</c:choose>
				</li>
                <%-- <a href='${pageContext.request.contextPath}/member/add.do'>회원추가</a> --%>                             
      </ul>
   
  </nav>    
</body>
</html>