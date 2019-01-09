<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>

	<div class="header-advance-area">
		<div class="header-top-area"> 
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="header-top-wraper">
							<div class="row">
								<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12"
									style="float: right; margin-right: 80px">
									<div class="header-right-info">

										<c:if test="${not empty login }">
											<ul class="nav navbar-nav mai-top-nav header-right-menu">
												<c:if test='${login.userType=="student" or login.userType=="teacher"}'> 
													<li class="nav-item" style="margin: 10px">
													
													<c:if test='${login.userType=="teacher"}'>
														<a href="/gaon/sboard/memberlist.action?userType=student&academyNo=${login.academyNo }">	
													</c:if>
													<c:if test='${login.userType=="student"}'> 
														<a href="/gaon/sboard/memberlist.action?userType=teacher&academyNo=${login.academyNo }">
													</c:if>
													
													<i class="educate-icon educate-message" aria-hidden="true" title="message"></i></a>
														<div role="menu"
															class="notification-author dropdown-menu animated zoomIn">
															<div class="notification-single-top">
																<h1>Message</h1>
															</div>														
														</div></li>
												
												
												<li class="nav-item" style="margin: 10px"><a href="#"
													data-toggle="dropdown" role="button" aria-expanded="false"
													class="nav-link dropdown-toggle"><i
														class="educate-icon educate-bell" aria-hidden="true"></i></span></a>
													<div role="menu"
														class="notification-author dropdown-menu animated zoomIn">
														<div class="notification-single-top">
															<h1>Message</h1>
														</div>
														<ul class="notification-menu">
															
														<c:if test='${login.userType=="student" or login.userType=="teacher"}'>
															<c:forEach var="list" items="${messageList }" begin="0" end="4">
																<li><a href="/gaon/sboard/viewsboard.action?sboardNo=${list.sboardNo}">
																	<div class="notification-icon">
																		<img src="/gaon/resources/upload/${list.savedFileName}" style="width:50px;height:50px">
																	</div>
																	<div class="notification-content">
																		<h2>${list.writer } 의 메시지가 도착했습니다. </h2>
																		<p>${list.scomments }</p>
																	</div>
																</a></li>
															</c:forEach>
														</c:if> 
														</ul>
														<div class="notification-view">
															<a href="#">View All Notification</a>
														</div>
													</div></li>
													
													</c:if>


												<li class="nav-item"><a href="#" data-toggle="dropdown"
													role="button" aria-expanded="false"
													class="nav-link dropdown-toggle">
														<div style="float: left;">
															<img src="/gaon/resources/upload/${login.savedFileName }"
																class="message-avatar" />
														</div> <span class="admin-name" style="margin: 10px;">${login.name}${login.academyName}</span>
														<i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
												</a>
													<ul role="menu"
														class="dropdown-header-top author-log dropdown-menu animated zoomIn">
														
														<c:if test='${login.userType=="student" or login.userType=="teacher"}'>
															<li><a href="/gaon/account/updateprofile.action"><span
																	class="edu-icon edu-home-admin author-log-ic"></span>My
																	Profile</a></li>
														</c:if>
														
														<li><a href="/gaon/account/logout.action"><span
																class="edu-icon edu-locked author-log-ic"></span>Log Out</a></li>
													</ul></li>

											</ul>
										</c:if>
									</div>
								</div>






							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>