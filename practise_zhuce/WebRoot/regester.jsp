<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>用户注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>

<body>
	<form method="get" action="reg.servlet">
		<div class="form-group col-md-6 col-md-offset-3">
			<label for="exampleInputEmail1">ID</label> <input type="text"
				name="id" class="form-control" id="id"
				placeholder="ID">
		</div>
		<div class="form-group  col-md-6 col-md-offset-3">
			<label for="passwd">Password</label> <input
				type="password" name="passwd" class="form-control"
				id="exampleInputPassword1" placeholder="Password">

		</div><!-- 
		<div class="form-group  col-md-6 col-md-offset-3">
			<label for="exampleInputPassword1">确认密码</label> <input
				type="password" name="passwd" class="form-control"
				id="exampleInputPassword2" placeholder="Password">

		</div> -->
		<div class="form-group  col-md-6 col-md-offset-3">
			性别： <label class="radio-inline"> <input type="radio"
				name="sex" id="inlineRadio1" value="男">
				男
			</label> <label class="radio-inline"> <input type="radio"
				name="sex" id="inlineRadio2" value="女">
				女
			</label>
		</div>
		<div class="form-group  col-md-6 col-md-offset-3">
			爱好： <label class="checkbox-inline"> <input type="checkbox"
				id="inlineCheckbox1" value="乒乓球" name="hobby"> 乒乓球
			</label> <label class="checkbox-inline"> <input type="checkbox"
				id="inlineCheckbox2" value="网球" name="hobby"> 网球
			</label> <label class="checkbox-inline"> <input type="checkbox"
				id="inlineCheckbox3" value="篮球" name="hobby"> 篮球
			</label>
		</div>
		<div class="form-group  col-md-6 col-md-offset-3">
			<label for="exampleInputPassword1">个人描述</label> <textarea
				 name="description" class="form-control"
				id="description" placeholder="个人简介"></textarea>

		</div>
		<div class="  col-md-2 col-md-offset-5">
			<button type="submit" class="btn btn-default" id="submmit">注册</button>
		</div>
	</form>
</body>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="js/regester.js"></script>
</html>
