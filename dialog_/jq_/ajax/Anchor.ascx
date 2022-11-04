<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Anchor.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.dialog_.jq_.ajax.Anchor" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register Src="~/_dialog_/TopBar.ascx" TagPrefix="uc1" TagName="TopBar" %>
<%@ Register Src="~/ajax/cors/failMsged/Fill.ascx" TagPrefix="uc1" TagName="Fill" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>
<%@ Register Src="~/dialog_/jq_/Ajax.ascx" TagPrefix="uc1" TagName="Ajax" %>




<%--
	enable a method to popup a jquery dialog containing the ajax of speficifed url and beginning fetching it.
--%>
<div data-caption="<%= Request.QueryString["caption"] %>" data-url="<%= Request.QueryString["url"] %>" >
	<uc1:Ajax runat="server" ID="Ajax" />
	<a href="javascript:void null;"></a>
	<uc1:State runat="server" ID="State" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>
