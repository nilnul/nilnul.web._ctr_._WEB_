<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ajax1.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Ajax1" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>

<%--
	defaulted settings for ajax.

	considering multi-part(when uploading files) /cors, so minimize this widget and we can later make different forked extensions --%>
<span  > <%-- data-url="" --%>
	<span></span>
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
	<%--<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>--%>
</span>
