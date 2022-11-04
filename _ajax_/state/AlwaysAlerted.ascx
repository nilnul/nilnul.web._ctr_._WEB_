<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AlwaysAlerted.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state.AlwaysAlerted" %>

<%--
	process the response if there is err in it.
--%>

<%@ OutputCache Duration="36000000" VaryByParam="l" %>


<% #if (false) %>
<script src="http://localhost:12345/_apps/script/jquery.js"></script>
<script src="http://localhost:12345/_apps/script/nilnul.js"></script>
<% #endif %>

<div style="position: relative">
	<%@ Register Src="../State.ascx" TagPrefix="uc1" TagName="State" %>

	<uc1:State runat="server" ID="State1" />
	<%@ Register Src="~/Alert2.ascx" TagPrefix="uc1" TagName="Alert2" %>

	<uc1:Alert2 runat="server" ID="Alert2" />
	<uc1:Alert2 runat="server" ID="Alert1" />
	<div>
	</div>

	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</div>




