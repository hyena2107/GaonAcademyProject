<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
<head>
<jsp:include page="/WEB-INF/views/include/css.jsp" />
</head>
<body>	
	<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
	<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />
	<div class="all-content-wrapper"> 
		<br> <br> <br> <br> <br> <br> <br>	
		<div class="container-fluid" style="text-align:center">	
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="margin:0 auto">
                        <div class="profile-info-inner">
                            <div class="profile-img" style="text-align:center">   
                                <img src="/gaon/resources/upload/${detail.savedFileName }" alt="" style="margin:0 auto;width:350px;height:350px;">
                            </div>
                            <div class="profile-details-hr">
                                <div class="row">
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr">
                                            <p><b>Name</b><br> ${detail.name }</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr tb-sm-res-d-n dps-tb-ntn">
                                            <p><b>Designation</b><br> Head of Dept.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr">
                                            <p><b>Email ID</b><br> ${detail.email }</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr tb-sm-res-d-n dps-tb-ntn">
                                            <p><b>Phone</b><br> ${detail.phone }</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="address-hr">
                                            <p><b>Address</b><br> E104, catn-2, Chandlodia Ahmedabad Gujarat, UK.</p>
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