<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/include/css.jsp" />
<style type="text/css">


</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
	<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />


	<div class="all-content-wrapper">
		<br> <br> <br> <br> <br> <br> <br>
		<div id="sboard">
			<div class="contacts-area mg-b-15">
				<div class="container-fluid">
					<div class="row">
						<c:choose>
							<c:when test="${not empty boardList}">
								<c:forEach var="list" items="${boardList}">
									<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
										<div class="student-inner-std res-mg-b-30">
											
								    	</div>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>					
							<div class="comming-soon" style="align:center">		
									<h1 style="text-align: center">서비스 준비중입니다!</h1>
									<br><br><br>													
									<img src="/gaon/resources/upload/comingsoon.jpg" alt="" width="500px" height="300px" 
									style="margin-left: auto; margin-right: auto; display: block;"/>
								</div>		
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/include/js.jsp" />
</body>
</html>