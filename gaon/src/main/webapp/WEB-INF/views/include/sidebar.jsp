<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
	<div class="left-sidebar-pro">
		<nav id="sidebar" class="">
			<div class="sidebar-header">
				<a href="/gaon/main.action"><img class="main-logo"
					src="/gaon/resources/img/logo/logo.png" alt="" /></a> <strong><a
					href="/gaon/main.action"><img
						src="/gaon/resources/img/logo/logosn.png" alt="" /></a></strong>
			</div>
			<div class="left-custom-menu-adp-wrap comment-scrollbar">
				<nav class="sidebar-nav left-sidebar-menu-pro">
					<ul class="metismenu" id="menu1">
						<c:if test='${login.userType =="master" }'>
							<li><a href="/gaon/account/auth.action?academyNo=${login.academyNo}"
								aria-expanded="false"><span
									class="educate-icon educate-student icon-wrap"></span> <span
									class="mini-click-non">권한</span></a></li>
						</c:if>



						<c:if test='${login.userType =="admin"  }'>
							<li><a
								href="/gaon/account/auth.action?academyNo=${login.academyNo}"
								aria-expanded="false"><span
									class="educate-icon educate-student icon-wrap"></span> <span
									class="mini-click-non">선생님 관리</span></a></li>
						</c:if>

						<c:if
							test='${login.userType =="admin" or login.userType =="teacher" }'>
							<li><a
								href="/gaon/course/courselist.action?academyNo=${login.academyNo}&teacherNo=${login.memberNo}"
								aria-expanded="false"><span
									class="educate-icon educate-professor icon-wrap"></span> <span
									class="mini-click-non"> 수업목록 </span></a></li>
						</c:if>
						<c:if
							test='${login.userType=="admin" or login.userType=="teacher"}'>
							<li><a class="has-arrow" href="all-professors.html"
								aria-expanded="false"><span
									class="educate-icon educate-professor icon-wrap"></span> <span
									class="mini-click-non">학생관리</span></a>
								<ul class="submenu-angle" aria-expanded="false">
									<c:if test='${login.userType=="teacher"}'>
										<li><a title="All Professors"
											href="/gaon/student/addstudent.action"><span
												class="mini-sub-pro">학생추가</span></a></li>
									</c:if>

									<c:choose>
										<c:when test='${login.userType=="admin"}'>
											<li><a title="All Professors" href="/gaon/admin/gradeList.action?academyNo=${login.academyNo}"><span
													class="mini-sub-pro">성적</span></a></li>

											<li><a title="Add Professor"
												href="/gaon/admin/coursesList.action?academyNo=${login.academyNo}"><span
													class="mini-sub-pro">상담</span></a></li>
											<li><a title="Edit Professor"
												href="/gaon/admin/coursesList.action?academyNo=${login.academyNo}"><span
													class="mini-sub-pro">출결</span></a></li>
										</c:when>
										<c:when test='${login.userType=="teacher"}'> 
											<li><a title="All Professors" href="/gaon/grade/list.action?teacherNo=${login.memberNo }"><span
													class="mini-sub-pro">성적</span></a></li>

											<li><a title="Add Professor"
												href="/gaon/consult/list.action?teacherNo=${login.memberNo}"><span
													class="mini-sub-pro">상담</span></a></li>
											<li><a title="Edit Professor"
												href="/gaon/student/checkcourse.action?teacherName=${login.name}"><span
													class="mini-sub-pro">출결</span></a></li>
										</c:when>
									</c:choose>

								</ul></li>
						</c:if>


						<%-- <c:if
							test='${login.userType=="admin" or login.userType=="teacher" or login.userType=="student"}'>
							<li><a href="all-professors.html"
								aria-expanded="false"><span
									class="educate-icon educate-apps icon-wrap"></span> <span
									class="mini-click-non">학원건의사항</span></a>
								<ul class="submenu-angle" aria-expanded="false">
								</ul></li>
						</c:if> --%>





					</ul>
				</nav>
			</div>
		</nav>
	</div>
	<!-- End Left menu area -->


</body>
</html>