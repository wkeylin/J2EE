<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!
DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>资讯</title>
<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> 文件可能有错
	可以直接连接到网上，如下-->
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/index.css">
<meta name="viewport"
	content="width=device-width,initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- 第一个参数：width=device-width，以设备的宽度为宽度。第二个参数：initial-scale=1,百分百缩放。第三个参数：最大的缩放，也是百分百。第四个参数：禁止用户缩放 。做响应式时，加上这句话。-->
<!-- <style>
		img{height:100px;width:100px;}
	</style> -->

<link rel="stylesheet" href="layui/css/layui.css">
<script type="text/javascript" src="layui/layui.js"></script>
</head>
<body>
	<nav class="nav navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a href="index.jsp" class="navbar-brand" style="padding:0;"> <img
					src="img/3.jpg" style="height:50px;width:80px;margin:auto;">
					<!-- <span>项目实战</span> -->
				</a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-collapse">
					<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navbar-collapse">
				<ul class="nav navbar-nav navbar-right" style="margin-top:0px;">
					<li class="active"><a href="index.jsp"><span
							class="glyphicon glyphicon-home">首页</span></a></li>
					<li><a href="information.html"><span
							class="glyphicon glyphicon-list">我的</span></a></li>
					<li><a href="about.html"><span
							class="glyphicon glyphicon-question-sign">关于</span></a></li>
				</ul>
			</div>
		</div>
		</div>
	</nav>
	<div class="jumbotron">
		<div class="container">
			<hgroup>
				<h1>资讯</h1>
				<h4>企业法，萨佛诺夫的反对思考犯得上发射点分开发顺丰</h4>
			</hgroup>
		</div>
	</div>
	<div id="information">
		<div class="container">
			<div class="row" style="margin-top: 20px;">
				<div class="col-md-8 info-left">
					<div class="container-fluid" style="padding:0px;">
						<div class="layui-tab layui-tab-brief"
							lay-filter="docDemoTabBrief">
							<ul class="layui-tab-title">
								<li class="tab layui-this">服饰鞋帽</li>
								<li class="tab">美妆个护</li>
								<li class="tab">休闲零食</li>
								<li class="tab">箱包奢品</li>
								<li class="tab">生鲜水果</li>
								<li class="tab">钟表首饰</li>
							</ul>
							<div class="layui-tab-content">
								<div class="layui-tab-item layui-show item"></div>
								<div class="layui-tab-item item"></div>
								<div class="layui-tab-item item"></div>
								<div class="layui-tab-item item"></div>
								<div class="layui-tab-item item"></div>
								<div class="layui-tab-item item"></div>
							</div>
							<a id="loadMore" style="display:block;width: 100%;text-align: center;cursor: pointer;">换一批</a>
						</div>
					</div>
				</div>


				<div class="col-md-4 info-right hidden-xs hidden-sm">
					<!-- hidden-xs hidden-sm 小屏幕影藏 -->
					<blockquote>
						<h2>热销物品TOP5</h2>
					</blockquote>

					<div class="container-fluid" id="hotGoods">

						<div class="row">
							<a href="">
								<div class="col-md-5 col-sm-5 col-xs-5"
									style="padding:0px;margin:12px 0;">
									<img src="img/info/3.jpg" alt="" class="img-responsive">
								</div>
								<div class="col-md-7 col-sm-7 col-xs-7"
									style="padding-right: 0;">
									<h4>个hop地方结果碰到个顺丰快递是</h4>
									<p>admin 17/05/27</p>
								</div>
							</a>
						</div>
					</div>
					<blockquote>
						<h2>热销商铺TOP5</h2>
					</blockquote>
					<div class="container-fluid" id="hotShop">

						<div class="row">
							<a href="">
								<div class="col-md-5 col-sm-5 col-xs-5"
									style="padding:0px;margin:12px 0;">
									<img src="img/info/3.jpg" alt="" class="img-responsive">
								</div>
								<div class="col-md-7 col-sm-7 col-xs-7"
									style="padding-right: 0;">
									<h4>个hop地方结果碰到个顺丰快递是</h4>
									<p>admin 17/05/27</p>
								</div>
							</a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<footer id="footer" class="text-muted">
		<div class="container">
			<p>企业培训|合作事宜|版权控诉</p>
			<p>苏ICP 备12345678.@2009-2016 瓢dasdasdasf 是的法式咖啡</p>
		</div>
	</footer>
	<script
		src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/index/index.js"></script>
</body>
</html>