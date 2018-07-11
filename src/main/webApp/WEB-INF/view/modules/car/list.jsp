<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../include/cite.jsp"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
    <ul class="nav nav-tabs">
        <li class="active"><a href="${ctxPath}/car/list">出发信息</a></li>
        <li><a href="${ctxPath}/car/from">发布信息</a></li>
    </ul>
    <%--@elvariable id="result" type="java.util.List"--%>
    <form>
        <table class="table table-striped table-hover" id="table">
                <%--列表头--%>
            <tr class="info">
                <td style="width: 10%">出发地</td>
                <td style="width: 10%">目的地</td>
                <td style="width: 15%">出发时间</td>
                <td style="width: 15%">发布时间</td>
                <td style="width: 10%">乘坐人数</td>
                <td style="width: 10%">已有人数</td>
                <td style="width: 10%">操作</td>
            </tr>
                <%--列表数据体--%>
            <c:forEach items="${result}" var="car">
                <tr>
                    <td>${car.departAddr}</td>
                    <td>${car.destination}</td>
                    <td><s:formatDate value="${car.departDate}" pattern="yyyy-MM-dd"/></td>
                    <td><s:formatDate value="${car.announceDate}" pattern="yyyy-MM-dd"/></td>
                    <td>${car.sumPerson}</td>
                    <td>${car.existPerson}</td>
                    <td>
                        <a href="${ctxPath}/car/detail?id=${car.id}">详情</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
    <%--分页--%>
    <div class="text-center">
        <div class="pagination">
            <ul>
                <%--<li><a href="#">上一页</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">下一页</a></li>--%>
            </ul>
        </div>
    </div>
</body>
</html>
