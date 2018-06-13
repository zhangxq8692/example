<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../include/cite.jsp"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
    <ul class="nav nav-tabs">
        <li class="active"><a href="${ctxPath}/user/list">信息列表</a></li>
    </ul>
    <%--@elvariable id="result" type="java.util.List"--%>
    <form>
        <table class="table table-striped table-hover table-condensed table-bordered" id="table">
            <tr class="info">
                <td style="width: 15%">姓名</td>
                <td style="width: 10%">年龄</td>
                <td style="width: 10%">性别</td>
                <td style="width: 50%">发布时间</td>
                <td style="width: 15%">操作</td>
            </tr>
            <c:forEach items="${result}" var="user">
                <tr>
                    <td>${user.name}</td>
                    <td>${user.age}</td>
                    <td>
                        <c:choose>
                            <c:when test="${user.sex==0}">男</c:when>
                            <c:otherwise>女</c:otherwise>
                        </c:choose>

                    </td>
                    <td><s:formatDate value="${user.createDate}" pattern="yyyy-MM-dd"/></td>
                    <td id="btn" style="text-align: center">
                        <div class="btn-group">
                          <%--  <a class="btn btn-mini" href="${ctxPath}/user/edit?id=${user.id}">修改</a>--%>
                            <a class="btn btn-mini" href="${ctxPath}/user/get?id=${user.id}">查看</a>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
    <div class="text-center">
        <div class="pagination">
            <ul>
                <li><a href="#">上一页</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">下一页</a></li>
            </ul>
        </div>
    </div>
</body>
</html>
