<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cors.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.Cors" %>

<%@ OutputCache VaryByParam="none" Duration="36000000" %>
<%@ Register Src="~/Ajax.ascx" TagPrefix="uc1" TagName="Ajax" %>


<span data-url="">
	<uc1:Ajax runat="server" ID="Ajax" />
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</span>
