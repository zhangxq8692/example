<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../include/cite.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        input{
            height: 30px !important;
        }
        select{
            width: 65px;
        }
    </style>
</head>
<body>
    <div>
        <ul class="nav nav-tabs">
            <li><a href="${ctxPath}/user/login">用户登陆</a></li>
            <li class="active"><a href="${ctxPath}/user/register">用户注册</a></li>
        </ul>

        <form class="form-horizontal" action="${ctxPath}/user/register">
            <div class="control-group">
                <label class="control-label" for="inputUserName">用户帐号</label>
                <div class="controls">
                    <input type="text" id="inputUserName" name="userName" placeholder="用户帐号"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="Password">密码</label>
                <div class="controls">
                    <input type="password" id="Password" name="password" placeholder="用户密码"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label left" for="inputPassword">校验密码</label>
                <div class="controls">
                    <input type="password" id="inputPassword" placeholder="校验密码"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputName">姓名</label>
                <div class="controls">
                    <input type="text" id="inputName" name="userInfo.name" placeholder="姓名"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputAge">年龄</label>
                <div class="controls">
                    <input type="text" id="inputAge" name="userInfo.age" placeholder="年龄"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">性别</label>
                <div class="controls">
                    <select name="userInfo.sex">
                        <option value="0">男</option>
                        <option value="1">女</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputCard">身份证</label>
                <div class="controls">
                    <input type="text" id="inputCard" name="userInfo.card" placeholder="身份证"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputPhone">联系电话</label>
                <div class="controls">
                    <input type="text" id="inputPhone" name="userInfo.phone" placeholder="联系电话"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">用户类型</label>
                <div class="controls">
                    <select name="userInfo.type">
                        <option value="0">车主</option>
                        <option value="1">乘客</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-success">注册</button>
                    <button type="submit" class="btn btn-warning" onclick="javascript:history.back(-1); return false;">返回</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
