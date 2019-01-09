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
		<div class="single-pro-review-area mt-t-30 mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="product-payment-inner-st">
							<ul id="myTabedu1" class="tab-review-design">
								<li class="active"><a href="#description">강의 계획서</a></li>
							</ul>
							<div id="myTabContent" class="tab-content custom-product-edit">
								<div class="product-tab-list tab-pane fade active in"
									id="description">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="review-content-section">
												<div id="dropzone1" class="pro-ad addcoursepro">
													<form action="addcourse.action" method="post"
														class="dropzone dropzone-custom needsclick addcourse"
														id="demo1-upload">
														<div class="row" style="text-align: center">
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="form-group">
																	<input name="courseName" type="text"
																		class="form-control" placeholder="강의명">
																</div>
																<div class="form-group">
																	<textarea name="content" placeholder="강의 내용"></textarea>
																</div>
																<div class="form-group" >
																<label>Academy</label> 
																<br>																																
																	<select name="teacherName" class="form-control" style="width:300px;display: inline;">
																		<c:forEach var = "list" items="${teacherList }">
																			<option>${list.name }</option>
																		</c:forEach>
																	</select>	
																</div>
															</div>
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" id="teacherlist">
																
															</div>
														</div>
														<input type="hidden" name="academyNo"
															value="${login.academyNo }">

														<div class="row">
															<div class="col-lg-12">
																<div class="payment-adress">
																	<button type="submit"
																		class="btn btn-primary waves-effect waves-light">강의
																		등록</button>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>

									</div>
								</div>
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