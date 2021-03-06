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
			$("#studentlist").load("getenrolllistbox.action",{"academyNo":${academyNo},"courseNo":${courseNo}});
					
			  var now = new Date();
			  var month = (now.getMonth() + 1);               
			  var day = now.getDate();
			  if (month < 10) 
			      month = "0" + month;
			  if (day < 10) 
			      day = "0" + day;
			  var today = now.getFullYear() + '-' + month + '-' + day;
			  
			  var startDate= $("#dates").val(today);
			
			
			//enroll
			$("#studentlist").on("click", "#startcheckbox", function(e) {
				var studentNo= $(this).attr("data-studentNo");
				var courseNo= $(this).attr("data-courseNo");
				var startDate= $("#dates").val();
				$.ajax({
					url:"addstudents.action",
					data:{"studentNo":studentNo,"courseNo":courseNo,"startDate":startDate},
					success:function(data,status,xhr){
						alert(data)
						$("#studentlist").load("getstudentlistbox.action",{"academyNo":${academyNo},"courseNo":${courseNo}});
					}
				});
			});
			
			//delete
			$("#studentlist").on("click", "#endcheckbox", function(e) {
				var studentNo= $(this).attr("data-studentNo");
				var courseNo= $(this).attr("data-courseNo");
				var endDate= $("#dates").val();
				$.ajax({
					url:"deletestudents.action",
					data:{"studentNo":studentNo,"courseNo":courseNo,"endDate":endDate},
					success:function(data,status,xhr){
						alert(data)
						$("#studentlist").load("getenrolllistbox.action",{"academyNo":${academyNo},"courseNo":${courseNo}});
					}
				});
			});
			
			//list			
			$("#studentlist").on("click", "#addstudent", function(e) {
				$("#studentlist").load("getstudentlistbox.action",{"academyNo":${academyNo},"courseNo":${courseNo}});
			});
			$("#studentlist").on("click", "#enroll", function(e) {
				$("#studentlist").load("getenrolllistbox.action",{"academyNo":${academyNo},"courseNo":${courseNo}});
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
					
						<div class="product-status-wrap drp-lst" >							
							<h4>학생 목록</h4>
							<input name="startDate" class="form-control" id="dates"
								style="width: 300px; margin: 0 auto;" type="date">
								<div id="studentlist">
								
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