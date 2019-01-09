<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>건의사항목록</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon
		============================================ -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<!-- Google Fonts
		============================================ -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
	rel="stylesheet">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- owl.carousel CSS
		============================================ -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/owl.transitions.css">
<!-- animate CSS
		============================================ -->
<link rel="stylesheet" href="css/animate.css">
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet" href="css/normalize.css">
<!-- meanmenu icon CSS
		============================================ -->
<link rel="stylesheet" href="css/meanmenu.min.css">
<!-- main CSS
		============================================ -->
<link rel="stylesheet" href="css/main.css">
<!-- educate icon CSS
		============================================ -->
<link rel="stylesheet" href="css/educate-custon-icon.css">
<!-- morrisjs CSS
		============================================ -->
<link rel="stylesheet" href="css/morrisjs/morris.css">
<!-- mCustomScrollbar CSS
		============================================ -->
<link rel="stylesheet"
	href="css/scrollbar/jquery.mCustomScrollbar.min.css">
<!-- metisMenu CSS
		============================================ -->
<link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
<link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
<!-- calendar CSS
		============================================ -->
<link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
<link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
<!-- x-editor CSS
		============================================ -->
<link rel="stylesheet" href="css/editor/select2.css">
<link rel="stylesheet" href="css/editor/datetimepicker.css">
<link rel="stylesheet" href="css/editor/bootstrap-editable.css">
<link rel="stylesheet" href="css/editor/x-editor-style.css">
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet" href="css/data-table/bootstrap-table.css">
<link rel="stylesheet" href="css/data-table/bootstrap-editable.css">
<!-- style CSS
		============================================ -->
<link rel="stylesheet" href="style.css">
<!-- responsive CSS
		============================================ -->
<link rel="stylesheet" href="css/responsive.css">
<!-- modernizr JS
		============================================ -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">

$(function(){
	
	
	//댓글
	$("#submit").on("click",function(e){
		var data = $("#comments").serialize();
		
		$.ajax({
			url:"writecomment.action",
			method:"post",
			data:data,
			success:function(data,status,xhr){
				
				$(".form-control").val("");
				
				//목록 갱신
				
				$("#commentlist").load("getcomment.action",{"boardno":${vo.boardno}});			
				
			}
		});
		
	});
	
	
	//편집
	$("#commentlist").on("click","#edit",function(e){
		
		var responseno = $(this).attr("data-responseno");
		
		$("#commentpage"+responseno).css({"display":"none"});
		$("#editpage"+responseno).css({"display":"block"});
	});
	
	//취소
	
	$("#commentlist").on("click","#cancel",function(e){
		
		var responseno = $(this).attr("data-responseno");
		
		$("#commentpage"+responseno).css({"display":"block"});
		$("#editpage"+responseno).css({"display":"none"});
		
		$("#comment"+responseno).val($("#commentpage"+responseno+" p").html());
		
		
	});

	//삭제
	$("#commentlist").on("click","#delete",function(e){
		
		var responseno = $(this).attr("data-responseno");
		
		$.ajax({
			url : "deletecomment.action",
			data : {"responseno":responseno},
			success : function(data,status,xhr){	
				$("#commentlist").load("getcomment.action",{"boardno":${vo.boardno}});
			}
		});
		
		
	});
	
			
	//수정
	
	$("#commentlist").on("click","#update",function(e){
		
		var responseno = $(this).attr("data-responseno");
		var content = $("#comment"+responseno).val();
		
		$.ajax({
			url : "updatecomment.action",
			data : {"responseno":responseno,"content":content},
			
			success : function(data,status,xhr){
				$("#commentlist").load("getcomment.action",{"boardno":${vo.boardno}});					
			}
		});
		
	});
	
	
	
});

</script>
</head>


<body>

<jsp:include page="/WEB-INF/views/include/js.jsp" />
<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
<jsp:include page="/WEB-INF/views/include/css.jsp" />
<jsp:include page="/WEB-INF/views/include/footer.jsp" />






</body>
</html>





















