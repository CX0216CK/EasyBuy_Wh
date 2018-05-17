<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>叮咚有礼</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="renderer" content="webkit">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
		<link rel="stylesheet" href="css/demo.css" />
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/fen.css" />
		<script type="text/javascript" src="js/jquery-2.2.0.min.js"></script>
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>
		<div class="box1">
			<div class="header">
				<div class="hea_nav">
					<a href="index.jsp"><img src="img/logo.png" class="logo" /></a>
					<ul>
						<a href="index.jsp">
							<li>首页</li>
						</a>
						<a href="product.jsp">
							<li>叮咚一下</li>
						</a>
						<a href="blog.jsp">
							<li>BLOG</li>
						</a>
						<a href="personal.jsp">
							<li>个人中心</li>
						</a>
						
						<a href="message.jsp">
							<li>留言板</li>
						</a>
					</ul>
				</div>
				<div class="hea_right">
					<p>
						<a href="register.jsp">注册</a>|
						<a class="login_btn">登录</a>
					</p>
					<a href="shop_car.jsp">
						<p>
							<i class="iconfont">&#xe600;</i>
							<span>0件</span>
						</p>
					</a>

				</div>
			</div>
			<div class="header2">
				<img src="img/phone_meau.png" class="meau" />
				<img src="img/logo3.png" class="logo" />
				<a href="shop_car.jsp"><i class="iconfont">&#xe600;</i><span>1</span></a>
				<ul class="meau_box">
					<a href="index.jsp">
						<li>首页</li>
					</a>
					<a href="product.jsp">
						<li>叮咚一下</li>
					</a>
					<a href="blog.jsp">
						<li>BLOG</li>
					</a>
					<a href="personal.jsp">
						<li>个人中心</li>
					</a>
					<a href="message.jsp">
						<li>留言板</li>
					</a>
					<p style="border-right:1px #fff solid;" class="login_btn">登录</p>
					<a href="register.jsp">
						<p>注册</p>
					</a>
				</ul>
			</div>
			<img src="img/PC_h.jpg" class="pc_h" />
			<img src="img/mobile_h.jpg" class="mobile_h" />
			<!--定位1-->
			<div class="ding"></div>
		</div>
		<div class="conpou">
			<div class="conpou_box">
				<img src="img/close.png" class="gb"/>
				<img src="img/code_pic.png" />
				<input type="text" placeholder="请输入专属吗码,例：CC520"/>
				<a href="message.html">查看模版案例>></a>
				<p>确定</p>
			</div>
		</div>
		
		<div class="img_box">
			<img src="img/PC.jpg" class="pc" />
			<img src="img/mobile.jpg" class="mobile" />
			<!--定位2-->
			<a href="product.jsp">
				<div class="ding2"></div>
			</a>
		</div>

		<div class="login_bg">
			<div class="login">
				<img src="img/close.png" class="close" />
				<img src="img/login.png" style="margin: 25px 0px;" />
				<form action="" method="post">
					<p class="list">
						<img src="img/login_pic2.png" />
						<input type="text" placeholder="请输入注册时的邮箱/手机号" />
					</p>
					<p class="list">
						<img src="img/login_pic3.png" />
						<input type="password" placeholder="请输入注册时的邮箱/手机号" />
					</p>
					<a href="find.jsp">忘记密码?</a>
					<p>
						<a href="register.jsp">注册</a>
						<a>登录</a>
					</p>
				</form>
			</div>
		</div>
		<script type="text/javascript">
			$(function() {
				$(".ding").click(function() {
					$(".conpou").fadeIn();
				});
				$(".gb").click(function() {
					$(".conpou").fadeOut();
				});
				$(".close").click(function() {
					$(".login_bg").fadeOut();
				});
				$(".login_btn").click(function() {
					$(".login_bg").slideDown();
					$(".meau_box").slideUp();
				});
				$(".meau").on("click", function(e) {
					$(".meau_box").slideToggle();
					$(document).one("click", function() {
						$(".meau_box").fadeOut();
					});
					e.stopPropagation();
				});
				$(".meau").on("click", function(e) {
					e.stopPropagation();
				});
			});
		</script>
	</body>

</html>