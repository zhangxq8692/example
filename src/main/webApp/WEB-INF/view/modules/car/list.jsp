<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../include/cite.jsp"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
    <ul class="nav nav-tabs">
        <li class="active"><a href="${ctxPath}/car/list">车辆信息</a></li>
        <li>
            <div class="bs-docs-example" style="padding-bottom: 24px;">
                <a data-toggle="modal" href="https://v2.bootcss.com/javascript.html#myModal" class="btn btn-primary btn-large">查看演示案例</a>
            </div>
        </li>
    </ul>
    <%--@elvariable id="result" type="java.util.List"--%>
    <form>
        <table class="table table-striped table-hover table-condensed" id="table">
                <%--列表头--%>
            <tr class="info">
                <td style="width: 15%">出发地</td>
                <td style="width: 10%">目的地</td>
                <td style="width: 10%">出发时间</td>
                <td style="width: 50%">发布时间</td>
                <td style="width: 15%">操作</td>
            </tr>
                <%--列表数据体--%>
            <c:forEach items="${result}" var="car">
                <tr>
                    <td>${car.departAddr}</td>
                    <td>${car.destination}</td>
                    <td><s:formatDate value="${car.departDate}" pattern="yyyy-MM-dd"/></td>
                    <td><s:formatDate value="${car.announceDate}" pattern="yyyy-MM-dd"/></td>
                    <td id="btn" style="text-align: center">
                        <a href="${ctxPath}/user/get?id=${car.id}">详情</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
    <%--分页--%>
    <div class="text-center">
        <div class="pagination">
            <ul>
                <li><a href="#">上一页</a></li>
               <%-- <li class="active"><a href="#">1</a></li>--%>
           <%--     <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>--%>
                <li><a href="#">下一页</a></li>
            </ul>
        </div>
    </div>
    <div id="myModal" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: block;">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">模态对话框头部</h3>
        </div>
        <div class="modal-body">
            <h4>模态对话框中的文本</h4>
            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem.</p>

            <h4>Popover in a modal</h4>
            <p>This <a href="https://v2.bootcss.com/javascript.html#" role="button" class="btn popover-test" title="" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title">button</a> should trigger a popover on click.</p>

            <h4>Tooltips in a modal</h4>
            <p><a href="https://v2.bootcss.com/javascript.html#" class="tooltip-test" title="" data-original-title="Tooltip">This link</a> and <a href="https://v2.bootcss.com/javascript.html#" class="tooltip-test" title="" data-original-title="Tooltip">that link</a> should have tooltips on hover.</p>

            <hr>

            <h4>Overflowing text to show optional scrollbar</h4>
            <p>We set a fixed <code>max-height</code> on the <code>.modal-body</code>. Watch it overflow with all this extra lorem ipsum text we've included.</p>
            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        </div>
        <div class="modal-footer">
            <button class="btn" data-dismiss="modal">关闭</button>
            <button class="btn btn-primary">Save changes</button>
        </div>
    </div>
</body>
</html>
