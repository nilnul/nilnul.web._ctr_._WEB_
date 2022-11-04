<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Btn2Go.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.errSeperated.errAlerted.Btn2Go" %>

<%--
	process the response if there is err in it.
--%>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>




<% #if (false) %>
<script src="http://localhost:12345/_apps/script/jquery.js"></script>
<script src="http://localhost:12345/_apps/script/nilnul.js"></script>
<% #endif %>

<span style="position: relative">

	<button><%= nilnul.web.svr.module_.ling_.perRequest_.perferCn2En.AftModule.GetEnCn("Go","走起!") %></button>
	<%@ Register Src="~/_ajax_/state_/errSeperated/ErrAlerted.ascx" TagPrefix="uc1" TagName="ErrAlerted" %>
	<uc1:ErrAlerted runat="server" ID="ErrAlerted" />
	<span></span>

	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</span>




