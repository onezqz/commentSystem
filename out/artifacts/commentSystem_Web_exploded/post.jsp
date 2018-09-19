<%--
  Created by IntelliJ IDEA.
  User: onezqz
  Date: 2018/7/13
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>写帖子</title>
    <link href="/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <script type="javascript" src="/js/jquery-1.11.3.min.js"></script>
    <script type="javascript" src="/js/bootstrap.min.js"></script>
    <script type="javascript" src="/js/jquery.validate.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <!-- 引入header.jsp -->
    <jsp:include page="header.jsp"></jsp:include>

    <!-- 热门话题 -->
    <div class="container-fluid" style="padding-top: 42px">
        <div class="col-md-3" style="text-align:center;height:700px;padding:1px;border: 1px solid red">

        </div>
        <<!--发帖内容 -->
        <form action="${pageContext.request.contextPath}/post.action" method="post" id="postId">
            <div class="col-md-9">
                <div class="col-md-12"
                     style="text-align:center;height:56px;padding:1px;border: 1px solid red">
                    <input type="text" id="txtTitle" name="ptitle"
                           style="width: 707px ;height:40px;padding-top: 5px" maxlength="100"
                           placeholder="输入文章标题">
                </div>
                <div class="col-md-12"
                     style="text-align:center;height:200px;padding:1px;border: 1px solid red">
                    <textarea id="editor" name="pcontext" rows="30" style="width: 99.4% ;height: 198px"></textarea>
                </div>
                <div class="col-md-12" style="height:200px;padding:1px;border: 1px solid red">
                    <div style="padding-left: 10px;padding-top: 20px">
                        <label>文章类型：</label>
                        <select id="selType" name="ckind">
                            <option value="0">请选择</option>
                            <option value="原创">原创</option>
                            <option value="转载">转载</option>
                            <option value="翻译">翻译</option>
                        </select>
                        <span style="color: red">*</span>
                    </div>
                    <div style="padding-left: 10px;padding-top: 40px">
                        <label>博客分类：</label>
                        <select id="radChl" name="pkind">
                            <option value="0">选择分类</option>
                            <option value="人工智能">人工智能</option>
                            <option value="移动开发">移动开发</option>
                            <option value="物联网">物联网</option>
                        </select>
                        <span style="color: red">*</span>
                    </div>
                    <div class="form-group">
                        <div style="padding-top: 20px;padding-left: 10px">
                            <input type="submit" width="100" value="发布" name="submit"
                                   style="background: url('/img/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0); height: 35px; width: 100px; color: white;">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="button" width="100" value="返回" name="button"
                                   style="background: url('/img/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0); height: 35px; width: 100px; color: white;">
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <!-- 引入footer.jsp -->
    <jsp:include page="/footer.jsp"></jsp:include>
</div>
</body>
</html>
