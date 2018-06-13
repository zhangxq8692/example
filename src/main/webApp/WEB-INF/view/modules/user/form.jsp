<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../include/cite.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        #inputAge,#inputName,#inputSex{
            height: 30px;
        }
    </style>
</head>
<body>
    <ul class="nav nav-tabs">
        <li class="active"><a href="${ctxPath}/user/get?id=${user.id}">用户编辑</a></li>
    </ul>

    <%--@elvariable id="user" type="com.zhang.modules.user.entity.User"--%>
    <form:form modelAttribute="user" class="form-horizontal" action="${ctxPath}/user/update">
        <input type="hidden" name="id" value="${user.id}">
            <div class="control-group">
                <label class="control-label" for="inputName">姓名</label>
                <div class="controls">
                    <input type="text" id="inputName" name="name" placeholder="姓名" value="${user.name}">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputAge">年龄</label>
                <div class="controls">
                    <input type="text" id="inputAge" name="age" placeholder="年龄" value="${user.age}">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputSex">性别</label>
                <div class="controls">
                    <input type="text" id="inputSex" name="sex" placeholder="性别" value="${user.sex}">
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-success">保存</button>
                    <button type="reset" class="btn btn-warning">重置</button>
                    <button type="submit" class="btn btn-info" onclick="javascript:history.back(-1); return false;">返回</button>
                </div>
            </div>
    </form:form>
</body>
</html>
