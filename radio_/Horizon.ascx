<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Horizon.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.radio_.Horizon" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc1" %>


<%-- 
	zero or more buttons.
	stacked horizonally.
	zero or one can be selected.
	vertical-align:  top. spanned. etc.
	
	 --%>
<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="none" %>

<div style="">
	<div style="display:flex;flex-direction:row;overflow:hidden; justify-content:center">
	</div>
<%--	<cc1:State ID="State1" runat="server" />--%>
	<cc1:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</div>
