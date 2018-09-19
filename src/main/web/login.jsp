<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>会员登录</title>
<link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.min.js" type="javascript"></script>
<script src="${pageContext.request.contextPath}/js/messages_zh.js" type="javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" />

<style>
body {
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

.container .row div {
	/* position:relative;
				 float:left; */
	
}

font {
	color: #666;
	font-size: 22px;
	font-weight: normal;
	padding-right: 17px;
}
</style>
	<%--<script>--%>
		<%--function changeImgeFn() {--%>
			<%--document.getElementById("changeImgeId").src="${pageContext.request.contextPath}/changeImge?time="+new Date().getTime();--%>
        <%--}--%>
	<%--</script>--%>
</head>
<body>

	<!-- 引入header.jsp -->
	<jsp:include page="/header.jsp"></jsp:include>


	<div class="container"
		style="width: 100%; height: 460px; background: #FF2C4C url('/images/loginbg.jpg') no-repeat;">
		<div class="row">
			<div class="col-md-7">
				<!--<img src="./image/login.jpg" width="500" height="330" alt="会员登录" title="会员登录">-->
			</div>

			<div class="col-md-5">
				<div
					style="width: 455px; border: 1px solid #E7E7E7; padding: 20px 0 20px 30px; border-radius: 5px; margin-top: 60px; background: #fff;">
					<font>会员登录</font>USER LOGIN
					<div>&nbsp;</div>
					<form id="loginFrom"  class="form-horizontal" method="post" action="${pageContext.request.contextPath}/user/login.action">
						<div class="form-group">
							<label for="username" class="col-sm-3 control-label">用户名</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="username" name="username"
									placeholder="请输入用户名">
							</div>
							<div class="col-sm-3" style="color: red;font-size: 12px;padding-left: 0px ;padding-top: 7px">
								<span><%=request.getAttribute("info")==null?"":request.getAttribute("info")%></span>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">密码</label>
							<div class="col-sm-6">
								<input type="password" class="form-control" id="password" name="password"
									placeholder="请输入密码">
							</div>
						</div>
						<%--<div class="form-group">--%>
							<%--<label for="inputPassword3" class="col-sm-3 control-label">验证码</label>--%>
							<%--<div class="col-sm-3">--%>
								<%--<input type="text" class="form-control" id="inputPassword3" style="width: 111px"--%>
									<%--placeholder="请输入验证码" name="login_checkcode">--%>
							<%--</div>--%>
							<%--<div class="col-sm-3" style="padding-left: 17px ">--%>
								<%--<img src="${pageContext.request.contextPath}/changeImge" id="changeImgeId" onclick="changeImgeFn()"/>--%>
							<%--</div>--%>
						<%--</div>--%>
						<%--<div class="form-group" style="padding-left: 124px ;font-size: 10px;color: red">--%>
							<%--<%=request.getAttribute("checkInfo")==null?"":request.getAttribute("checkInfo")%>--%>
						<%--</div>--%>
						<%--<div class="form-group">--%>
							<%--<div class="col-sm-offset-2 col-sm-10">--%>
								<%--<div class="checkbox">--%>
									<%--<label> <input type="checkbox"> 自动登录--%>
									<%--</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
									<%--<label>--%>
										<%--<input type="checkbox"> 记住用户名--%>
									<%--</label>--%>
								<%--</div>--%>
							<%--</div>--%>
						<%--</div>--%>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<input type="submit" width="100" value="登录" name="submit"
									style="background: url('/img/login.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0); height: 35px; width: 100px; color: white;">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- 引入footer.jsp -->
	<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>