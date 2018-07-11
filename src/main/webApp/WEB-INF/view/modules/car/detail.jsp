<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../include/cite.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
    <style type="text/css">
        #map{
            width: 100%;
            height: 100%;
            overflow: hidden;
            margin: 0;
            font-family: "微软雅黑";
        }
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=nNQQaUvCAWF1TW6IfdCdNpHxWPceKGNX"></script>
    <style>
        input{
            height: 30px !important;
        }

        input,#remark,#map{
            width: 400px !important;
        }
        #map{
             height:200px;
        }
    </style>
</head>
<body>
    <div>
        <ul class="nav nav-tabs">
            <li class="active"><a href="${ctxPath}/car/detail?id=${car.id}">行程详情</a></li>
        </ul>

        <%--@elvariable id="car" type="com.zhang.modules.car.entity.Car"--%>
        <form:form modelAttribute="car" class="form-horizontal">

            <div class="control-group">
                <label class="control-label">出发地</label>
                <div class="controls">
                    <input type="text" id="departAddr" value="${car.departAddr}" readonly/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">目的地</label>
                <div class="controls">
                    <input type="text" id="destination" value="${car.destination}" readonly/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="departDate">出发时间</label>
                <div class="controls">
                    <s:formatDate pattern="yyyy-MM-dd" value="${car.departDate}" var="departDate"/>
                    <input type="date" id="departDate" value="${departDate}" readonly/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="latestDate">最迟出发时间</label>
                <div class="controls">
                    <s:formatDate pattern="yyyy-MM-dd" value="${car.latestDate}" var="latestDate"/>
                    <input type="date" id="latestDate" value="${latestDate}" readonly/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="sumPerson">可乘坐人数</label>
                <div class="controls">
                    <input type="number" id="sumPerson" value="${car.sumPerson}" readonly/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">已有乘客人数</label>
                <div class="controls">
                    <input type="number" id="existPerson" value="${car.existPerson}" readonly/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">发布时间</label>
                <div class="controls">
                    <s:formatDate pattern="yyyy-MM-dd" value="${car.announceDate}" var="announceDate"/>
                    <input type="date" id="announceDate" value="${announceDate}" readonly/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">备注</label>
                <div class="controls">
                   <%-- <input type="text" id="remark" name="remark" placeholder="备注"/>--%>
                    <textarea rows="3" id="remark" name="remark"readonly>${car.remark}</textarea>
                </div>
            </div>
            <input type="hidden" id="pLng" name="pLng">
            <input type="hidden" id="pLat" name="pLat">

            <div class="control-group">
                <label class="control-label">出发位置</label>
                <div class="controls">
                    <div id="map"></div>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-warning" onclick="javascript:history.back(-1); return false;">返回</button>
                </div>
            </div>
        </form:form>
    </div>

    <script type="text/javascript">
        var map = new BMap.Map("map");
        var point = new BMap.Point(${car.pLng}, ${car.pLat});
        map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
        map.centerAndZoom(point, 15);
        var mk = new BMap.Marker(point);
        map.addOverlay(mk);
        map.panTo(point,{noAnimation:false});
    </script>
</body>
</html>
