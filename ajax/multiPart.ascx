<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MultiPart.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.MultiPart" %>

<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<%@ Register Src="~/Ajax1.ascx" TagPrefix="uc1" TagName="Ajax1" %>

<span data-url="">
	<uc1:Ajax1 runat="server" ID="Ajax" />
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</span>
