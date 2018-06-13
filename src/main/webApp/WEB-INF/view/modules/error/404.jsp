<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/view/modules/include/cite.jsp"%>
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv=content-type>
    <style>
        span.main_txt {
            position: absolute; text-align: center; padding-bottom: 0px; padding-left: 0px; width: 150px; padding-right: 0px; display: block; height: 63px; color: #1d1d1d; top: 223px; padding-top: 2px; left: 745px
        }
        div.error404_main {
            position: relative; margin: 31px 21px 0px; width: 950px; background: url(${ctxPath}/img/error404.jpg) no-repeat; height: 500px
        }

        span.main_txt span {
            margin: 0px 0px 2px; display: block
        }
        span.main_txt a {
            color: #1d1d1d
        }

    </style>
</head>
<body>

    <div class="error404_main">
        <span class="main_txt"><span>您访问的网页</span>
        <span>不存在或者已删除</span> <span> :(请刷新</span>
        <span>或者 <a class=gray_un href="${firstPage}">返回上一页</a>.</span> </span>
    </div>
</body>
</html>
