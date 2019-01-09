<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/include/css.jsp" />
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
							<c:when test="${not empty sboardList}">
								<c:forEach var="list" items="${sboardList}">
									<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12" style="width:20%;">
										<div class="student-inner-std res-mg-b-30">
											<a href="viewsboard.action?sboardNo=${list.sboardNo}" >
												<div class="student-img">
													<img src="/gaon/resources/upload/defaults.png" style="width:100px;height:100px" />
												</div>
											</a>											
											<div class="student-dtl">
												<h2>${list.teacherName } 선생님과</h2>
												<h2>${list.studentName } 학생의 방!</h2>												
											</div>
										</div>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<h1 style="text-align: center">대화방을 만들어보세요!</h1>
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