<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Address.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.map.Address" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc1" %>
<%@ Register Src="~/TxtArea1.ascx" TagPrefix="uc1" TagName="TxtArea1" %>
<%@ Register Src="~/err/optional_/Length.ascx" TagPrefix="uc1" TagName="Length" %>

<div>
	<uc1:TxtArea1 runat="server" ID="TxtArea1" />
	<uc1:Length runat="server" id="Length" />
	<cc1:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</div>

