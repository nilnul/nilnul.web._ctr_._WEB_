<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeNow.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.time.bound_.day_.LeNow" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc1" %>
<%@ Register Src="../Day.ascx" TagName="Day" TagPrefix="uc1" %>

<span>
	<uc1:Day ID="Date1" runat="server" />
	<cc1:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</span>

