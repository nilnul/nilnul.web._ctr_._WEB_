<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Required.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.validator_.Required" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.enCn_" TagPrefix="cc2" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc1" %>

<%-- 
	put along side, not enclosing of, a feed.
	check whether the val of a feed is valid with respect to a regex. --%>
<span>
	<span>
		<cc2:enCn__BySession ID="EnCn__BySession1" runat="server">
			<%--first one is english--%>
			<asp:View ID="View1" runat="server">Required</asp:View>
			<asp:View ID="View2" runat="server">必填</asp:View>
		</cc2:enCn__BySession>
	</span>
	<cc1:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</span>
