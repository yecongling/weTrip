
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <script src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts.js"></script>
    <title>景区门票销售折线图</title>
    <!--引入bootstrap的css文件-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap-3.3.7-dist/css/bootstrap.css">
    <style>
        .big{
            top: 50px;
        }
        #main{
            margin-top: 100px;
            margin-left: 100px;
        }
    </style>
</head>
<body class="container">
<input type="hidden" id="ha" value="${scenicId}">
<div class="big"></div>
<div id="main" style="width:800px;height:500px;"></div>
<!-- jQuery -->
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<!--引入bootstrap的js文件-->
<script src="<%=request.getContextPath()%>/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script type="text/javascript">
    var scenicId = document.getElementById("ha").value;
    var myChart =echarts.init(document.getElementById('main'));
    $.ajax({
        url :"<%=request.getContextPath()%>/line",
        type:"get",
        data:{"scenicId":scenicId},
        dataType:"json",
        success: function(resp){
            var yueFens =[];
            var countss =[];
            $(resp.line).each(function(){
                yueFens.push(this.yueFen);
                countss.push(this.counts);
            });

            console.log(countss)
            console.log(yueFens)
            myChart.setOption({
                title:{
                    text:'售票走势图'
                },
                toolbox: {
                    show : true,
                    feature : {
                        dataView: { //数据视图,他控制着样式,表格
                            show: true,
                            optionToContent: function (opt) {
                                var axisData = opt.xAxis[0].data; // 坐标数据
                                var series = opt.series; // 折线图数据
                                var tdHeaders = '<td></td>'; // 表头
                                series.forEach(function(item) {
                                    tdHeaders += '<td style="padding:0px 2px;">' + item.name + '</td>'; //组装表头
                                });
                                var table = '<div style="overflow-y:auto;height: 100%;width:100%;"><table style="text-align:center; border-collapse:collapse;" border="1" ><tbody><tr>' + tdHeaders + '</tr>';
                                var tdBodys = ''; // 表数据
                                for (var i = 0, l = axisData.length; i < l; i++) {
                                    for (var j = 0; j < series.length; j++) {
                                        tdBodys += '<td>' + series[j].data[i] + '</td>'; //组装表数据
                                    }
                                    table += '<tr><td style="padding: 0 10px">' + axisData[i] + '</td>' + tdBodys + '</tr>';
                                    tdBodys = '';
                                }
                                table += '</tbody></table></div>';
                                return table;
                            },
                            contentToOption: function (opt) {
                                var axisData = opt.xAxis[0].data; // 坐标数据
                                var series = opt.series; // 折线图数据
                                var tdHeaders = '<td></td>'; // 表头
                                series.forEach(function(item) {
                                    tdHeaders += '<td style="padding:0px 2px;">' + item.name + '</td>'; //组装表头
                                });
                                var table = '<div style="overflow-y:auto;height: 100%;width:100%;"><table style="text-align:center; border-collapse:collapse;" border="1" ><tbody><tr>' + tdHeaders + '</tr>';
                                var tdBodys = ''; // 表数据
                                for (var i = 0, l = axisData.length; i < l; i++) {
                                    for (var j = 0; j < series.length; j++) {
                                        tdBodys += '<td>' + series[j].data[i] + '</td>'; //组装表数据
                                    }
                                    table += '<tr><td style="padding: 0 10px">' + axisData[i] + '</td>' + tdBodys + '</tr>';
                                    tdBodys = '';
                                }
                                table += '</tbody></table></div>';
                                return table;
                            }
                        },
                        mark : {show: true},
                        //dataView : {show: true, readOnly: false},
                        magicType : {show: true, type: ['line', 'bar' ]},
                        restore : {show: true},
                        saveAsImage : {show: true},
                    }
                },

                calculable : true,
                legend:{
                    data:'月份'
                },
                xAxis:{
                    name:"月份",
                    data:yueFens
                },

                yAxis:{},
                series:[{
                    name:'数量',
                    type:'bar',
                    data:countss
                }]

            });



        }


    });


</script>

</body>
</html>