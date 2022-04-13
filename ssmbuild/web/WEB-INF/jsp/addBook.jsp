<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container"><%--栅格--%>
    <div class="row clearfix"><%--清除浮动--%>
        <div class="col-md-12"><%--把屏幕分为12份--%>
            <div class="page-header"><%--来个头部--%>
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<%--来一个form表单来表示增加书籍--%>
<form action="${pageContext.request.contextPath}/book/addBook" method="post">
    <div class="form-group">
        <label >书籍名称</label>
        <input type="text" name="bookName" class="form-control" required>
    </div>
    <div class="form-group">
        <label >书籍数量</label>
        <input type="text" name="bookCounts" class="form-control" required>
    </div>
    <div class="form-group">
        <label >书籍描述</label>
        <input type="text" name="detail" class="form-control" required>
    </div>
    <div class="form-group">
        <input type="submit" class="form-control" value="添加">
    </div>
</form>

</body>
</html>
