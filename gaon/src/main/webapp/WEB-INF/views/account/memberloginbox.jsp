
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="content-error">
	<div class="text-center custom-login">
		<h2>교사 / 학생 로그인</h2>
	</div>
	<div class="hpanel">
		<div class="panel-body">
			<form id="memberloginform">
				<div class="row">

					<div class="form-group col-lg-12">
						<label>ID</label> <input class="form-control" name="id">
					</div>
					<div class="form-group col-lg-12">
						<label>Password</label> <input class="form-control"
							type="password" name="password">
					</div>
				</div>
				<div class="text-center">
					<a class="btn btn-default btn-block" href="javascript:"
						id="memberlogin">로그인</a> <a class="btn btn-default btn-block"
						href="/gaon">뒤로가기</a>
				</div>
			</form>

		</div>
	</div>
</div>
<div class="text-center login-footer">
				
				<p>
					등록을 안하셨나요? <a href="/gaon/account/register.action"> 지금 등록하세요!</a>
				</p>
			</div>