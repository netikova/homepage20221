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
              
                <li><a href="#intro" class="scroll_move">홈</a></li>
                <li><a href="#content1" class="scroll_move">우리술정의</a></li>
                <!-- <li><a href="#education">EDUCATION</a></li> -->
                <li><a href="#content2" class="scroll_move">술의종류</a></li>
                <li><a href="#content3" class="scroll_move">술의특징</a></li>
                <li><a href="#content4" class="scroll_move">술전시관</a></li>                        
                <li id="board2"><a href="/board2/selectList.do">갤러리</a></li> 
                <li id="board"><a href="/board/selectList.do">게시판</a></li>     
                <!-- <li id="member"><a href="asdfdsf.sdfdsf" target = "_blank">JOIN</a></li> -->
                
                <li id="login">
                <c:choose>
				   <c:when test="${empty USER_INFO.id}">
				      <a href="/login/egovLoginUsr.do" class="login">로그인</a>
				   </c:when>
				   <c:otherwise>
				       <a href="/login/actionLogout.do" class="logout"><c:out value="${USER_INFO.name} 님 로그아웃"></c:out></a>				      
				   </c:otherwise>
				</c:choose>
				</li>
                <%-- <a href='${pageContext.request.contextPath}/member/add.do'>회원추가</a> --%>
                  <!-- <a href="/member/insert.do" class="member2">회원추가</a> -->
                          
            </ul>   
           
     </nav>   
     
     
</body>
</html>