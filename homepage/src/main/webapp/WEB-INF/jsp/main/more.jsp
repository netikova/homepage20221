<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 더보기1 -->
	<div class="layer-popup layer-more" style="display:none;">		
		<div class="layer-body">
		  <form action='<%=request.getContextPath() %>/more.do' method='post'>
			<h1>증류주</h1>
			<br>증류주에 대한 설명
		  </form>
		</div>
		<!-- <button class="btn-prev">이전</button>
		<butoon class="btn-next">다음</butoon> -->
	</div> 
	
	<h1>증류주</h1>
			<br>증류주에 대한 설명
</body>
</html>