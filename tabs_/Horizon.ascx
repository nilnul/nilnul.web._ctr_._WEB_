<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Horizon.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.tabs_.Horizon" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc1" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" Shared="true" %>

<%@ Register Src="~/Alter.ascx" TagPrefix="uc1" TagName="Alter" %>
<%@ Register Src="~/radio_/Horizon.ascx" TagPrefix="uc1" TagName="Horizon" %>


<%-- this div can be inserted into a vertially aligned flex box and set flex: 1 1 auto;  --%>
<div style="overflow:hidden;height: 100%; display: flex;flex-direction:column;  background:blue;"><%-- overflow:hidden must be present or the content will bloat the container --%>
	<div style="flex:0 0 auto;min-width:0; overflow:hidden;background:navy; justify-content:right;"><%-- height:100%--%>
		<uc1:Horizon runat="server" ID="Horizon11" />
	</div>
	<div style="flex:1 1 auto;min-width:0; overflow:hidden;background:cyan;"><%-- height:100%--%>
		<uc1:Alter runat="server" ID="Alter" />
	</div>
	<cc1:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</div>

