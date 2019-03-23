<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <!-- onsubmit,在表单提交事件，我们可以调用val()方法序列化表单数据 --> -->
	<form id="login">
			<fieldset>
				<legend>登录</legend>
				账号：<input type="text" name="username" id="username" required/><br>
				密码：<input type="text" name="password" id="password" required/><br>
				<input type="button" onclick="val()" value="登录"/>
			</fieldset>
	</form>
	
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		function val() {
			//serializeArray();可以将表单序列化成json数组
			//$.param();可以将json对象拼接成url参数的格式
	/* 		var data = $("#login").serializeAray();
			for(var i in data){
				var obj = $.param(data[i]);
				console.log(obj);
			} */
			
			//serialize();可以将json对象完美的拼接成我们想要的url参数形式【重要】
			var data = $("#login").serialize();
			console.log(data);
			$.get('LoginServlet?'+data,function() {
				alert("提交成功！");
			});
			
 /* 		 //获取表单数据，实际中经常用的
			var username = $("#username").val();
			var password = $("#password").val();
			
			//提交给后台进行登录判断
			$.get('LoginServlet',{
				username : username,
				password : password
			},function() {
				alert("提交成功！");
			});*/
		} 
	</script>
</body>
</html>