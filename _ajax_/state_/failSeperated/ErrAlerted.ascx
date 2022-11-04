<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ErrAlerted.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated.ErrAlerted" %>

<%--
	process the response if there is err in it.
--%>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>



<% #if (false) %>
<script src="http://localhost:12345/_apps/script/jquery.js"></script>
<script src="http://localhost:12345/_apps/script/nilnul.js"></script>
<% #endif %>

<div style="position: relative">

	<%@ Register Src="~/_ajax_/state_/FailSeperated.ascx" TagPrefix="uc1" TagName="FailSeperated" %>
	<uc1:FailSeperated runat="server" id="FailSeperated" />

	<%@ Register Src="~/Alert2.ascx" TagPrefix="uc1" TagName="Alert2" %>

	<uc1:Alert2 runat="server" ID="Alert2" />

	<div>
	</div>

	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</div>




