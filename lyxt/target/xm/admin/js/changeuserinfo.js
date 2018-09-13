layui.use('form', function () {
    var form = layui.form;
    form.verify({

    });
    form.on('submit(formDemo)',function (){
        var name = $(".username").html();
        //alert(name);
        var phone=$(".phone").val();
        var email=$(".email").val();
        var message=$(".message").val();
        $.ajax({
            type: 'post',
            data: {"username":name,"phone":phone,"email":email,"message":message},
            url: '/ChangeUser',
            success: function (data) {
                if("修改成功"==data){
                    layer.alert("修改成功",function (index) {
                        parent.window.location.href="/main.jsp";
                    });
                }
            },
        });
        return false;
    });
});