<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="JsonBack.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.JsonBack" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<%@ Register Src="~/Ajax1.ascx" TagPrefix="uc1" TagName="Ajax1" %>

<span data-url="">
	<uc1:Ajax1 runat="server" ID="Ajax" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</span>
