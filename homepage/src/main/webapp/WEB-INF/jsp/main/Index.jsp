<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE heml>
<html>
<head>
<meta http-equiv="Content-Language" content="ko">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
<!-- 반응형태 --화면비율을 잡을거냐    접속한 device에 맞춰서 가로를 가져오고,   비율,       손가락으로 늘리고 줄이고의 최소값, 최대값,        사용자가 키울수 없게끔 하는 옵션  -->
<title>프로젝트명</title>
<link href="/asset/front/css/style.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

 <header>
        <!-- <div id = head_img>
            <img src="/asset/front/images/alcohol.jpg">
            <h1>전통 술</h1>
        </div> -->
                
    </header>
    <div id="container">
        
        <nav>
            <ul id="menu-nav">
                <li><a href="#intro">INTRO</a></li>
                <li><a href="#profile">PROFILE</a></li>
                <!-- <li><a href="#education">EDUCATION</a></li> -->
                <li><a href="#skill">SKILLS</a></li>
                <li><a href="#map">MAP</a></li>
                <li><a href="#contact">CONTACT</a></li>        
                <li id="member"><a href="asdfdsf.sdfdsf" target = "_blank">JOIN</a></li>
                <li id="login"><a href="http://localhost/index.do" target = "_blank">LOGIN</a></li>
            </ul>   
           
        </nav>
        <section id="intro"> 
                     
                    
        </section>
        <section id="content1">        
            <div class="content1_text">
                <h1>우리술의 정의</h1>                
            </div>            
            <div id="definition">
                <div id="box1"><img src="/asset/front/images/alcohol1_1.jpg">
                    <div id="box1_text">
                        <h2>법적정의</h2>
                        '전통주 등의 산업진흥에 관한 법률'에 따라 다음에 해당하는 술을 말한다.<br><br>
                        <hr width = "100%" color = "black">
                        <br>❶주류부문의 무형문화재 보유자가 제조한 술<br>
                        ❷대한민국 식품명인이 제조한 술<br>
                        ❸농어업경영체 또는 생산자단체가 지역농산물을 주원료로 제조한 술 <br>&nbsp;&nbsp;&nbsp;&nbsp;(지역특산주)<br>
                    </div>
                </div>
                <div id="box2"><img src="/asset/front/images/alcohol2-1.jpg">
                    <div id="box2_text">
                        <h2>관습적의미</h2>
                        <hr width = "100%" color = "black">
                        <br>한 나라나 지역 등에 과거에서부터 이어져오는 양조법으로 만든 술로, <br>전통적인 양조법을 계승 및 보존하여 빚는 술을 칭한다.<br>

                        한국의 정서 및 시대상을 반영하는 술로서 과거의 생활방식, <br> 역사와 문화가 담겨있는 술로 정의할 수 있다.
                    </div>
                </div>
                </div>
            </div>
        </section>
        <section id="content2">
            <div class="content2_text">
                <h1> 술의 종류</h1>
                술은 숙성을 발효하여.....
            </div>
          <ul class="icons">
            <li>
                <div class="icon_img">
                    <img src="/asset/front/images/soju.jpg">
                </div>
                <div class="icons_text1"><h3>증류주</h3></div>
                <div class="icons-text2">
                    이 술은...전통적으로....
                </div>
                <div class="more">
                    MORE
                </div>
            </li>
            <li>
                <div class="icon_img">
                    <img src="/asset/front/images/mak.jpg">
                </div>
                <div class="icons_text1"><h3>양조주</h3></div>
                <div class="icons-text2">
                    이 술은...전통적으로....
                </div>
                <div class="more">
                    MORE
                </div>
            </li>
            <li>
                <div class="icon_img">
                    <img src="/asset/front/images/me.jpg">
                </div>
                <div class="icons_text1"><h3>혼성주</h3></div>
                <div class="icons-text2">
                    이 술은...전통적으로....
                </div>
                <div class="more">
                    MORE
                </div>
            </li>
          </ul>
        </section>
        <section id="content3">
            <h1> 서비스 </h1>
          <div class="content3_text1">
                술의 유통 과정은 지역마다.....
          </div>
            <div class="service">
              <div class="alcohol_photo">
                <img src="/asset/front/images/alcohol4.jpg">
              </div>
              <div class="content3_text2">
                 <h2>이것은 전통 술로써, 술이야?</h2>
                 가나다라마바사아자차카타파하 가s나다라마바사아자차카타파하<br>
                 가나다라마바사아자차카타파하 가나다라마바사아자차카타파하<br>
                 가나다라마바사아자차카타파하 가나다라마바사. <br><br>

                 가나다라마바사아자차카타파하 가나다라<br>
                 가나다라마바사아자차카타파하. <br>
                 가나다라마바사아자차카타파하 가나다라마바사아자차카타파하<br>
                 가나다라마바사아자차카타파하 가나다라마바사아자차카타파하<br>
              </div>   
            </div>         
        </section>
        <section id="content4">
            <h1>링크</h1>
           <div class="content4_text1">
                술 제조 지역...
           </div>
           <div class="location">
             <a href="https://www.sulmuseum.kr:444/index.9is?contentUid=ff8080814d980555014d9848fea30054" target = "_blank"><img src="/asset/front/images/icon-alcohol.png"></a>
             <a href="http://urisul.net/"><img src="/asset/front/images/icon-alcohol.png" target = "_blank"></a>
             <a href="https://blog.naver.com/bambi_0202/222162396117" target = "_blank"><img src="/asset/front/images/icon-alcohol.png"></a>            
            </div>
        </section>
        <footer class="footer">
            <div>한국 폴리텍 대학</div>
            <div>
                CEO. JAEWOO <br>
                Addr. 대전광역시 동구 우암로 352-21 한국 폴리텍 대학 <br>TEL 042-1234-5678 FAX 042-1234-5678 <br>
                COPYRIGHT 2010 BY KOREA POLYTECHNICS. ALL RIGHTS RESERVED.
            </div>
        </footer>
    </div>
  <c:choose>
    <c:when test="${empty USER_INFO.id}">
       <a href="/login/egovLoginUsr.do" class="login">로그인</a>
    </c:when>
    <c:otherwise>
        <a href="/login/actionLogout.do"><c:out value="${USER_INFO.name}"/>님 로그아웃</a>
    </c:otherwise>
 </c:choose> 
 
 <div class="dim"></div>
 <!--  로그인 -->
 <div class="layer-popup layer-login" style="display:none;">
    <header class="layer-header">
        <span class="logo">
            <span class="img-logo">한국폴리텍대학 대전캠퍼스 스마트소프트웨어학과</span>
        </span>
        <button type="button" class="layer-close"><span>팝업닫기</span></button>
    </header>
    <div class="layer-body">
        <form action="/login/actionLogin.do" id="frmLogin" name="frmLogin" method="post" onsubmit="return vali()">
            <input type="hidden" name="userSe" value="USR" />
            <fieldset>
                <legend>로그인을 위한 아이디/비밀번호 입력</legend>
                <div class="ipt-row">
                   <input type="text" id="loginId" name="id" placeholder="아이디" required="required">
                </div>
                <div class="ipt-row">
                   <input type="password" id="loginPw" name="password" placeholder="비밀번호" required="required">
                </div>
                <button type="submit" class="btn-login"><span>로그인</span></button>
            </fieldset>
         </form>
    </div>
 </div>
 
 <script>
 $(document).ready(function(){
	 //로그인
	  $(".login").click(function(){
			 $(".dim, .layer-login").fadeIn();
			 return false;
		 });
	 
	 //레이어닫기
     $(".layer-close").click(function(){
    	 $(".dim, .layer-login").fadeOut();
    	 return false;
     });
});	 
 
function vali(){
	if(!$("#loginId").val()){
		alert("아이디를 입력해주세요.");
		$("#loginId").focus();
		return false;
	}
	
	if(!$("#loginPw").val()){
		alert("비밀번호를 입력해주세요.");
		$("#loginPw").focus();
		return false;
	}
}

<c:if test="${not empty loginMessage}">
    alert("${loginMessage}");
</c:if>

 </script>
</body>
</html>         
          