<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Err.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.txt.Err" %>
<%--<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="none"  %>--%>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_" TagPrefix="cc1" %>
<%@ Register Src="~/Txt4.ascx" TagPrefix="uc1" TagName="Txt4" %>
<%@ Register Src="~/Err1.ascx" TagPrefix="uc1" TagName="Err1" %>

<span style="display:inline-block">
	<uc1:Txt4 runat="server" ID="Txt4" />
	<uc1:Err1 runat="server" ID="Err1" />
	<cc1:script__OnLoad ID="Script__OnLoad1" runat="server" />
</span>
