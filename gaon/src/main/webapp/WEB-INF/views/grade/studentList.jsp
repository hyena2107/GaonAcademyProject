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
		
		  var now = new Date();
		  var month = (now.getMonth() + 1);               
		  var day = now.getDate();
		  if (month < 10) 
		      month = "0" + month;
		  if (day < 10) 
		      day = "0" + day;
		  var today = now.getFullYear() + '-' + month + '-' + day;
		  
		  var startDate= $("#dates").val(today);
		
		$(".asset-inner").on("click","#addgrade",function(e){
			var studentNo=$(this).attr("data-studentNo");
			var courseNo=$(this).attr("data-courseNo");
			var testName=$("#testName").val();
			var testDate=$("#dates").val();
			var grade=$("#grade"+studentNo).val();
			
			$.ajax({
				url:"addgrade.action",
				data:{"studentNo":studentNo,"courseNo":courseNo,"testName":testName,"testDate":testDate,"grade":grade},
				method:"post",
				success:function(data,status,xhr){
					alert("성적을 추가하였습니다.");					
				}
			});
		});
		
	})
	
	
	$(function(){
		$(".viewConsultList").click(function(e){
			
			var studentNo = $(this).attr("data-studentNo");
			var studentName = $(this).attr("data-studentName");
			var courseNo = ${courseNo}
			var type = '${type}';
			
			

				if($("#studentConsultList"+studentNo).css("display")=="none"){
					$("#studentConsultList"+studentNo).css("display","block");
					
						$("#studentConsultList"+studentNo).load("studentgradelist.action",{"studentNo":studentNo,"courseNo":courseNo})
				
				}else{
					$("#studentConsultList"+studentNo).css("display","none");
				}
				
			
			
			
			
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
		<h3>&nbsp;&nbsp;&nbsp;학생 목록</h3>
		<div style="margin:0 auto;text-align: center; " >    
			<div >
			<input name="testDate" class="form-control" id="dates"style="width: 300px; margin: 0 auto;" type="date">
			</div><br>
			<div >
			<input class="form-control"  style="width: 300px; margin: 0 auto;"type="text" id="testName" placeholder="시험명을 입력해주세요"><br>
			</div>
		</div>
		<div id="load">
		<c:forEach var="studentList" varStatus="stat" items= "${studentList}">
		<div class="product-status mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-status-wrap">
                            
                            <div class="asset-inner">
                                <table>
                                    <tbody style="text-align: center;"><tr>
                                        <th style="width: 80px;text-align: center;">No</th>
                                        <th style="width: 170px;text-align: center;">사진</th>
                                        <th style="width: 250px;text-align: center">이름</th>
                                        <th style="text-align: center;width: 320px">점수 입력</th>
                                        <th style="text-align: center;width: 320px">등록현황</th>
                                        <c:choose>
                                        	<c:when test="${login.userType == 'admin'}">
                                        		<th>출석률확인</th>
                                        	</c:when>
                                        	<c:when test="${login.userType == 'teacher'}">
                                        		<th>성적 추가</th>
                                        	</c:when>
                                        </c:choose>
                                        
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">${stat.count}</td>
                                        <td style="text-align: center;"><img src="/gaon/resources/upload/${studentList.savedFileName}"></td>
                                        <td style="text-align: center;"><a class="viewConsultList" href="javascripts:" data-studentNo="${studentList.memberNo}" data-studentName= "${studentList.name}">${studentList.name}</a></td>
                                        <td style="text-align: center;"><input type="text" id="grade${studentList.memberNo }"></td>
                                        <td style="text-align: center;">
                                        <c:choose>
                                        	<c:when test="${studentList.deleted==false}">
                                            <button class="pd-setting">Active</button>
                                            </c:when>
                                            <c:when test="${studentList.deleted==true}">
                                            <button class="ds-setting">Disabled</button>
                                            </c:when>
                                        </c:choose>
                                        </td>
                                       <c:choose>
                                       	<c:when test="${login.userType == 'admin'}">
                                       		<td></td>
                                       	</c:when>
                                       	
                                       	<c:when test="${login.userType == 'teacher'}">
                                       		<td>
                                            
                                            <button type="button" class="btn btn-custon-rounded-two btn-success" id="addgrade" data-studentNo="${studentList.memberNo }" data-courseNo="${courseNo}">																			
												성적 추가
											</button>
                                           
                                        </td>
                                       	</c:when>
                                       </c:choose>
                                     
                                    </tr>
                                    
                                </tbody>
                               </table>
                                <div id="studentConsultList${studentList.memberNo}" style="border:solid 1px lightgray;height:250px;overflow-y: scroll;display:none">
            
        			        	</div>
                   
                          </div>
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
		</c:forEach>
		
		
	</div>

	</div>
</body>
</html>