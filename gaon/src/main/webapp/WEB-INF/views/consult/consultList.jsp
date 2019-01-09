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
							<h4>나의 수업목록</h4>

							<div class="asset-inner">
								<table>
									<tr>
										<th>No</th>
										<th>수업이름</th>
										<th>담당강사</th>
										<th>상태</th>
									</tr>
									<c:choose>
										<c:when test="${not empty courses}">
											<c:forEach var="CourseList" varStatus="stat" items="${courses}">
												<tr>
													<td>${stat.count}</td>
													<td>
													<a href="/gaon/consult/studentList.action?courseNo=${CourseList.courseNo}&type=${type}">${CourseList.courseName}</a>
													</td>
													<td>${CourseList.teacherName}</td>
													<td>
													<c:choose>
													<c:when test="${CourseList.deleted==false}">
																<div class="pd-setting" style="width: 70px">수업중</div>
															</c:when>
															<c:when test="${CourseList.deleted==true}">
																<div class="ds-setting"
																	style="width: 70px; font-size: 12px;">수업종료</div>
															</c:when>
														</c:choose>
														</td>
												</tr>
											</c:forEach>
										</c:when>
										<c:when test="${empty courses}">
											<c:forEach var="CourseList" varStatus="stat"
												items="${CourseList}">
												<tr>
													<td>${stat.count}</td>
													<td><a href="/gaon/consult/studentList.action?courseNo=${CourseList.courseNo }">${CourseList.courseName}</a></td>
													<td>${CourseList.teacherName}</td>
													<td>
													<c:choose>
															<c:when test="${CourseList.deleted==false}">
																<div class="pd-setting" style="width: 70px">수업중</div>
															</c:when>
															<c:when test="${CourseList.deleted==true}">
																<div class="ds-setting"
																	style="width: 70px; font-size: 12px;">수업종료</div>
															</c:when>
														</c:choose></td>
												</tr>
											</c:forEach>
										</c:when>

									</c:choose>


								</table>
							</div>

							<!-- pager -->
							<div class="custom-pagination">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item"><a class="page-link" href="#">Previous</a></li>
										<li class="page-item"><a class="page-link" href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">Next</a></li>
									</ul>
								</nav>
							</div>
						</div>

					</div>
</body>
</html>