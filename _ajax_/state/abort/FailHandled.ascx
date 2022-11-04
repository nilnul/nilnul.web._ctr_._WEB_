<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FailHandled.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state.abort.FailHandled" %>

<%-- 
	The communication may fail in cases that:
	1) there is a problem with the connection.
    2) the user aborted the communication.

	if the request fails, handle it here
--%>

<%@ OutputCache Duration="36000000" VaryByParam="id" %>

<% #if (false) %>
<script src="http://localhost:12345/_apps/script/jquery.js"></script>
<script src="http://localhost:12345/_apps/script/nilnul.js"></script>
<% #endif %>

<div style="position: relative">
	<%@ Register Src="../Abort.ascx" TagPrefix="uc1" TagName="Abort" %>
	<uc1:Abort runat="server" ID="Abort1" />
	<%@ Register Src="~/Alert2.ascx" TagPrefix="uc1" TagName="Alert2" %>
	<uc1:Alert2 runat="server" ID="Alert2" />
	<div></div>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</div>




