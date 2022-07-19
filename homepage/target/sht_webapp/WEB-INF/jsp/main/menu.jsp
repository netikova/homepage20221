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
                <li><a href="#content3" class="scroll_move">서비스</a></li>
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
				       <a href="/login/actionLogout.do"><c:out value="${USER_INFO.name}">님 로그아웃</c:out></a>				      
				   </c:otherwise>
				</c:choose>
				</li>
                <%-- <a href='${pageContext.request.contextPath}/member/add.do'>회원추가</a> --%>
                          
            </ul>   
           
     </nav>   
     
      <div class="section">
        <input type="radio" name="slide" id="slide01" checked>
        <input type="radio" name="slide" id="slide02">
        <input type="radio" name="slide" id="slide03">
        <div class="slidewrap">
            
            <ul class="slidelist">
                <!-- 슬라이드 영역 -->
                <li class="slideitem">
                    <a>
                        <div class="textbox">
                            <h3>첫번째 슬라이드</h3>
                            <p>첫번째 슬라이드 입니다.</p>
                        </div>
                        <img src="images/traditional.jpg" style="width:100%" height="700px">
                    </a>
                </li>
                <li class="slideitem">
                    <a>
                        
                        <div class="textbox">
                            <h3>두번째 슬라이드</h3>
                            <p>두번째 슬라이드 입니다.</p>
                        </div>
                        <img src="images/traditional2.jpg"  style="width:100%" height="700px">
                    </a>
                </li>
                <li class="slideitem">
                    <a>
                        
                        <div class="textbox">
                            <h3>두번째 슬라이드</h3>
                            <p>두번째 슬라이드 입니다.</p>
                        </div>
                        <img src="images/traditional3.jpg"  style="width:100%" height="700px">
                    </a>
                </li class="slideitem">
    
                <!-- 좌,우 슬라이드 버튼 -->
                <div class="slide-control">
                    <div>
                        <label for="slide03" class="left"></label>
                        <label for="slide02" class="right"></label>
                    </div>
                    <div>
                        <label for="slide01" class="left"></label>
                        <label for="slide03" class="right"></label>
                    </div>
                    <div>
                        <label for="slide02" class="left"></label>
                        <label for="slide01" class="right"></label>
                    </div>
                </div>
    
            </ul>
            <!-- 페이징 -->
            <!-- <ul class="slide-pagelist">
                <li><label for="slide01"></label></li>
                <li><label for="slide02"></label></li>
                <li><label for="slide03"></label></li>
            </ul> -->
        </div>
    
        
    </div>    
</body>
</html>