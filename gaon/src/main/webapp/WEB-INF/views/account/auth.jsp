<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
<head>
<jsp:include page="/WEB-INF/views/include/css.jsp" />
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript">
		$(function() {
			//시작
			$("#teacherlist").load("getauthlist.action?academyNo=${login.academyNo}");
						
			
			//학원 승인
			$("#teacherlist").on("click","#addacademy",function(e){
				var academyNo = $(this).attr("data-academyNo");
				var memberNo = $(this).attr("data-memberNo");
				
				$.ajax({
					url:"auth.action",
					method:"post",
					data:{"academyNo":academyNo,"memberNo":memberNo},
					success:function(data,status,xhr){
						alert("승인되었습니다.")
						$("#teacherlist").load("getauthlist.action?academyNo=${login.academyNo}");
					}
				});
			});
			
			//선생님 승인
			$("#teacherlist").on("click","#addteacher",function(e){
				var academyNo = $(this).attr("data-academyNo");
				var memberNo = $(this).attr("data-memberNo");
				
				$.ajax({
					url:"auth.action",
					method:"post",
					data:{"academyNo":academyNo,"memberNo":memberNo},
					success:function(data,status,xhr){
						alert("승인되었습니다.")
						$("#teacherlist").load("getauthlist.action?academyNo=${login.academyNo}");
					}
				});
			});

			//선생님 삭제
			$("#teacherlist").on("click","#deleteteacher",function(e){
				var memberNo = $(this).attr("data-memberNo");
				$.ajax({
					url:"deleteteacher.action",
					data:{"memberNo":memberNo},
					success:function(data,status,xhr){
						alert("삭제되었습니다.")
						$("#teacherlist").load("getauthlist.action?academyNo=${login.academyNo}"); 
					}
				});
			});
		});
	</script>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
	<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />
	<div class="all-content-wrapper">
		<br> <br> <br> <br> <br> <br> <br>
		<div class="contacts-area mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 
						<div class="product-status-wrap drp-lst" id="teacherlist">							
							
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<jsp:include page="/WEB-INF/views/include/js.jsp" />
</body>
</html>