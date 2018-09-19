<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>评论系统首页</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>

    <script>
       $(function () {
           var context="";
          $.ajax({
              "type":"POST",
              "url":"${pageContext.request.contextPath}/index.action",
              "dataType":"json",
              "success":function (data) {
                  for(var i=0;i<data.postList.length;i++){
                      context+="<div class=\"col-md-12\" style=\"text-align:center;height:200px;padding:1px;border: 1px solid red\">\n" +
                          "                <div class=\"col-md-2\">\n" +
                          "                    <span>发帖人:</span>\n" +
                          "                </div>\n" +
                          "                <div class=\"col-md-2\">\n" +
                          "                    <span>时间:</span>\n" +
                          "                </div>\n" +
                          "                <div class=\"col-md-8\">\n" +
                          "                </div>\n" +
                          "                <div class=\"col-md-12\" style=\"text-align:center;height:178px;padding:1px;border: 1px solid red\">\n" +
                          "                    <span>发帖内容:"+data.postList[i].pcontext+"</span><br/>\n" +
                          "                    <span style=\"padding-left: 855px\">查看评论</span>&nbsp;&nbsp;&nbsp;<span>点赞</span>&nbsp;&nbsp;&nbsp;<span>发表评论</span>\n" +
                          "                </div>\n" +
                          "            </div>"
                  }
                  $("#postContextId").html(context);
              }
          });
       });
    </script>
</head>
<body>
<div class="container-fluid">
    <!-- 引入header.jsp -->
    <jsp:include page="header.jsp"></jsp:include>

    <!-- 热门话题 -->
    <div class="container-fluid">
        <div class="col-md-12">
            <h2>热门话题&nbsp;&nbsp;<img src="/img/title2.jpg"/></h2>
        </div>
        <div class="col-md-2" style="border:1px solid red;padding:1px;height: 200px">
            <span> 全部分类</span>
        </div>
        <div class="col-md-10" id="postContextId">
            <%--<div class="col-md-12" style="text-align:center;height:200px;padding:1px;border: 1px solid red">--%>
                <%--<div class="col-md-2">--%>
                    <%--<span>发帖人</span>--%>
                <%--</div>--%>
                <%--<div class="col-md-2">--%>
                    <%--<span>时间</span>--%>
                <%--</div>--%>
                <%--<div class="col-md-8">--%>
                <%--</div>--%>
                <%--<div class="col-md-12" style="text-align:center;height:178px;padding:1px;border: 1px solid red">--%>
                    <%--<span>发帖内容</span><br/>--%>
                    <%--<span style="padding-left: 855px">查看评论</span>&nbsp;&nbsp;&nbsp;<span>点赞</span>&nbsp;&nbsp;&nbsp;<span>发表评论</span>--%>
                <%--</div>--%>
            <%--</div>--%>
        </div>
    </div>
    <!-- 引入footer.jsp -->
    <jsp:include page="/footer.jsp"></jsp:include>
</div>
</body>
</html>
