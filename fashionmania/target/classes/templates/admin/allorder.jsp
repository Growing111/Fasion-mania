<%--
  Created by IntelliJ IDEA.
  User: yuan
  Date: 18-8-23
  Time: 下午5:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="layui-v2.3.0/layui/css/layui.css"  media="all">
    <script th:src="@{../js/jquery-3.2.1.js}"></script>
</head>
<body>
<div style="margin-bottom: 5px;">

    <table class="layui-table" lay-data="{page:true, id:'idTest'}" lay-filter="demo">
        <thead>
        <tr>
            <th lay-data="{field:'id', width:80, sort: true, fixed: true}">ID</th>
            <th lay-data="{field:'name', width:80}">用户名</th>
            <th lay-data="{field:'descrip', width:140}">商品</th>
            <th lay-data="{field:'type',width:70}">图片</th>
            <th lay-data="{field:'price', width:120, sort: true}">参数</th>
            <th lay-data="{field:'classify', width:80}">数量</th>
            <th lay-data="{field:'wealth', width:100}">下单时间</th>
            <th lay-data="{field:'score', width:100}">支付状态</th>
            <th lay-data="{field:'date', width:180 }">收货地址</th>
            <th lay-data="{fixed:'right', width:230, align:'center', toolbar: '#barDemo'}">操作</th>
        </tr>
        </thead>
        <tr>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
            <td>6</td>
            <td></td>
        </tr>
    </table>
</div>
<script>
    $(document).ready(function () {
        $.ajax({
            url:'/getalllist',
            success:function (result) {
                $.each(result,function (index,object) {
                    var id=object['orderDetail']['orders']['id'];
                    var nickname=object['orderDetail']['orders']['user']['nickname'];
                    var shop=object['name'];
                    var pic="../images/shop"+object['picture'].split(";")[0];
                    var canshu=object['orderDetail']['color']+";"+object['orderDetail']['size'];
                    var count=object['orderDetail']['count'];
                    var maketime=object['orderDetail']['orders']['makeTime'];
                    var datetime = new Date(maketime);
                    var year = datetime.getFullYear();
                    var month = datetime.getMonth() + 1;
                    var date = datetime.getDate();
                    var hour=datetime.getHours();
                    var min=datetime.getMinutes();
                    var sen=datetime.getSeconds();
                    var time=year+"-"+month+"-"+date+" "+hour+":"+min+":"+sen;
                    var f="未付款";
                    if(object['orderDetail']['orders']['status']=="W"){
                        f="已付款";
                    }else if(object['orderDetail']['orders']['status']=="F"){
                        f="未付款";
                    }
                    var address=object['orderDetail']['orders']['address'];
                    $(".layui-table").append("<tr><td>"+id+"</td>" +
                        "<td>"+nickname+"</td>" +
                        "<td>"+shop+"</td>" +
                        "<td><img src='"+pic+"' width='40' height='40'></td>" +
                        "<td>"+canshu+"</td>" +
                        "<td>"+count+"</td>"+
                        "<td>"+time+"</td>" +
                        "<td>"+f+"</td>" +
                        "<td>"+address+"</td>" +
                        "<td></td></tr>")
                })
            },
            error:function () {
                alert("error");
            }
        })
    })
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script src="layui-v2.3.0/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('table', function(){
        var table = layui.table;
        //监听表格复选框选择
        table.on('checkbox(demo)', function(obj){
            console.log(obj);
        });
        //监听工具条
        table.on('tool(demo)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
                layer.msg('ID：'+ data.id + ' 的查看操作');
            } else if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                layer.alert('编辑行：<br>'+ JSON.stringify(data))
            }
        });

        var $ = layui.$, active = {
            getCheckData: function(){ //获取选中数据
                var checkStatus = table.checkStatus('idTest')
                    ,data = checkStatus.data;
                layer.alert(JSON.stringify(data));
            }
            ,getCheckLength: function(){ //获取选中数目
                var checkStatus = table.checkStatus('idTest')
                    ,data = checkStatus.data;
                layer.msg('选中了：'+ data.length + ' 个');
            }
            ,isAll: function(){ //验证是否全选
                var checkStatus = table.checkStatus('idTest');
                layer.msg(checkStatus.isAll ? '全选': '未全选')
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });
</script>
</body>
</html>