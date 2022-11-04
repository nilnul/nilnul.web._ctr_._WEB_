<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ClickOff.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.cover_.ClickOff" %>
<%@ OutputCache Duration="36000000" VaryByParam="l" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc2" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>

<% #if (false) %>
<% #endif %>

<div style="width: 100%;  height: 100%;  position: absolute;  top: 0;  left: 0;   background: rgba(25,25,25,.8);   color: yellow;  display:none;">
	<uc1:State runat="server" id="State" />
	<cc2:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>
