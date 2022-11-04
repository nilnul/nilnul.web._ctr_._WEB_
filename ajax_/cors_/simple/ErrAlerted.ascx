<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ErrAlerted.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax_.cors_.simple.ErrAlerted" %>

<%--
	process the response if there is err in it.
	 --%>

<%@ OutputCache Duration="36000000" VaryByParam="l" %>

<%@ Register Src="~/Alert2.ascx" TagPrefix="uc1" TagName="Alert2" %>

<%@ Register Src="../Simple.ascx" TagPrefix="uc1" TagName="Simple" %>

<% #if (false) %>
<script src="http://localhost:12345/_apps/script/jquery.js"></script>
<script src="http://localhost:12345/_apps/script/nilnul.js"></script>
<% #endif %>

<div style="position:relative">
	<uc1:Simple runat="server" id="State1" />
	<uc1:Alert2 runat="server" id="Alert2" />
	<div>
	</div>

	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</div>




