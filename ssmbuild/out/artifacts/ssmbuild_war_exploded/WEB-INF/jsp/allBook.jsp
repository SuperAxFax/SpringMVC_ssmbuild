<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>
    <%--BootStrap美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container"><%--栅格--%>
    <div class="row clearfix"><%--清除浮动--%>
       <div class="col-md-12"><%--把屏幕分为12份--%>
           <div class="page-header"><%--来个头部--%>
               <h1>
                   <small>书籍列表-----显示所有书籍</small>
               </h1>
           </div>
       </div>
    </div>
</div>


<div class="row">
    <div class="col-md-4 column"><%--增加一个新增书籍的标签--%>
        <%--toAddBook--%>
        <%--class="btn btn-primary"是增加了一个背景按钮的功能--%>
         <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
         <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
    </div>
    <div class="col-md-4 column"></div>
    <div class="col-md-4 column">
        <%--查询书籍--%>
        <form class="form-inline" action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right">
            <span style="color:red; font-weight:bold">${error}</span>
            <input type="text" name="queryBookName" class="form-control" placeholder="请输入要查询的书籍名称">
            <input type="submit" value="查询" class="btn btn-primary">
        </form>
    </div>
</div>

<div class="row clearfix"><%--清除浮动--%>
    <div class="col-md-12 column"><%--把屏幕分为12列--%>
        <table class="table table-hover table-striped"><%--创建一个table表,让它变色，有格子--%>
            <thead><%--表格头--%>
               <tr>
                   <th>书籍编号</th>
                   <th>书籍名称</th>
                   <th>书籍数量</th>
                   <th>书籍详情</th>
                   <th>操作</th>
               </tr>
            </thead>

            <%--书籍从数据库中查询出来，从这list中遍历出来：foreach--%>
            <tbody><%--表格的身体--%>
               <c:forEach var="books" items="${list}">
                    <tr>
                        <td>${books.bookID}</td>
                        <td>${books.bookName}</td>
                        <td>${books.bookCounts}</td>
                        <td>${books.detail}</td>
                        <td>
                            <%--pageContext.request.contextPath代表的就是http//:localhost:8080/项目名--%>
                            <a href="${pageContext.request.contextPath}/book/toUpdate?id=${books.bookID}">修改</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/book/deleteBook?id=${books.bookID}">删除</a>
                        </td>
                    </tr>
               </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
