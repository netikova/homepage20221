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
<link href="/asset/front/css/slide.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src='https://code.jquery.com/jquery-1.12.4.min.js'></script><script  src="/asset/front/js/script.js"></script>


</head>
<body>

 <div id="container">     
	    <%@ include file="/WEB-INF/jsp/main/header.jsp" %>  
      <section id="intro">    
        
         <%@ include file="/WEB-INF/jsp/main/menu.jsp" %>     
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
                            <h3>전통주 소개 사이트</h3>
                            <p>한국에서 전통적으로 내려오는 술을 소개하는 사이트입니다.</p>
                        </div>
                        <img src="/asset/front/images/traditional.jpg" style="width:100%" height="760px">
                    </a>
                </li>
                <li class="slideitem">
                    <a>
                        
                        <div class="textbox">
                            <h3>다양한 전통주</h3>
                            <p>제조방법에 따라 다양한 종류의 전통주가 있습니다.</p>
                        </div>
                        <img src="/asset/front/images/traditional2.jpg"  style="width:100%" height="760px">
                    </a>
                </li>
                <li class="slideitem">
                    <a>
                        
                        <div class="textbox">
                            <h3>전통주란?</h3>
                            <p>전통주는 우리술, 한주, 한국술 등으로 불릴 수 있는 우리 고유의 식문화입니다.</p>
                        </div>
                        <img src="/asset/front/images/traditional3.jpg"  style="width:100%" height="760px">
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
  
       
                     
                    
        </section>
        <!-- <ul class="amount">
            <li>
              <div>
                <div class="contents1">옥탑에 등록된 건 수</div>
                <div class="result">38,210개</div>
              </div>
            </li>
            <li>
              <div>
                <div class="contents1">예약현황</div>
                <div class="result">15,100</div>
              </div>
            </li>
            <li>
              <div>
                <div class="contents1">옥탑 좋아요수</div>
                <div class="result">100,000+</div>
              </div>
            </li>
            <li>
                <div>
                  <div class="contents1">옥탑 활성</div>
                  <div class="result">57,221,084</div>
                </div>
            </li>
          </ul> -->
        <section id="content1">        
            <div class="content1_text">
                <h1>전통주의 정의</h1>                
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
                <h1> 전통주의 종류</h1>
                <h3>(제조방법, 주류의 원료, 발효방식에 따라 분류되는 전통주)</h3>
            </div>
          <ul class="icons">
            <li>
                <div class="icon_img">
                    <img src="/asset/front/images/soju1.png">
                </div>
                <div class="icons_text1"><h3>증류주</h3></div>
                <div class="icons-text2">
                    <br>
                </div>
                <div class="more">                                    
                    <a href=".layer-more1" class="more1">더보기</a>
                    <!-- <input type="button" value="더보기" onclick="showPopup();" /> -->
                </div>
            </li>
            <li>
                <div class="icon_img">
                    <img src="/asset/front/images/mak1.png">
                </div>
                <div class="icons_text1"><h3>양조주</h3></div>
                <div class="icons-text2">
                    <br>
                </div>
                <div class="more">
                   <a href=".layer-more2" class="more2">더보기</a>
                </div>
            </li>
            <li>
                <div class="icon_img">
                    <img src="/asset/front/images/po1.png">
                </div>
                <div class="icons_text1"><h3>혼성주</h3></div>
                <div class="icons-text2">
                    <br>
                    
                </div>
                <div class="more">
                   <a href=".layer-more3" class="more3">더보기</a>
                </div>
            </li>
          </ul>
        </section>
        <section id="content3">
            <h1> 전통주의 특징 </h1>
          <div class="content3_text1">
                <br>
          </div>
            <div class="service">
              <div class="alcohol_photo">
                <img src="/asset/front/images/alcohol4.png">
              </div>
              <div class="content3_text2">
                <p>첫째,  전통주는 우리가 밥으로 먹는 멥쌀이나 찹쌀, 보리, 수수, 기장, 조 등 쌀을 주원료로 하고,<br> 
                여기에 가향이나 약재를 첨가해 발효시킨 술이다. 그 맛은 단맛, 신맛, 쓴맛, 매운맛, 떫은맛<br> 
                등의 오미(五味)는 물론이고 ‘감칠맛’과 ‘상쾌한 맛’ 등 칠미(七味)와 과일향등의 ‘부드러운 향취’가 있습니다.<br> </p>
                <p>둘째, 전통주는 곡자(麯子)라고 하는 전통누룩을 발효․효소제로 사용합니다. <br>
                전통누룩에는 전분질을 분해하여 포도당으로 만들어 주는 당화제(효소)와 당을 분해하여<br>
                알코올을 생성시키는 발효제(효모)가 있습니다.<br>
                전통누룩은 자연적인 상태에서 미생물이 접종되어 배양된 경우로서, 전통누룩을 사용하여<br>
                빚은 술은 맛과 향이 깊고 풍부하며 다양합니다. </p>
                <p>셋째, 전통주의 양조과정은 전분이 당으로 되는 당화과정과 당이 알코올로 바뀌는 <br>
                    발효과정이 동시에 진행된다. <br>
                    따라서 전통주는 발효과정만 있는 와인이나 당화과정을 거친 후 발효과정이 순차로 <br>
                    진행되는 맥주와 다르다.
                    이와 같이 전통주는 당화과정과 발효과정이 동시에 진행됨으로써 그만큼 다른 술에
                    비해 빚기가 어렵고, 높은 기술력을 요합니다.</p>
              </div>                
            <!-- <div class="content3_bg">
                <img src="/asset/front/images/character.png">
            </div> -->
            </div>         
        </section>
        <section id="content4">
            <h1>전통주 박물관</h1>
           <div class="content4_text1">
               <br>
           </div>
          <div class="service2">
           <div id="content4_img">
            <img  id="map" src="/asset/front/images/map.jpg"></img>
             <div id="mark1">
                <a href="https://thesool.com/front/contents/M000000074/view.do" target=”_blank”>
                    <img src="/asset/front/images/mark1.png"></img></a>
             </div>
             <div id="mark2">
                <a href="http://urisul.net/" target=”_blank”>
                    <img src="/asset/front/images/mark2.png"></img></a>
             </div>
             <a href="https://sulmuseum.kr:444/index.9is" target=”_blank”><div id="mark3" >
                <img src="/asset/front/images/mark3.png"></img></a>
             </div>
             <div id="mark4">
                <a href="https://www.andongsoju.com:2033/coding/main.asp" target=”_blank”>
                    <img src="/asset/front/images/mark4.png"></img></a>
             </div>
             <div id="mark5">
                <a href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=jiyounb615&logNo=220902676171" target=”_blank”>
                    <img src="/asset/front/images/mark5.png"></img></a>
             </div>
             <div id="mark6">
                <a href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=daichung&logNo=220042852753" target=”_blank”>
                    <img src="/asset/front/images/mark6.png"></img></a>
             </div>
           </div> 
           <!-- <div class="location">
             <a href="https://www.sulmuseum.kr:444/index.9is?contentUid=ff8080814d980555014d9848fea30054" target = "_blank"><img src="asset/front/images/icon-alcohol.png"></a>
             <a href="http://urisul.net/"><img src="asset/front/images/icon-alcohol.png" target = "_blank"></a>
             <a href="https://blog.naver.com/bambi_0202/222162396117" target = "_blank"><img src="asset/front/images/icon-alcohol.png"></a>            
            </div> -->
            <div class="place-list">
                <ul>
                    <!-- <li>
                        <div class="p-top">
                            <div class="num gyeonggi">1</div>
                            <div class="subject">산머루 농원</div>
                            <div class="guide-list"></div>
                        </div>
                        <div class="p-body">
                            <div class="info">
                                <dl>
                                    <dt>주소</dt>
                                    <dd>경기 파주시 적성면 객현리 67-1</dd>
                                </dl>
                                <dl>
                                    <dt>주종</dt>
                                    <dd>과실주</dd>
                                </dl>
                                <dl>
                                    <dt>연락처"</dt>
                                    <dd>031-958-4558</dd>
                                </dl>
                            </div>
                        </div>
                    </li> -->
                    <li>
                        <div class="table-top">
                            <div class="num one">1</div>
                            <a href="https://thesool.com/front/contents/M000000074/view.do" target=”_blank”>
                                <div class="subject">전통주갤러리</div></a>
                            <div class="guide-list"></div>
                        </div>
                        <div class="table-body">
                            <div class="info">
                                 <dl>
                                    <dt>주소</dt>
                                    <dd>서울특별시 종로구 재동 54-5 1 층&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</dd>
                                 </dl>
                                 <dl>
                                    <dt>종류</dt>
                                    <dd>갤러리</dd>
                                 </dl>
                                 <dl>
                                    <dt>연락처</dt>
                                    <dd>02-555-2283</dd>
                                 </dl>
                            </div>
                        </div>

                    </li>
                    <li>
                        <div class="table-top">
                            <div class="num two">2</div>
                            <a href="http://urisul.net/" target=”_blank”>
                                <div class="subject">전주 전통 술박물관</div></a>
                            <div class="guide-list"></div>
                        </div>
                        <div class="table-body">
                            <div class="info">
                                 <dl>
                                    <dt>주소</dt>
                                    <dd>전라북도 전주시 완산구 한지길 74&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</dd>
                                 </dl>
                                 <dl>
                                    <dt>종류</dt>
                                    <dd>박물관</dd>
                                 </dl>
                                 <dl>
                                    <dt>연락처</dt>
                                    <dd>063-287-6305</dd>
                                 </dl>
                            </div>
                        </div>

                    </li>
                    <li>
                        <div class="table-top">
                            <div class="num three">3</div>
                            <a href="https://sulmuseum.kr:444/index.9is" target=”_blank”>
                                <div class="subject">대한민국 술테마 박물관</div></a>
                            <div class="guide-list"></div>
                        </div>
                        <div class="table-body">
                            <div class="info">
                                 <dl>
                                    <dt>주소</dt>
                                    <dd>전라북도 완주군 구이면 덕천전원길 232-58</dd>
                                 </dl>
                                 <dl>
                                    <dt>종류</dt>
                                    <dd>박물관</dd>
                                 </dl>
                                 <dl>
                                    <dt>연락처</dt>
                                    <dd>063-290-3842</dd>
                                 </dl>
                            </div>
                        </div>

                    </li>
                    <li>
                        <div class="table-top">
                            <div class="num four">4</div>
                            <a href="https://www.andongsoju.com:2033/coding/main.asp" target=”_blank”>
                                <div class="subject">안동소주 박물관</div></a>
                            <div class="guide-list"></div>
                        </div>
                        <div class="table-body">
                            <div class="info">
                                 <dl>
                                    <dt>주소</dt>
                                    <dd>경상북도 안동시 수상동 280&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</dd>
                                    
                                 </dl>
                                 <dl>
                                    <dt>주종</dt>
                                    <dd>박물관</dd>
                                 </dl>
                                 <dl>
                                    <dt>연락처</dt>
                                    <dd>054-858-4541</dd>
                                 </dl>
                            </div>
                        </div>

                    </li>
                    <li>
                        <div class="table-top">
                            <div class="num five">5</div>
                            <a href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=jiyounb615&logNo=220902676171" target=”_blank”>
                                <div class="subject">술샘박물관</div></a>
                            <div class="guide-list"></div>
                        </div>
                        <div class="table-body">
                            <div class="info">
                                 <dl>
                                    <dt>주소</dt>
                                    <dd>강원도 영월군 주천면 주천리 1376-36</dd>
                                 </dl>
                                 <dl>
                                    <dt>종류</dt>
                                    <dd>박물관</dd>
                                 </dl>
                                 <dl>
                                    <dt>연락처</dt>
                                    <dd>042-1234-5678</dd>
                                 </dl>
                            </div>
                        </div>

                    </li>
                    <li>
                        <div class="table-top">
                            <div class="num six">6</div>
                            <a href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=daichung&logNo=220042852753" target=”_blank”>
                                <div class="subject">세계술문화박물관</div></a>
                            <div class="guide-list"></div>
                        </div>
                        <div class="table-body">
                            <div class="info">
                                 <dl>
                                    <dt>주소</dt>
                                    <dd>충북 충주시 중앙탑면 탑평리51-1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</dd>
                                 </dl>
                                 <dl>
                                    <dt>종류</dt>
                                    <dd>박물관</dd>
                                 </dl>
                                 <dl>
                                    <dt>연락처</dt>
                                    <dd>043-855-7335</dd>
                                 </dl>
                            </div>
                        </div>

                    </li>
                </ul>
                  

            </div>
           </div>
        </section>
        <!-- <section id="content5">         
          <div class="service3">
            <div class="content5_img">
                <img src="/asset/front/images/water.png">                
            </div>               
          </div>
        </section> -->
       <!-- <footer class="footer">
            <div>한국 폴리텍 대학</div>
            <div>
                CEO. JAEWOO <br>
                Addr. 대전광역시 동구 우암로 352-21 한국 폴리텍 대학 <br>TEL 042-1234-5678 FAX 042-1234-5678 <br>
                COPYRIGHT 2010 BY KOREA POLYTECHNICS. ALL RIGHTS RESERVED.
            </div>
        </footer>  -->
        <%@ include file="/WEB-INF/jsp/main/footer.jsp" %>  
    </div>
<%--  <c:choose>
   <c:when test="${empty USER_INFO.id}">
      <a href="/login/egovLoginUsr.do" class="login">로그인</a>
   </c:when>
   <c:otherwise>
       <a href="/login/actionLogout.do"><c:out value="${USER_INFO.name}">님 로그아웃</c:out></a>
   </c:otherwise>
</c:choose> 
 --%>
<!-- 로그인 -->
	<div class="layer-popup layer-login" style="display:none;">
		<header class="layer-header">
			<span class="logo">
				<span class="img-logo">한국폴리텍대학 대전캠퍼스 스마트소프트웨어학과</span>
			</span>
			<button type="button" class="layer-close"><span>팝업 닫기</span></button>
		</header>
		<div class="layer-body">
			<form action="/login/actionLogin.do" id="frmLogin" name="frmLogin" method="post" onsubmit="return vali()">
				<input type="hidden" name="userSe" value="USR"/>
				<fieldset>
					<legend>로그인을 위한 아이디/비밀번호 입력</legend>
					<div class="ipt-row">
						<input type="text" id="loginId" name="id" placeholder="아이디" required="required">
					</div>
					<div class="ipt-row">
						<input type="text" id="loginPw" name="password" placeholder="비밀번호" required="required">
					</div>
					<button type="submit" class="btn-login"><span>로그인</span></button>
				</fieldset>
			</form>
		</div>
		<!-- <button class="btn-prev">이전</button>
		<butoon class="btn-next">다음</butoon> -->
	</div> 
	
<!-- 회원가입 -->
	<div class="layer-popup layer-member" style="display:none;">
		<header class="layer-header">
			<span class="logo">
				
			</span>
			<button type="button" class="layer-close"><span>팝업 닫기</span></button>
		</header>
		<div class="layer-body">
			<%-- <form action='<%=request.getContextPath() %>/member/insert.do' method='post' id='memberform'> --%>
				
				<fieldset>
					<legend>회원가입</legend>
					<div class="ipt-row">			
						 <input type="text" name="memberId" placeholder="아이디를 입력하세요"/>
					</div>
					<div class="ipt-row">
						<input type="password" name="memberPass" id="pw1" placeholder="비밀번호를 입력하세요"/>
					</div>
					<div class="ipt-row">
						<input type="password2" name="memberPass2" id="pw2" placeholder="비밀번호를 다시 입력하세요"/>
					</div>
					<div  class="ipt-row">
					    <input type="text" name="memberName" placeholder="이름을 입력하세요"/>
					</div>
					<button type="submit" class="btn-member" ><span>회원가입</span></button>
				</fieldset>
			<!-- </form> -->
		</div>
		<!-- <button class="btn-prev">이전</button>
		<butoon class="btn-next">다음</butoon> -->
	</div> 
	
<!-- 더보기1 -->
	<div class="layer-popup layer-more1" style="display:none;">	    
			
			<button type="button" class="layer-close"><span>팝업 닫기</span></button>
			
		<div class="layer-body">
		  
			<h1>증류주</h1>
			<br>우리의 소주를 비롯하여 중국의 고량주, 그리고 서양의 브랜디, 위스키,
			<br>진, 보드카 등 알코올 농도가 높은 술들은 모두 증류주에 속한다.
		          <br>증류주란, 발효 과정을 거쳐서 만든 술 즉 양조주를 증류라는		           
		       <br>과학적인 조작으로  알코올을 분리해 만든 고농도 알코올을 함유한 술을 말한다. 
		           <br>따라서 증류주를 만들려면 필히 그 전 단계인 양조주가 있어야 한다.
		       <br>즉, 소주는 막걸리를 증류한 것이고, 브랜디는 와인을,
		        <br>위스키·보드카·진 등은 보리와 같은 곡물로 만든 양조주를 증류한 것이다.


		    
		</div>
		<!-- <button class="btn-prev">이전</button>
		<butoon class="btn-next">다음</butoon> -->
	</div> 
	<div class="layer-popup layer-more2" style="display:none;">	    
			
			<button type="button" class="layer-close"><span>팝업 닫기</span></button>
			
		<div class="layer-body">
		  
			<h1>양조주</h1>
			<br>곡류나 과일 따위를 알코올 발효시켜 만드는 술. 발효주라고도 한다.
			<br>곡류는 먼저 당화시킨 뒤 발효하며, 과일은 당이 있으므로 
			<br>당화 없이 그대로 발효, 숙성시킨다. 
		    <br>우리나라 주세법에서의 양조주는 탁주, 약주, 청주, 맥주와 과실주이다. 
		    <br>발효주라고도 하며, 알코올 함량은 1~18%로 낮다.

		    
		</div>
		<!-- <button class="btn-prev">이전</button>
		<butoon class="btn-next">다음</butoon> -->
	</div> 
	<div class="layer-popup layer-more3" style="display:none;">	    
			
			<button type="button" class="layer-close"><span>팝업 닫기</span></button>
			
		<div class="layer-body">
		  
			<h1>혼성주</h1>
			<br>양조주나 증류주에 여러 성분을 섞어서 만든 술. 
			<br>  식물의 꽃, 잎, 뿌리, 과일, 과일 껍질, 당, 색소 따위를 섞는다. 
		    <br>  두가지 이상의 술을 섞어 만든 술.		    
		</div>
		<!-- <button class="btn-prev">이전</button>
		<butoon class="btn-next">다음</butoon> -->
	</div> 
	
	
	<%-- <script language="javascript">
         function showPopup() { window.open("<%=request.getContextPath() %>/more.do", "a", "width=400, height=300, left=100, top=50"); }
    </script> --%>
 <script type="text/javascript">
    function test() {
      var p1 = document.getElementById('password').value;
      var p2 = document.getElementById('password2').value;
      if( p1 != p2 ) {
        alert("비밀번호가 일치 하지 않습니다");
        return false;
      } else{
        alert("비밀번호가 일치합니다");
        return true;
      }

    }
    document.getElementById('memberform').onsubmit = check_pw;
    function check_pw(){  //비밀번호 확인 
        var p = document.getElementById('pw1').value; 
        var p_cf = document.getElementById('pw2').value; 
     
        if (p!=p_cf) { 
          /* document.getElementById('pw_check_msg').innerHTML = "비밀번호가 다릅니다. 다시 확인해 주세요.";  */
          alert("비밀번호가 일치 하지 않습니다")
          return false;
        } 
        else { 
            /* document.getElementById('pw_check_msg').innerHTML = "";  */  
          alert("회원가입이 완료되었습니다")
        } 
        if (p_cf=="") { 
          document.getElementById('pw_check_msg').innerHTML = ""; 
        } 
     } 
  </script>	
  
	
 
 <script>
 $(document).ready(function(){
	 //더보기1
	  $(".more1").click(function(){
			 $(".dim, .layer-more1").fadeIn();
			 return false;
		 });
	 
	 //더보기1닫기
     $(".layer-close").click(function(){
    	 $(".dim, .layer-more1").fadeOut();
    	 return false;
     });
});
 $(document).ready(function(){
	 //더보기1
	  $(".more2").click(function(){
			 $(".dim, .layer-more2").fadeIn();
			 return false;
		 });
	 
	 //더보기1닫기
     $(".layer-close").click(function(){
    	 $(".dim, .layer-more2").fadeOut();
    	 return false;
     });
});
 $(document).ready(function(){
	 //더보기1
	  $(".more3").click(function(){
			 $(".dim, .layer-more3").fadeIn();
			 return false;
		 });
	 
	 //더보기1닫기
     $(".layer-close").click(function(){
    	 $(".dim, .layer-more3").fadeOut();
    	 return false;
     });
});
 $(document).ready(function(){
	 //회원가입
	  $(".member2").click(function(){
			 $(".dim, .layer-member").fadeIn();
			 return false;
		 });
	 
	 //회원가입닫기
     $(".layer-close").click(function(){
    	 $(".dim, .layer-member").fadeOut();
    	 return false;
     });
});	 
 
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
          