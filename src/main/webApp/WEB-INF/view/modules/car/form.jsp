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
             height:230px;
        }
    </style>
</head>
<body>
    <div>
        <ul class="nav nav-tabs">
            <li><a href="${ctxPath}/car/list">出发信息</a></li>
            <li class="active"><a href="${ctxPath}/car/from">发布信息</a></li>
        </ul>

        <%--@elvariable id="car" type="com.zhang.modules.car.entity.Car"--%>
        <form class="form-horizontal" action="${ctxPath}/car/update">

            <div class="control-group">
                <label class="control-label" for="departAddr">出发地</label>
                <div class="controls">
                    <input type="text" id="departAddr" name="departAddr" placeholder="出发地"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="destination">目的地</label>
                <div class="controls">
                    <input type="text" id="destination" name="destination" placeholder="目的地"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="departDate">出发时间</label>
                <div class="controls">
                    <input type="date" id="departDate" name="departDate" placeholder="出发时间"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="latestDate">最迟出发时间</label>
                <div class="controls">
                    <input type="date" id="latestDate" name="latestDate" placeholder="最迟出发时间"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="sumPerson">可乘坐人数</label>
                <div class="controls">
                    <input type="number" id="sumPerson" name="sumPerson" placeholder="可乘坐人数"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="existPerson">已有乘客人数</label>
                <div class="controls">
                    <input type="number" id="existPerson" name="existPerson" placeholder="已有人数" value="0"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="remark">备注</label>
                <div class="controls">
                   <%-- <input type="text" id="remark" name="remark" placeholder="备注"/>--%>
                    <textarea rows="3" id="remark" name="remark" placeholder="备注"></textarea>
                </div>
            </div>
            <input type="hidden" id="pLng" name="pLng">
            <input type="hidden" id="pLat" name="pLat">
            <input type="hidden" name="announceDate">
            <div class="control-group">
                <label class="control-label">出发位置</label>
                <div class="controls">
                    <div id="map"></div>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-success">发布</button>
                    <button type="submit" class="btn btn-warning" onclick="javascript:history.back(-1); return false;">返回</button>
                </div>
            </div>
        </form>
    </div>

    <script type="text/javascript">
        var map = new BMap.Map("map");
        var point = new BMap.Point(116.331398, 39.897445);
        map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
        map.centerAndZoom(point, 15);

        /*获取位置回调函数*/
        var geolocation = new BMap.Geolocation();
        geolocation.getCurrentPosition(function(r){
            if(this.getStatus() == BMAP_STATUS_SUCCESS){
                var mk = new BMap.Marker(r.point);
                mk.addEventListener("dragend",function (){
                    var p = mk.getPosition();  //获取marker的位置
                    $("#pLng").val(p.lng);
                    $("#pLat").val(p.lat);
                    map.panTo(p,{noAnimation:false});

                });
                map.addOverlay(mk);
                mk.enableDragging();
                map.panTo(r.point,{noAnimation:false});
                $("#departAddr").val(r.address.city);
                $("#pLng").val(r.point.lng);
                $("#pLat").val(r.point.lat);
            }
        },{enableHighAccuracy: true})

    </script>
</body>
</html>
