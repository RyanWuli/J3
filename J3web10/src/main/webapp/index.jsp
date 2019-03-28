<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<body>
<h2>Hello World!</h2>
<div id="content"></div>
<script type="text/javascript">

/* 	$.ajax({//$.ge()）
		url:'UserServlet',
		method:'get',
		success:function(data){
			$("#content").html(data);
		}
	});
	
	$.post("UserServlet",{id:100,name:"张三"},function(data){//$.post()
		$("#content").html(data);
	});
	 */
/* 	$.getJSON("UserServlet",function(data){//$.getJSON()
		$("#content").html(data);
	}); */
	 $("#content").load("UserServlet");
</script>
</body>
</html>
