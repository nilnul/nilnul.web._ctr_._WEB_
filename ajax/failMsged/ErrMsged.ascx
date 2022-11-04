<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ErrMsged.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.failMsged.ErrMsged" %>
<%@ OutputCache Duration="36000000" VaryByParam="id" %>

<%@ Register Src="~/Alert2.ascx" TagPrefix="uc1" TagName="Alert2" %>
<%@ Register Src="../FailMsged.ascx" TagPrefix="uc1" TagName="FailMsged" %>

<%--
	process the response if there is http err in it. http err is server error
	 --%>




<% #if (false) %>
<script src="http://localhost:12345/_apps/script/jquery.js"></script>
<script src="http://localhost:12345/_apps/script/nilnul.js"></script>
<% #endif %>

<div style="position:relative">
	<uc1:FailMsged runat="server" id="FailMsged" />

	<uc1:Alert2 runat="server" id="Alert2" />
	<div>
	</div>

	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</div>




