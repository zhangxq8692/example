<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../include/cite.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        #inputUserName,#inputPassword{
            height: 30px!important;
            width: 300px !important;
        }
    </style>
</head>
<body>
    <div>
        <ul class="nav nav-tabs">
            <li class="active"><a href="${ctxPath}/user/login">用户登陆</a></li>
            <li><a href="${ctxPath}/user/register">用户注册</a></li>
        </ul>

        <%--@elvariable id="user" type="com.zhang.modules.user.entity.UserInfo"--%>
        <form class="form-horizontal" action="${ctxPath}/user/update">
            <div class="control-group">
                <label class="control-label" for="inputUserName">帐  号</label>
                <div class="controls">
                    <input type="text" id="inputUserName" name="userName" placeholder="帐号"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputPassword">密  码</label>
                <div class="controls">
                    <input type="password" id="inputPassword" name="password" placeholder="密码"/>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-success">登陆</button>
                    <button type="submit" class="btn btn-info" onclick="javascript:history.back(-1); return false;">
                        返回</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
