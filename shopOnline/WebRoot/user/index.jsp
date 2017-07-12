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
<title>个人</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/index.css">
<meta name="viewport"
	content="width=device-width,initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="../layui/css/layui.css">
<script type="text/javascript" src="../layui/layui.js"></script>
</head>
<body>
	<nav class="nav navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a href="../index.jsp" class="navbar-brand" style="padding:0;">
					<img src="../img/3.jpg" style="height:50px;width:80px;margin:auto;">
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
		<div class="container" style="min-height: 309px;">
			<div class="row" style="margin-top: 20px;">
				<div class="col-md-8 info-left">
					<div class="container-fluid" style="padding:0px;">
						<div class="layui-tab layui-tab-brief"
							lay-filter="docDemoTabBrief">
							<ul class="layui-tab-title">
								<li class="tab layui-this">待发货</li>
								<li class="tab">已发货</li>
								<li class="tab">已签收</li>
								<li class="tab">全部订单</li>
								<li class="tab">个人信息</li>
							</ul>
							<div class="layui-tab-content">
								<div class="layui-tab-item layui-show item">
									<div class="row info-content">
										<a href="">
											<p style="text-align: center;height: 20px;line-height: 30px;">订单号：1232423</p>
											<hr style="width: 100%;height: 3px;margin: 10 0 10 0">
											<div id="order_list" class="col-md-12 col-sm-12 col-xs-12">
												<div class="col-md-5 col-sm-5 col-xs-5">
													<img src="../img/info/8.jpg" class="img-responsive">
												</div>
												<div class="col-md-7 col-sm-7 col-xs-7">
													<h4>爱马仕拖鞋</h4>
													<p>价格：￥253</p>
												</div>
											</div>
											<div id="order_list" class="col-md-12 col-sm-12 col-xs-12">
												<div class="col-md-5 col-sm-5 col-xs-5">
													<img src="../img/info/8.jpg" class="img-responsive">
												</div>
												<div class="col-md-7 col-sm-7 col-xs-7">
													<h4>爱马仕拖鞋</h4>
													<p>价格：￥253</p>
												</div>
											</div>
										</a>
									</div>
									<div class="row info-content">
										<a href="">
											<p style="text-align: center;height: 20px;line-height: 30px;">订单号：1232423</p>
											<hr style="width: 100%;height: 3px;margin: 10 0 10 0">
											<div id="order_list" class="col-md-12 col-sm-12 col-xs-12">
												<div class="col-md-5 col-sm-5 col-xs-5">
													<img src="../img/info/8.jpg" class="img-responsive">
												</div>
												<div class="col-md-7 col-sm-7 col-xs-7">
													<h4>爱马仕拖鞋</h4>
													<p>价格：￥253</p>
												</div>
											</div>
										</a>
									</div>
								</div>
								<div class="layui-tab-item item">
									<div class="row info-content">
										<a href="">
											<p style="text-align: center;height: 20px;line-height: 30px;">订单号：1232423</p>
											<hr style="width: 100%;height: 3px;margin: 10 0 10 0">
											<div id="order_list" class="col-md-12 col-sm-12 col-xs-12">
												<div class="col-md-5 col-sm-5 col-xs-5">
													<img src="../img/info/8.jpg" class="img-responsive">
												</div>
												<div class="col-md-7 col-sm-7 col-xs-7">
													<h4>爱马仕拖鞋</h4>
													<p>价格：￥253</p>
												</div>
											</div>
										</a>
									</div>
								</div>
								<div class="layui-tab-item item"></div>
								<div class="layui-tab-item item"></div>
								<div class="layui-tab-item item">
									<div class="row info-content">
										<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
											<img src="../img/info/8.jpg" class="img-responsive">
											<div class="layui-form layui-form-pane">
												<div class="layui-form-item form-group" pane>
													<label class="layui-form-label">姓名:</label>
													<div class="layui-input-block"
														style="line-height: 38px;text-indent: 2rem;">王奇林</div>
												</div>
												<div class="layui-form-item" pane>
													<label class="layui-form-label">性别：</label>
													<div class="layui-input-block"
														style="line-height: 38px;text-indent: 2rem;">男</div>
												</div>
												<div class="layui-form-item" pane>
													<label class="layui-form-label">电话：</label>
													<div class="layui-input-block"
														style="line-height: 38px;text-indent: 2rem;">
														17864279623</div>
												</div>
												<div class="layui-form-item" pane>
													<label class="layui-form-label">地址：</label>
													<div class="layui-input-block"
														style="line-height: 38px;text-indent: 2rem;">青岛市</div>
												</div>
												<div class="layui-form-item">
													<div class="layui-input-block">
														<button class="layui-btn" lay-submit lay-filter="formDemo"
															data-toggle="modal" data-target="#myModal">更改资料</button>
														<div class="modal fade" id="myModal" tabindex="-1"
															role="dialog" aria-labelledby="myModalLabel">
															<div class="modal-dialog" role="document">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close"
																			data-dismiss="modal" aria-label="Close">
																			<span aria-hidden="true">&times;</span>
																		</button>
																		<h4 class="modal-title" id="myModalLabel">用户信息更改</h4>
																	</div>
																	<div class="modal-body">
																		<form class="form-horizontal">
																			<div class="form-group">
																				<label for="inputEmail3"
																					class="col-sm-2 control-label">用戶名</label>
																				<div class="col-sm-10">
																					<input type="email" class="form-control"
																						id="inputEmail3" placeholder="">
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword3"
																					class="col-sm-2 control-label">密码</label>
																				<div class="col-sm-10">
																					<input type="password" class="form-control"
																						id="inputPassword3" placeholder="密码">
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="inputPassword4"
																					class="col-sm-2 control-label">地址</label>
																				<div class="col-sm-10">
																					<input type="text" class="form-control"
																						id="inputPassword4" placeholder="">
																				</div>
																			</div>
																		</form>
																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-default" id="right">确认</button>
																		<button type="button" class="btn btn-primary" id="cancel">取消</button>
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
				</div>


				<div class="col-md-4 info-right hidden-xs hidden-sm"
					style="margin-top: 58px;">
					<!-- hidden-xs hidden-sm 小屏幕影藏 -->
					<blockquote>
						<h2>购物车</h2>
					</blockquote>

					<div class="container-fluid" id="hotGoods">

						<div class="row">
							<a href="">
								<div class="col-md-4 col-sm-4 col-xs-4"
									style="padding:0px;margin:12px 0;">
									<img src="../img/info/3.jpg" alt="" class="img-responsive">
								</div>
								<div class="col-md-6 col-sm-6 col-xs-6"
									style="padding-right: 0;padding-top: 10px;">
									<h4>名称</h4>
									<p>单价：￥123</p>
								</div>
								<div class="col-md-2 col-sm-2 col-xs-2"
									style="padding-right: 0;padding-top: 10px;">
									<h4>数量</h4>
									<button class="btn">+</button>
									<button class="btn" style="width:35px;">-</button>
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
	<script type="text/javascript" src="../js/user/me.js"></script>
</body>
</html>