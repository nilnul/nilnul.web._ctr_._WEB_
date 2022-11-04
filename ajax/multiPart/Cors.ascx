<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cors.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.multiPart.Cors" %>

<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<%@ Register Src="~/ajax/MultiPart.ascx" TagPrefix="uc1" TagName="MultiPart" %>


<span data-url="">
	<uc1:MultiPart runat="server" id="MultiPart" />	
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</span>
