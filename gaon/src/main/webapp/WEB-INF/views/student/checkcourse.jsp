<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/include/css.jsp" />
<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />

</head>
<body> 

<br>
<br> 
	<br> 
	<br>
	<br>
	<br>
	<br>
	<div class="all-content-wrapper">
		<div class="product-status mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="product-status-wrap drp-lst">
							<h4>담당 강의목록</h4>
							<div class="asset-inner">
								<table>
									<tbody>
										<tr>
											<th>강의명</th>
											<th>강의내용</th>
											<th>담당선생님</th>
										</tr>															
										
										<c:forEach var="list" items="${courses}"> 
										<!-- items = 표에들어가는내용(배열로끌고온거)  -->
										 <!-- COURSE테이블에 있는 컬럼 -->
										<tr>
											<td><a href="/gaon/student/checkstudent.action?courseNo=${list.courseNo}"> ${list.courseName }</a></td>
											<td>${list.content}</td>
											<td>${list.teacherName}</td>
										</tr>
									<%-- 	/gaon/student/checkcourse.action?teacherName=${login.name} --%>
										</c:forEach>
										
										
										
										
										
									</tbody>
								</table>
							</div>
	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>









	<jsp:include page="/WEB-INF/views/include/js.jsp" />
</body>
</html>