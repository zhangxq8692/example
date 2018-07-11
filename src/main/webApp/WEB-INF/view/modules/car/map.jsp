<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/view/modules/include/cite.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
    <style type="text/css">
        body, html, #map {
            width: 100%;
            height: 100%;
            overflow: hidden;
            margin: 0;
            font-family: "微软雅黑";
        }
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=nNQQaUvCAWF1TW6IfdCdNpHxWPceKGNX"></script>
</head>
<body>
<ul class="nav nav-tabs">
    <li class="active"><a href="${ctxPath}/map">车辆分布</a></li>
</ul>
<div id="map"></div>
</body>
<script type="text/javascript">
    $(function () {
        var map = new BMap.Map("map");
        map.setMapStyle({style:'grayscale'});
        var point = new BMap.Point(116.331398, 39.897445);
        map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
        map.centerAndZoom(point, 5);

        /*获取位置回调函数*/
        function myFun(result) {
            var cityName = result.name;
            map.setCenter(cityName);
            map.setZoom(14);
            getCarInfoList(map);
        }

        /*创建获取位置信息对象*/
        var myCity = new BMap.LocalCity();
        myCity.get(myFun);
    });


    /*获取所有车主位置信息*/
    function getCarInfoList(map) {
        $.ajax({
            url: "${ctxPath}/car/pints",
            type: "GET",
            /* data:提交请求参数,*/
            dataType: "json",
            async: true,
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var marker = new BMap.Marker(new BMap.Point(data[i].pLng, data[i].pLat)); // 创建点
                    map.addOverlay(marker);
                    var sContent =
                        "<h5 style='margin:0 0 5px 0;padding:0.2em 0'>目的地:" + data[i].destination+"</h4>" +
                        "<h5 style='margin:0 0 5px 0;padding:0.2em 0'>出发地:" + data[i].departAddr+"</h4>" +
                        "<a href='${ctxPath}/car/detail?id=" + data[i].id +"'>查看详情</a>";
                    marker.setTitle(sContent);
                    marker.addEventListener("click",function (e) {
                        openInfo(e);
                    });

                    function openInfo(e){
                        var p = e.target;
                        var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
                        var infoWindow = new BMap.InfoWindow(p.getTitle());  // 创建信息窗口对象
                        map.openInfoWindow(infoWindow,point);
                    }
                }
            }
        });
    }

</script>
</html>
