<%--
  Created by IntelliJ IDEA.
  User: yuan
  Date: 18-8-23
  Time: 下午5:07
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
    <script src="js/jquery-3.2.1.js"></script>
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<div style="margin-bottom: 5px;">
    <!-- 示例-970 -->
    <%--<div class="layui-btn-group demoTable">--%>
    <%--<button class="layui-btn" data-type="getCheckData">获取选中行数据</button>--%>
    <%--<button class="layui-btn" data-type="getCheckLength">获取选中数目</button>--%>
    <%--<button class="layui-btn" data-type="isAll">验证是否全选</button>--%>
    <%--</div>--%>

    <table class="layui-table" lay-data="{page:true, id:'idTest'}" lay-filter="demo">
        <thead>
        <tr>
            <th lay-data="{field:'id', width:160, sort: true, fixed: true}">ID</th>
            <th lay-data="{field:'nickname', width:160}">用户名</th>
            <th lay-data="{field:'email', width:610}">邮箱</th>
            <%--<th lay-data="{field:'type',width:70}">图片</th>--%>
            <%--<th lay-data="{field:'price', width:150, sort: true}">价格</th>--%>
            <%--<th lay-data="{field:'classify', width:150}">所属类型</th>--%>
            <%--<th lay-data="{field:'wealth', width:135, sort: true}">财富</th>--%>
            <%--<th lay-data="{field:'score', width:80, sort: true, fixed: 'right'}">评分</th>--%>
            <th lay-data="{fixed: 'right', width:230, align:'center', toolbar: '#barDemo'}">操作</th>
        </tr>
        </thead>
        <tr>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td></td>
        </tr>
    </table>
</div>
<script>
    $(document).ready(function () {
        $.ajax({
            url:'/list',
            success:function (result) {
                $.each(result,function (index,object) {
                    $(".layui-table").append("<tr><td>"+object['id']+"</td>" +
                        "<td>"+object['nickname']+"</td>" +
                        "<td>"+object['email']+"</td>" +
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
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
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
