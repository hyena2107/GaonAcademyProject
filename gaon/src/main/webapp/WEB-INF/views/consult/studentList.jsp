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
		
		$(".viewConsultList").click(function(e){
			
			var studentNo = $(this).attr("data-studentNo");
			var studentName = $(this).attr("data-studentName");
			var courseNo = ${courseNo}
			var type = '${type}';
			
			if(${login.userType == "admin"}){

				if($("#studentConsultList"+studentNo).css("display")=="none"){
					$("#studentConsultList"+studentNo).css("display","block");
					if(type=="attend"){
						$("#studentConsultList"+studentNo).load("/gaon/admin/studentAttendList.action",{"studentNo":studentNo,"courseNo":courseNo})
					}else if(type=="consult"){
						$("#studentConsultList"+studentNo).load("studentConsultList.action",{"studentNo":studentNo,"studentName":studentName})
					}
				}else{
					$("#studentConsultList"+studentNo).css("display","none");
				}
				
			}else if(${login.userType == "teacher"}){

				if($("#studentConsultList"+studentNo).css("display")=="none"){
					$("#studentConsultList"+studentNo).css("display","block");
					$("#studentConsultList"+studentNo).load("studentConsultList.action",{"studentNo":studentNo,"studentName":studentName})
				}else{
					$("#studentConsultList"+studentNo).css("display","none");
				}
			}
		});
		
		
		$("#search").keyup(function(e){
			var data = $("#search").val();
			var courseNo = ${courseNo};
			$("#research").load("research.action",{"name":data,"courseNo":courseNo});
			
		})	
		
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
		<div class="product-status mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-status-wrap">
                            
                            <div class="asset-inner">
		<input type="text" id="search" style="width:30%;float:right;margin-bottom: 5px" placeholder="검색어를 입력해주세요">
		</div></div></div></div></div></div>
		<div id="research">
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
                                        <th style="text-align: center;width: 320px">등록현황</th>
                                        <c:choose>
                                        	<c:when test="${login.userType == 'admin'}">
                                        		<th>출석률확인</th>
                                        	</c:when>
                                        	<c:when test="${login.userType == 'teacher'}">
                                        		<th>상담등록</th>
                                        	</c:when>
                                        </c:choose>
                                        
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">${stat.count}</td>
                                        <td style="text-align: center;"><img src="/gaon/resources/upload/${studentList.savedFileName}"></td>
                                        <td style="text-align: center;"><a class="viewConsultList" href="javascripts:" data-studentNo="${studentList.memberNo}" data-studentName= "${studentList.name}">${studentList.name}</a></td>
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
                                            <a href="/gaon/consult/consultWrite.action?studentNo=${studentList.memberNo}&teacherNo=${login.memberNo}&courseNo=${courseNo}">
                                            <button data-toggle="tooltip" class="pd-setting-ed" data-original-title="Edit">
                                            <i class="fa fa-pencil-square-o" aria-hidden="true">
                                            </i>
                                            </button>
                                            </a>
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