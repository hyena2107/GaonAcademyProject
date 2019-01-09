<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>

<div class="breadcome-area">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="breadcome-list">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="breadcome-heading">
									<form id="scommentsform">
									<input type="hidden" name="sboardNo" value="${sboardNo}">
									<input type="hidden" name="savedFileName" value="${login.savedFileName}">
										<input name="scomments" type="text" placeholder="message.............."
											class="search-int form-control">
									</form>
								</div>
							</div>
							<a href="javascripts:" id="writecomment"><button class="btn btn-primary"
									style="float: right">보내기</button></a>
						</div>

					</div>

				</div>

			</div>
		</div>
	</div>
	
</body>
</html>