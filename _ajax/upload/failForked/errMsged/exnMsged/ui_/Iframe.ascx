<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Iframe.ascx.cs" Inherits="nilnul.fs._web.upload_.Iframe" %>

<div style="overflow: auto;">

	<form  method="post"  enctype="multipart/form-data" action="<%= Controller %>" target="_1">

		<input type="file"  />
		<input type="submit" />
	</form>
	<iframe  style="display: none" name="_1">
		<%--
			iframe中存在跨域的问题,所以需要用到H5的postMessage方法来传递参数给iframe外面的表单页面
			我们需要response里有script。

			//node.js server
var fname = req.files.fileUp.path.replace("publicfiles", "").replace("public/files/", "");
res.writeHead(200, {'Content-type' : 'text/html'});
res.write('<script>');
res.write('window.parent.postMessage("'+fname+'","*");');
res.end('</script>');

			但是本方案中，返回的是json；所以，本实现不能用。

			--%>

	</iframe>
	<div>
	</div>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=this.unique_func_name %>(this)"></script>
</div>
