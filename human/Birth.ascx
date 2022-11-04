<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Birth.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.human.Birth" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc1" %>
<%@ Register Src="~/time/bound_/day_/LeNow.ascx" TagPrefix="uc1" TagName="LeNow" %>

<label>
	<span>

	
	出生日期:</span>

	<uc1:LeNow runat="server" ID="LeNow" />

	<cc1:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</label>
