<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/view/modules/include/cite.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>拼车网</title>
    <style>
        #login{
            float: right;
            margin-top: 10px;
        }
        .content{
            margin-top: 60px;
            height: 750px;
            background-color: white;
        }
    </style>
</head>
<body>
    <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="brand" href="${ctxPath}/"><b>CarSharing</b></a>
                    <ul class="nav nav_ul">
                        <li class="active"><a href="${ctxPath}/map">地图</a></li>
                        <li><a href="${ctxPath}/car/list">车辆</a></li>
                        <li><a href="#">乘客</a></li>
                    </ul>
                    <a id="login" class="nav" href="${ctxPath}/user/login">登陆/注册</a>
                </div>
            </div>
        </div>
    </div>
    <div class="container content" <%--style="border:1px solid #cccccc"--%>>
        <div class="row">
            <div class="span1"></div>
            <div class="span10">
                <iframe src="${ctxPath}/map"  marginheight="20px" height="100%" width="100%" scrolling="no" frameborder="0">
                </iframe>
            </div>
        </div>
    </div>
    <div class="container text-center">
        <hr>
        <small>京公网备案信息11010502000809 | 京ICP证060405 | 京ICP备10012705号-2 | 违法信息举报：4008135858</small>
        <hr>
    </div>
<script type="text/javascript">
    $(function () {
        $(".nav_ul").on("click",function (e) {
            $(".nav_ul li[class='active']").attr("class","");
            var parent = $(e.target).parent();
            parent.attr("class",'active');
            setIframe(e);
            return false;
        });
        function setIframe(e) {
            var path = $(e.target).attr("href");
            $("iframe").attr("src",path);
        }
        $("#login").on("click",function (e) {
           console.log( $(".nav_ul li[class='active']").removeAttr("class"));
            setIframe(e);
            return false;
        });
    });
</script>
</body>
</html>
