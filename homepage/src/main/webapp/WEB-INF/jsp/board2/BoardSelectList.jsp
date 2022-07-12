<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<title>게시판</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<%-- 기본 URL --%>
<c:url var="_BASE_PARAM" value="">
    <c:param name="menuNo" value="50"/>
    <c:if test="${not empty searchVO.searchCondition}">
        <c:param name="searchCondition" value="${searchVO.searchCondition}"/>
    </c:if>
    <c:if test="${not empty searchVO.searchKeyword}">
        <c:param name="searchKeyword" value="${searchVO.searchKeyword}"/>
    </c:if>
</c:url>

<!DOCTYPE heml>
<html>
<head>
<meta http-equiv="Content-Language" content="ko">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
<title>수업용 게시판</title>
<!--  BBS Style -->
<link href="/asset/BBSTMP_0000000000001/style.css" rel="stylesheet" />
<!--  공통 Style -->
<link href="/asset/LYTTMP_0000000000000/style.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="/asset/front/css/style.css" rel="stylesheet" />
<link href="/asset/front/css/index.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src='https://code.jquery.com/jquery-1.12.4.min.js'></script><script  src="/asset/front/js/script.js"></script>
</head>
<body>
   
           <%@ include file="/WEB-INF/jsp/main/header.jsp" %>  
            
      <section id="intro2">
          
          <%@ include file="/WEB-INF/jsp/main/menu2.jsp" %>       
        </section> 
   <div class="container">     
    <div id="contents">
        <%-- 검색영역 --%>
        <div id="bbs_search">
            <form name="frm" method="post" action="/board2/selectList.do">
                <fieldset>
                    <legend>검색조건입력폼</legend>
                    <label for="ftext" class="hdn">검색분류선택</label>
                    <select name="searchCondition" id="ftext">
                        <option value="0" <c:if test="${searchVO.searchCondition eq '0'}"> selected="selected"</c:if>>제목</option>
                        <option value="1" <c:if test="${searchVO.searchCondition eq '1'}"> selected="selected"</c:if>>내용</option>
                        <option value="2" <c:if test="${searchVO.searchCondition eq '2'}"> selected="selected"</c:if>>작성자</option>
                        </select>
                        <label for="inp_text" class="hdn">검색어입력</label>
                        <input name="searchKeyword"
                            value="<c:out value="${searchVO.searchKeyword}"/>" type="text" class="inp_s" id=inp_text" />
                        <span class="bbtn_s">
                             <input type="submit" value="검색" title="검색(수업용 게시판 게시물 내)" />
                        </span>
                 </fieldset>
            </form>
     </div>
     
     <%-- 목록영역 --%>
     <div id="bbs_wrap">
        <div class="total">
                        총 게시물
           <strong><c:out value="${paginationInfo.totalRecordCount}"/></strong>건 | 현재페이지 <strong><c:out value="${paginationInfo.currentPageNo}"/></strong>/<c:out value="${paginationInfo.totalPageCount}"/>
        </div>
        <div class="bss_list">
             <table class="list_table">
                <thead>
                     <tr>    
                         <th class="num" scope="col">번호</th>
                         <th class="tit" scope="col">제목</th>
                         <th class="writer" scope="col">작성자</th>
                         <th class="date" scope="col">작성일</th>
                         <th class="hits" scope="col">조회수</th>
                     </tr>
                </thead>
             <tbody>
<%-- 공지 글 --%>
<c:forEach var="result" items="${noticeResultList}" varStatus="status">
   <tr class="notice">
       <td class="num"><span class="label-bbs spot">공지</span></td>
       <td class="tit">
           <c:url var="viewUrl" value="/board2/select.do${_BASE_PARAM}">
               <c:param name="boardId" value="${result.boardId}"/>
               <c:param name="pageIndex" value="${searchVO.pageIndex}"/>
           </c:url>
           <a href="${viewUrl}"><c:out value="${result.boardSj}"/></a>
       </td>
       <td class="writer" date-cell-header="작성자: ">
           <c:out value="${result.frstRegisterId}"/>
       </td>
       <td class="date" date-cell-header="작성일: ">
           <fmt:formatDate value="${result.frstRegistPnttm}" pattern="yyyy-MM-dd"/>
       </td>
       <td class="hits" date-cell-header="조회수: ">                   
           <c:out value="${result.inqireCo}"/>
       </td>
    </tr>
</c:forEach>

<%-- 일반 글 --%>                              <!-- 변수 -->
<c:forEach var="result" items="${resultList}" varStatus="status">
    <tr>
        <td class="num"> <!-- 페이지 -->
            <!--   위에서부터  내림차순으로 글 번호를 매기는 순서 -->
                  <!--  페이지의 첫번째 숫자 구하기 :총수-((현재 페이지 번호-1)*한페이지당 게시되는 게시물 건수)- 1부터 시작순서 -->
            <c:out value="${paginationInfo.totalRecordCount - ((searchVO.pageIndex-1) * searchVO.pageUnit) - (status.count -1)}" />
        </td>
        <td class="tit"> <!-- 글제목 -->
            <c:if test="${not empty result.atchFileNm}">
                <c:url var="thumbUrl" value="/cmm/fms/getThumbImage.do">
                    <c:param name="thumYn" value="Y"/>
                    <c:param name="atchFileNm" value="${result.atchFileNm}"/>
                </c:url>
                <img id="thumb"src="${thumbUrl}" a href="/board2/boardRegist.do"alt=""/>
            </c:if>
            <c:url var="viewUrl" value="/board2/select.do${_BASE_PARAM}">
                <c:param name="boardId" value="${result.boardId}"/>
                <c:param name="pageIndex" value="${searchVO.pageIndex}"/>
            </c:url>
            <a href="${viewUrl}">
            <c:if test="${result.othbcAt eq 'Y'}">
            <img id="lock"  src="/asset/BBSTMP_0000000000001/images/ico_board_lock.gif" alt="비밀 글 아이콘" />
            </c:if>
            <c:out value="${result.boardSj}"/>
 </a>
 </td>
 <td class="writer" date-cell-header="작성자: ">
     <c:out value="${result.frstRegisterId}"/>
 </td>
 <td class="date" date-cell-header="작성일: ">
     <fmt:formatDate value="${result.frstRegistPnttm}" pattern="yyyy-MM-dd"/>
 </td>
 <td class="hits" date-cell-header="조회수: "><c:out value="${result.inqireCo}"/></td>
 </tr>
 </c:forEach>
 
                       <%-- 게시 글이 없을 경우 --%>
                       <c:if test="${fn:length(resultList) == 0}">
                          <tr class="empty"><td colspan="5">검색 데이터가 없습니다.</td></tr>
                       </c:if>
                       </tbody>
                     </table>
                   </div>
                   <div id="paging">
                        <c:url var="pageUrl" value="/board2/selectList.do${_BASE_PARAM}"/>
                        <c:set var="pagingParam"><c:out value="${pageUrl}"/></c:set>
                        <ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="${pagingParam}"/>
                      </div>
                   </div>
                   <div class="btn-cont ar">
                       <a href="/board2/boardRegist.do" class="btn spot">
                            <i class="ico-check-spot"></i> 글쓰기
                       </a>
                   </div>
                </div>
             </div>
             <script>
             <c:if test="${not empty message}">
                 alert("${message}");
             </c:if>
             </script>
 <!-- 로그인 -->
	<div class="layer-popup layer-login" style="display:none;">
		<header class="layer-header">
			<span class="logo">
				<span class="img-logo">전통 주</span>
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
	</div> 
	
	<!-- 갤러리 -->
	<div id="contents1">
	 <ul class="gallery">
	 <c:forEach var="result" items="${resultList}" varStatus="status">
	 <tr>
        <td class="num"> <!-- 페이지 -->
            <!--   위에서부터  내림차순으로 글 번호를 매기는 순서 -->
                  <!--  페이지의 첫번째 숫자 구하기 :총수-((현재 페이지 번호-1)*한페이지당 게시되는 게시물 건수)- 1부터 시작순서 -->
            <c:out value="${paginationInfo.totalRecordCount - ((searchVO.pageIndex-1) * searchVO.pageUnit) - (status.count -1)}" />
        </td>
       <li>
        <a href="">
            <td class="tit"> <!-- 글제목 -->            
            <c:url var="viewUrl" value="/board2/select.do${_BASE_PARAM}">
                <c:param name="boardId" value="${result.boardId}"/>
                <c:param name="pageIndex" value="${searchVO.pageIndex}"/>
            </c:url>
            <a href="${viewUrl}">
             <c:if test="${not empty result.atchFileNm}"> 
              <div id="gallery_img">
                <c:url var="thumbUrl" value="/cmm/fms/getThumbImage.do">
                    <c:param name="thumYn" value="Y"/>
                    <c:param name="atchFileNm" value="${result.atchFileNm}"/>
                </c:url>
                <img src="${thumbUrl}" alt=""/>
              </div>
            </c:if> 
            <c:if test="${empty result.atchFileNm}"> 
                <img src="/asset/BBSTMP_0000000000001/images/noimg.gif" alt="noimages"/>
            </c:if>
                    
            </a>
           </td>
            <ul>
              <li>
                <c:if test="${result.othbcAt eq 'Y'}">
                    <img id="lock" src="/asset/BBSTMP_0000000000001/images/ico_board_lock.gif" alt="비밀 글 아이콘" "/>
                </c:if>   
                    <td class="writer" date-cell-header="글제목: "> 글제목: <c:out value="${result.boardSj}"/>  </td>
             
              </li>
              <li>
                <td class="writer" date-cell-header="작성자: "> 작성자: <c:out value="${result.frstRegisterId}"/> </td>
			  </li>
              <li>
                <td class="date" date-cell-header="작성일: "> 작성날짜: <fmt:formatDate value="${result.frstRegistPnttm}" pattern="yyyy-MM-dd"/> </td>
			  </li>
              <li>
                <td class="hits" date-cell-header="조회수: "> 조회수: <c:out value="${result.inqireCo}"/> <a href="${viewUrl}"><span>바로가기</span></a>  </td>              
              </li>             
              </ul>
           
             
        </tr>
  
                
     
    <!-- <li>
        <a href="">
            <h2><img src="/asset/front/images/alcohol1.jpg" alt=""></h2>
            <ul>
            <li>그룹차원의 재난구호</li>
            <li>사회봉사활동 기금 마련 경비지원</li>
            <li>임직원들의 사회봉사 활동지원</li>
            </ul>
            <span>바로가기</span>
        </a>
    </li>     -->
      
     </c:forEach>
     <%-- 게시 글이 없을 경우 --%>
                       <c:if test="${fn:length(resultList) == 0}">
                          <tr class="empty"><td colspan="5">검색 데이터가 없습니다.</td></tr>
                       </c:if>                     
               </ul>                
                   
                   <div id="paging">
                        <c:url var="pageUrl" value="/board2/selectList.do${_BASE_PARAM}"/>
                        <c:set var="pagingParam"><c:out value="${pageUrl}"/></c:set>
                        <ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="${pagingParam}"/>
                      </div>                              
                   <div class="btn-cont ar">
                       <a href="/board2/boardRegist.do" class="btn spot">
                            <i class="ico-check-spot"></i> 글쓰기
                       </a>
                   </div>
                </div>
    <%@ include file="/WEB-INF/jsp/main/footer.jsp" %> 
	
             
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
                  
</html>
</body>
</html>         
          