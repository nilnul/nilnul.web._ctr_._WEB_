<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MultiPart.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.cors.MultiPart" %>

<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<%@ Register Src="~/ajax/Cors1.ascx" TagPrefix="uc1" TagName="Cors1" %>


<span data-url="">
	<uc1:Cors1 runat="server" id="Cors1" />
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</span>
