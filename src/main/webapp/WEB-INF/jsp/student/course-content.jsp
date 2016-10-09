<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>课程详情页</title>
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/fontAwesome/font-awesome.min.css">
	<link rel="stylesheet" href="../css/base.css">
	<link rel="stylesheet" href="../css/index.css">

	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/index.js"></script>
</head>
<body>

<!-- header-nav -->
<div class="header-nav">
	<div class="wrap-1200">
	    <a href="#" class="headerNav-logo"><img src="../images/logo.png" alt=""></a>
		<form action="">
			<div class="search-field">
				<input type="text" placeholder="搜索课程资源" value="" class="search-input">
				<a href="#"><i class="fa fa-search"></i></a>
			</div>
		</form>
		<ul>
			<li><a href="#">登录注册</a></li>
			<li><a href=""><i class="fa  fa-question-circle"></i>帮助</a></li>
			<li><a href=""><i class="fa fa-bell-o"></i>消息</a></li>
			<li class="udown-tip">
			   <a href="javascript:void(0)">我的</a>
			   <div class="udown-message">
			   <!-- top -->
			   	  <div class="udown-top">
			   	  	<div class="left">
			   	  		<a href="#"><img src="../images/user-img.jpg" alt=""></a>
			   	  	</div>
			   	  	<div class="right">
			   	  		<div class="head">
			   	  			<p>username</p>
			   	  			<span>等级：78</span>
			   	  		</div>
			   	  		<p>过春风十里,尽荞麦青青</p>
			   	  	</div>
			   	  </div>
			   	  <!-- bottom -->
                  <div class="udown-bottom">
                  	<a href="#" class="per-set"><i class="fa fa-gear"></i>个人设置</a>
                  	<a href="#" class="login-out"><i class="fa fa-power-off"></i>退出系统</a>
                  </div>
			   </div>
			</li>
		</ul>
	</div>
</div>
<!-- /header-nav -->

<!-- class-header -->
<div class="class-header">
	<div class="wrap-1200">
		<!-- 导航 -->
		<ol class="breadcrumb">
			<li><a href="#">首页</a></li>
			<li><a href="#">${course.type.name}</a></li>
		</ol>
		<span>${course.name}</span>
	</div>
</div>

<!-- /class-header -->

<!-- 课程介绍部分 -->
<div class="mc-intro-con">
	<div class="wrap-1200">
		<div class="mc-intro-part">
			<img src="../upload/${course.coverPic}" alt="">
			<div class="mc-message">
				<h3>${course.name}</h3>
				<div class="mes-detail">
					<p>课程介绍</p>
					<div>
						${course.introduction}
					</div>
					<a href="#" class="btn btn-sm btn-success pull-right">开始学习</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /课程介绍部分 -->

<!-- main-part -->
<div class="main-part">
	<div class="wrap-1200">
		<!-- 左侧评论区 -->
		<div class="main-partL">
			<ul class="c-list">
			    <li class="c-chanel">课程章节</li>
				<c:forEach var="chapter" items="${chapters}">
					<li>
						<i class="fa fa-reorder"></i>
						<div>
							<p>第${chapter.number}章 ${chapter.name }</p>
						</div>
					</li>
				</c:forEach>
			</ul>

		</div>
		<!-- 右侧评论区 -->
		<div class="main-partR">
			<!-- 讲师信息 -->
            <div class="t-intro-field">
            	<div class="title">讲师信息</div>
            	<div class="top">
            		<a href="#"><img src="../images/user-img.jpg" alt=""></a>
            		<div class="user-header">
            			<p class="u-name"><strong>木木和弦</strong></p>
            			<p class="u-pos">职业：软件开发工程师</p>
            		</div>
            	</div>
            	<div class="intro-content">
            		<p><strong>讲师介绍</strong></p>
            		<div>
            			1988年毕业于杭州师范学院外语系，同年担任杭州电子工学院英文及国际贸易教师，1995年创办中国第一家互联网商业信息发布网站“中国黄页”，1998年出任中国国际电子商务中心国富通信息技术发展有限公司总经理，1999年创办阿里巴巴，并担任阿里集团CEO、董事局主席，2013年5月10日，辞任阿里巴巴集团CEO，继续担任阿里集团董事局主席。[2]  6月30日，马云当选全球互联网治理联盟理事会联合主席
            		</div>
            	</div>
            </div>
			<!-- 推荐 -->
			<div class="t-intro-field mt-20">
            	<div class="title">小编推荐</div>
            	<ul>
            		<li><a href="#"><img src="../images/class_01.jpg" alt="">十天精通HTML</a></li>
            		<li><a href="#"><img src="../images/class_02.jpg" alt="">微信开发工具</a></li>
            		<li><a href="#"><img src="../images/class_01.jpg" alt="">JS从入门到精通</a></li>
            		<li><a href="#"><img src="../images/class_02.jpg" alt="">Jqery插件</a></li>
            		<li><a href="#"><img src="../images/class_01.jpg" alt="">十天精通HTML</a></li>
            	</ul>
            </div>
		</div>
	</div>
</div>
<!-- /main-part -->


<!-- footer -->
<div class="footer">
 <div class="wrap-1200">
 	<ul>
		<li><a href="#">关于我们</a></li>
		<li><a href="#">意见反馈</a></li>
		<li><a href="#">友情链接</a></li>
		<li><a href="#">联系我们</a></li>
		<li><a href="#">讲师招聘</a></li>
		<li><a href="#">网站地图</a></li>

		<li class="pull-right"><a href="#">讲师申请</a></li>
		<li class="pull-right"><a href="#">管理员登录</a></li>
	</ul>
	<p>备案号:1234567890123456789</p>
 </div>	
</div>	
<!-- /footer -->
</body>
</html>