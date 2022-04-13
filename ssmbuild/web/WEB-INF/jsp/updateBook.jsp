<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍 </title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container"><%--栅格--%>
    <div class="row clearfix"><%--清除浮动--%>
        <div class="col-md-12"><%--把屏幕分为12份--%>
            <div class="page-header"><%--来个头部--%>
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<%--来一个form表单来表示增加书籍--%>
<%--可能有时会好奇这个booID,bookName的信息是哪里来的，别急，，谁调用的它就去找谁，一步步往上找。最终一定是
从数据库中查到的--%>
<form action="${pageContext.request.contextPath}/book/updateBook" method="post">
    <%--出现的问题：我们提交了修改的SQL请求，但是修改失败，初次考虑，是事务问题，配置事务完毕，依旧失败！--%>
    <%--于是就排查是哪出现了问题，返现就单纯无法update，仔细一想是因为update语句需要bookID，但是前端没传递给它--%
    <%--所以解决办法就很简单，直接在前端加个隐藏域即可。前端看不到，后端可收到！--%>
    <input type="hidden" name="bookID" value="${books.bookID}">
    <div class="form-group">
        <label >书籍名称</label>
        <input type="text" name="bookName" class="form-control" value="${books.bookName}" required>
    </div>
    <div class="form-group">
        <label >书籍数量</label>
        <input type="text" name="bookCounts" class="form-control" value="${books.bookCounts}" required>
    </div>
    <div class="form-group">
        <label >书籍描述</label>
        <input type="text" name="detail" class="form-control" value="${books.detail}" required>
    </div>
    <div class="form-group">
        <input type="submit" class="form-control" value="修改">
    </div>
</form>
</body>
</html>
