// $(function (){
    layui.use('form', function () {
        var form = layui.form;
        form.verify({
            username: function (value) { //value：表单的值、item：表单的DOM对象
                if (value.length == 0) {
                    return '用户名不能为空';
                } else if  (!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)){
                    return '用户名不能有特殊字符';
                }
            },
            password: function (value) {
                if (value.length == 0)
                    return "密码不能为空";
                else if(value.length<3){
                    return "密码要三位数以上"
                }
            }
        });
    form.on('submit(formDemo)',function (data) {
        var psw=$(".password").val();
        if(psw.length>=3) {
            $.ajax({
                type: 'post',
                data: $("form").serialize(),
                url: '/LoginServlet',
                success: function (data) {
                    //alert(data);
                    if (data=='error') {
                        $("#pd").html("用户名或者密码错误");
                    }else if (data=='ok') {
                        $("#pd").html("请输入密码");
                        window.location.href = "/gotoMain";
                        // window.location.href="/gotoTest";
                    }
                },
                error: function () {
                    alert("方法出问题了");
                }
            });
            return false;
          }
        });
 });
