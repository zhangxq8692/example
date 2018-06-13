<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/view/modules/include/cite.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        body, html,#map {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=nNQQaUvCAWF1TW6IfdCdNpHxWPceKGNX"></script>
</head>
<body>
    <ul class="nav nav-tabs">
        <li class="active"><a href="${ctxPath}/map/map">车辆分布</a></li>
    </ul>
    <div id="map"></div>
</body>
<script type="text/javascript">
    var map = new BMap.Map("map");
    var point = new BMap.Point(116.331398,39.897445);
    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
    map.centerAndZoom(point,5);

    /*获取位置回调函数*/
    function myFun(result){
        var cityName = result.name;
        map.setCenter(cityName);
        map.setZoom(14);

        getCarInfoList(cityName);
    }
    /*创建获取位置信息对象*/
    var myCity = new BMap.LocalCity();
    myCity.get(myFun);
    /*获取所有车主位置信息*/
    function getCarInfoList(city) {
        $.ajax({
            uri:"${ctxPath}/carPoints",
            type:'POST',
            data:{'city':city},
            dataType:'json',
            success:function (data){

            }
        });
    }
</script>
</html>
