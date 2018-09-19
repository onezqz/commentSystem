<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>会员注册</title>
<link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css" />
<script src="/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="/js/jquery.validate.min.js"></script>
<script src="/js/messages_zh.js"></script>
<script src="/js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="/css/style.css" type="text/css" />

<style>
body {
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}
/*.error{*/
    /*color: red;*/
    /*font-size: 13px;*/
/*}*/
font {
	color: #3164af;
	font-size: 18px;
	font-weight: normal;
	padding: 0 10px;
}

</style>

<script>
    <%--//自定义校验--%>
    <%--$.validator.addMethod(--%>
        <%--//校验名称--%>
        <%--"checkUserName",--%>
        <%--function (value,element,params) {--%>
            <%--var flag = false;--%>
            <%--//使用ajax同步校验，不能使用异步--%>
            <%--$.ajax({--%>
                <%--"async":false,--%>
                <%--"url":"${pageContext.request.contextPath}/checkUserName",--%>
                <%--"data":{"username":value},--%>
                <%--"type":"POST",--%>
                <%--"dataType":"json",--%>
                <%--"success":function (data) {--%>
                    <%--flag=data.isExist;--%>
                <%--}--%>
            <%--});--%>
            <%--return flag;  //返回true 表示通过校验，返回false 表示不通过校验--%>
    <%--});--%>

    <%--//校验--%>
    <%--$(function () {--%>
        <%--$("#myform").validate({--%>
            <%--rules:{--%>
                <%--"username":{--%>
                    <%--"required":true,--%>
                    <%--"checkUserName":true--%>
                <%--},--%>
                <%--"password":{--%>
                    <%--"required":true,--%>
                    <%--"rangelength":[6,12]--%>
                <%--},--%>
                <%--"confirmpwd":{--%>
                    <%--"required":true,--%>
                    <%--"rangelength":[6,12],--%>
                    <%--"equalTo":"#password"--%>
                <%--},--%>
                <%--"email":{--%>
                    <%--"required":true,--%>
                    <%--"email":true--%>
                <%--}--%>
            <%--},--%>
            <%--messages:{--%>
                <%--"username":{--%>
                    <%--"required":"用户名不能为空",--%>
                    <%--"checkUserName":"用户名已存在"--%>
                <%--},--%>
                <%--"password":{--%>
                    <%--"required":"密码不能为空",--%>
                    <%--"rangelength":"密码长度6-12位"--%>
                <%--},--%>
                <%--"confirmpwd":{--%>
                    <%--"required":"密码不能为空",--%>
                    <%--"rangelength":"密码长度6-12位",--%>
                    <%--"equalTo":"两次密码不一致"--%>
                <%--},--%>
                <%--"email":{--%>
                    <%--"required":"邮箱不能为空",--%>
                    <%--"email":"邮箱格式不正确"--%>
                <%--}--%>
            <%--},--%>
            <%--errorPlacement:function(error,element){--%>
                <%--error.appendTo(element.parent().parent());--%>
            <%--}--%>
        <%--});--%>
    <%--});--%>
    <%--// $("#changeImge").bind("click",function () {--%>
    <%--//     alert("aa");--%>
    <%--// })--%>
    function changeImgFn() {
        document.getElementById("changeImgId").
            src="${pageContext.request.contextPath}/changeImg.action?time="+new Date().getTime();
    }

</script>

</head>
<body>

	<!-- 引入header.jsp -->
	<jsp:include page="${pageContext.request.contextPath}/header.jsp"></jsp:include>
	<div class="container"
		style="width: 100%; background: url('/image/regist_bg.jpg');">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"
				style="background: #fff; padding: 40px 80px; margin: 30px; border: 7px solid #ccc;">
				<font>会员注册</font>USER REGISTER
				<form  id="myform" method="post" action="${pageContext.request.contextPath}/user/register.action" class="form-horizontal" style="margin-top: 5px;">
					<div class="form-group">
						<label for="username" class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="username" name="username"
								   placeholder="请输入用户名">
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="password" name="password"
								placeholder="请输入密码">
						</div>
					</div>
					<div class="form-group">
						<label for="confirmpwd" class="col-sm-2 control-label">确认密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="confirmpwd" name="confirmpwd"
								placeholder="请输入确认密码">
						</div>
					</div>
					<div class="form-group">
						<label for="email" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-6">
							<input type="email" class="form-control" id="email" name="email"
								placeholder="Email">
						</div>
					</div>
					<div class="form-group">
						<label for="checkcode" class="col-sm-2 control-label">验证码</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="checkcode" name="checkcode">

						</div>
						<div class="col-sm-2">
							<img src="${pageContext.request.contextPath}/changeImg.action" id="changeImgId" onclick="changeImgFn()" />
						</div>
                        <font  style="color: red ;font-size: 14px ;padding-left: 78px">
                            <%=request.getAttribute("checkcode_info")==null?"":request.getAttribute("checkcode_info")%>
                        </font>

					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" width="100" value="注册" name="submit"
								style="background: url('/img/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0); height: 35px; width: 100px; color: white;">
						</div>
					</div>
				</form>
			</div>

			<div class="col-md-2"></div>

		</div>
	</div>

	<!-- 引入footer.jsp -->
	<jsp:include page="${pageContext.request.contextPath}/footer.jsp"></jsp:include>

</body>
</html>




