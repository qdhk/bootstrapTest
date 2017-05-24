<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bootstrap 模板</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="container">
    <h1>Hello, world!</h1>
    <form role="form" action="/view/doUpfile" enctype="multipart/form-data" method="post">
        <div class="form-group">
            <label for="name">名称</label>
            <input type="text" class="form-control" id="name" placeholder="请输入名称">
        </div>
        <div class="form-group">
            <label for="inputfile">文件输入</label>
            <input type="file" id="inputfile" name="myfile">
            <p class="help-block">这里是块级帮助文本的实例。</p>
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox">请打勾
            </label>
        </div>
        <button type="submit" class="btn btn-default">提交</button>
    </form>
</div>

<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>