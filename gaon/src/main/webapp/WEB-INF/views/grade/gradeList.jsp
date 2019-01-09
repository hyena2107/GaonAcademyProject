<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/include/css.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
	<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />
	<jsp:include page="/WEB-INF/views/include/js.jsp" />
	<div class="all-content-wrapper">
		<br> <br> <br> <br> <br> <br>
		<div class="product-status mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="product-status-wrap drp-lst">
							<h4>시험 결과 보기</h4>

							<div class="asset-inner">
								<table>
									<tr>
										<th>No</th>
										<th>강의명</th>
										<th>담당 선생님</th>
									</tr>
									<c:forEach var="list" varStatus="stat" items="${courseList}">
										<tr>
											<td>${stat.count}</td>
											<td><a href="studentList.action?courseNo=${list.courseNo}">${list.courseName }</a></td>
											<td>${list.teacherName }</td>
											
											
											
											<c:choose>
												<c:when test="${GradeListAll.deleted==false}">
													<div class="pd-setting" style="width: 70px">수업중</div>
												</c:when>
												<c:when test="${CourseList.deleted==true}">
													<div class="ds-setting"
														style="width: 70px; font-size: 12px;">수업종료</div>
												</c:when>
											</c:choose>

										</tr>
									</c:forEach>
								</table>
							</div>
							<br> <br>
							<div>

								<div id="addscore" class="add-product">
									<a href="addScore.action?">결과추가</a>
								</div>
								<br> <br>

								
							</div>

						</div>
</body>
</html>