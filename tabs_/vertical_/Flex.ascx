<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Flex.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.tabs_.vertical_.Flex" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" Shared="true" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/radio_/Vertical.ascx" TagPrefix="uc1" TagName="Vertical" %>
<%@ Register Src="~/Alter.ascx" TagPrefix="uc1" TagName="Alter" %>

<%-- this div can be inserted into a vertially aligned flex box and set flex: 1 1 auto;  --%>
<div style="overflow:hidden;height: 100%; display: flex;  background:blue;"><%-- overflow:hidden must be present or the content will bloat the container --%>
	<div style="flex:0 0 auto;min-width:0; overflow:hidden;background:navy;"><%-- height:100%--%>
		<uc1:Vertical runat="server" ID="Vertical" />
	</div>
	<div style="flex:1 1 auto;min-width:0; overflow:hidden;background:cyan;"><%-- height:100%--%>
		<uc1:Alter runat="server" ID="Alter" />
	</div>
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>

