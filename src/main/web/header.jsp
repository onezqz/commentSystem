<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 登录 注册 购物车... -->
<div class="container-fluid">
	<div class="col-md-4">
		<img src="/img/logo.png" style="height: 74px;width: 146px"/>
	</div>
	<div class="col-md-5">
		<form class="navbar-form " role="search" style="padding-top: 20px">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search"
					   style="border: 3px solid red ;width: 350px">
			</div>
			<button type="submit" class="btn btn-default" style="background: red">Submit</button>
		</form>
	</div>
	<div class="col-md-3" style="padding-top:30px;padding-left: 37px">
		<c:if test="${user==null?false:true}">
			<ol class="list-inline">
				<li><span>您好！${user.username}</span></li>
				<li><a href="${pageContext.request.contextPath}/register.jsp">注册</a></li>
				<li><a href="${pageContext.request.contextPath}/post.jsp">发贴</a></li>
			</ol>
		</c:if>
		<c:if test="${user==null?true:false}">
			<ol class="list-inline">
				<li><a href="${pageContext.request.contextPath}/login.jsp">登录</a></li>
				<li><a href="${pageContext.request.contextPath}/register.jsp">注册</a></li>
				<li><a href="${pageContext.request.contextPath}/post.jsp">发贴</a></li>
			</ol>
		</c:if>
	</div>
</div>

<!-- 导航条 -->
<div class="container-fluid">
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">首页</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active">
						<a href="product_list.htm">生活<span class="sr-only">(current)</span></a>
					</li>&nbsp;&nbsp;&nbsp;
					<li><a href="#">学习</a></li>&nbsp;&nbsp;&nbsp;
					<li><a href="#">健身</a></li>&nbsp;&nbsp;&nbsp;
					<li><a href="#">旅游</a></li>
				</ul>
				<%--<form class="navbar-form navbar-right" role="search">--%>
					<%--<div class="form-group">--%>
						<%--<input type="text" class="form-control" placeholder="Search">--%>
					<%--</div>--%>
					<%--<button type="submit" class="btn btn-default">Submit</button>--%>
				<%--</form>--%>
			</div>
		</div>
	</nav>
</div>