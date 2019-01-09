
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div class="text-center custom-login">
	<h1>학원 회원가입</h1>
</div>
<br>

<a class="btn btn-default btn-block" href="javascript:"
	style="height: 40px; width: 450px; margin: 0 auto"
	id="memberregisterbtn">교사 회원가입</a>
<br>
<div class="content-error" id="registerbox">
	<div class="hpanel">
		<div class="panel-body">
			<form id="academyform">
				<div class="row">
					<div class="form-group col-lg-12">
						<label>ID</label> <input class="form-control" name="id">
					</div>
					<div class="form-group col-lg-12">
						<label>Password</label> <input class="form-control"
							type="password" name="password">
					</div>
					<div class="form-group col-lg-12">
						<label>Phone</label> <input class="form-control" name="phone">
					</div>
					<div class="form-group col-lg-12">
						<label>E-mail</label> <input class="form-control" name="email">
					</div>
					<div class="form-group col-lg-12">
						<label>Academy</label> <input class="form-control"
							name="academyName">
					</div>
				</div>
				<div class="text-center">
					<a class="btn btn-default btn-block" href="javascript:"
						id="academyregister">등록하기</a> <a
						class="btn btn-default btn-block" href="/gaon">처음으로</a>
				</div>
			</form>

		</div>
	</div>
</div>