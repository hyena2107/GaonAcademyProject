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

	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript">
	
		$(function(){
			
			$(".all-content-wrapper").on("click","#writesboard",function(e){
				var teacherNo;
				var studentNo;
				
				if(${login.userType=="teacher"}){
					
					teacherNo = ${login.memberNo};
					studentNo = $(this).attr("data-memberNo");
					
				}else if(${login.userType=="student"}){
					
					studentNo = ${login.memberNo};
					teacherNo = $(this).attr("data-memberNo");
					
				}
				
				$.ajax({
					
					url:"writesboard.action",
					data:{"teacherNo":teacherNo,"studentNo":studentNo},
					success:function(data,status,xhr){
						location.href="viewsboard.action?sboardNo="+data
					},
					
				});
				
			});
			
		});
		
		
	
	</script>


	<div class="all-content-wrapper">
		<br> <br> <br> <br> <br> <br> <br>
		<div id="sboard">
			<div class="contacts-area mg-b-15">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="product-status-wrap drp-lst">
								<h4>친구 목록</h4>
								<div class="asset-inner">
									<table>
										<tr>
											<th>이름</th>
											<th>Email</th>
											<th>Phone</th>											
										</tr>
										<c:choose>
											<c:when test="${not empty memberList}">
												<c:forEach var="list" items="${memberList}">
													
													
													<tr>
														<td>
														<a href="javascripts:"	data-memberNo="${list.memberNo}" id="writesboard">
															<div class="profile-hdtc" style="width: 100px; height: 100px; float:left">
																<img src="/gaon/resources/upload/${list.savedFileName }" class="message-avatar"	style="width: 100px; height: 100px" /> 
															</div>
														</a>
														
														<div style="display: table-cell;vertical-align: middle;width: 100px; height: 100px;text-align:center">
															<span style="vertical-align: middle;">${list.name}</span>
														</div>
														
														</td>
														<td>${list.email }</td>
														<td>${list.phone }</td>
													</tr>
													
												</c:forEach>
											</c:when>
											<c:otherwise>
												<h1 style="text-align: center">등록된 회원이 존재하지 않습니다.</h1>
											</c:otherwise>
										</c:choose>

									</table>
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