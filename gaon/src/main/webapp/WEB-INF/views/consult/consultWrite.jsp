<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/include/css.jsp" />
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(function(){
		$("#submit").click(function(e){
			alert("상담이 등록되었습니다.");
		});
	});
			

</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
	<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />
	<jsp:include page="/WEB-INF/views/include/js.jsp" />
	<div class="all-content-wrapper">
		<br> <br> <br> <br> <br>
		<div class="single-pro-review-area mt-t-30 mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-payment-inner-st">
                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div id="dropzone1" class="pro-ad">
                                                    <form action="/gaon/consult/consultWrite2.action?teacherNo=${teacherNo}&studentNo=${studentNo}" method="post" class="dropzone dropzone-custom needsclick add-professors dz-clickable" modelAttribute="consultWrite">
                                                        <div class="row">
                                                        <h3>&nbsp;&nbsp;&nbsp;상담내용입력</h3>
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="width:1100px;height:500px">
                                                                <div class="form-group">
                                                                    <input type="text" class="form-control" placeholder="상담 제목 입력" name="title">
                                                                </div>
                                                                  <div class="form-group">
                                                                    <div style="display: inline;">
                                                                    <select name="consultDetail"class="form-control" style="width:300px;display: inline;">
																		<option>선택</option>
																		<option>진로상담</option>
																		<option>수업진도</option>
																		<option>기타</option>
																	</select>
																	<input name="consultDate" class="form-control" style="width:300px;display: inline;margin-left: 10px;"type="date" >
																	<input type="hidden" name="courseNo" value="${courseNo}">
                                                                	</div>
                                                                	<div class="form-group edit-ta-resize res-mg-t-15">
                                                                    	<pre><textarea name="content" style="height:350px" rows="40" cols="100" placeholder="상담 내용 입력" name="description"></textarea></pre>
                                                                	</div>
                                                              
                                                                 </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="payment-adress">
                                                                    <button id="submit" type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
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

	</div>
</body>
</html>