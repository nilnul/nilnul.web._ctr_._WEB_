<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Closable.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Closable" %>
<%@ OutputCache Duration="36000000" VaryByParam="l" %>
<%--
	use case:
	1) a dialog in place, not movable, not resizable; if the user close the dialog, the element is hide and nothing happens except that the following content is moved forward to close the gap.
	2) not same as dialog. dialog is popped out of place, generallby by smashing a smoking covering all the viewport and stacking the element on top of all the smoked contents.
	--%>
<% #if (false) %>
<% #endif %>
<div>
	<p style="text-align:center;display:inline-block;width:100%;background:silver;">
		<span></span>
		<span style="color:red;float:right" title="关闭窗口" >X</span>
	</p>
	<div>
		加载内容中...
		<%-- content --%>
	</div>
	<div><%-- tip --%></div>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</div>
