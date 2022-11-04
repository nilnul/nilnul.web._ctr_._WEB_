<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ErrMsged.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax.upload.failForked.ErrMsged" %>

<%--

--%>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>



<% #if (false) %>
<script src="http://localhost:12345/_apps/script/jquery.js"></script>
<script src="http://localhost:12345/_apps/script/nilnul.js"></script>
<% #endif %>

<div style="position: relative">

	<%@ Register Src="~/_ajax/upload/FailForked.ascx" TagPrefix="uc1" TagName="FailForked" %>
	<uc1:FailForked runat="server" id="FailForked" />

	<%@ Register Src="~/Alert2.ascx" TagPrefix="uc1" TagName="Alert2" %>
	<uc1:Alert2 runat="server" ID="Alert2" />

	<div>
	</div>

	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</div>




