<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Div.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.state.Div" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>

<div>
	<uc1:State runat="server" ID="State" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>