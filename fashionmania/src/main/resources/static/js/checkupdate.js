layui.use('form', function () {
    var form = layui.form;
    form.verify({
        oldpassword: function (value) {
            if (value.length == 0)
                return "原密码不能为空";
            else if (value.length < 3) {
                return "原密码要三位数以上"
            }
        },
        password: function (value) {
            if (value.length == 0)
                return "新密码不能为空";
            else if (value.length < 3) {
                return "新密码要三位数以上"
            }
        },
        npassword: function (value) {
            var pass = $(".password").val();
            if (value.length == 0)
                return "确认密码不能为空";
            else if (!new RegExp(pass).test(value)) {
                return '两次输入的密码不一致';
            }
        },
    });
    form.on('submit(formDemo)',function (){
        var name = $(".password").val();
        $.ajax({
            type: 'post',
            data: $("form").serialize(),
            url: '/ChangePwdServlet',
            success: function (data) {
                if("原密码错误"==data){
                    $(".pd").html("原密码错误");
                }else if("修改成功"==data){
                    $(".pd").html("");
                    layer.alert('修改成功',function (index) {
                            //$.sessionStorage.clear();
                            // session.invalidate();
                            parent.window.location.href="/index.jsp";
                    });
                }
            },
        });
        return false;
    });
});