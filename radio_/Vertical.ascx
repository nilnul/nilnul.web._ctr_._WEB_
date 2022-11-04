<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Vertical.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.radio_.Vertical" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc2" %>


<%-- 
	zero or more buttons.
	stacked vertically.
	zero or one can be selected.
	vertical-align:  top. spanned. etc.
	
	 --%>
<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="none" %>

<div style="display:flex;flex-direction:column;overflow:hidden;">
	<div style="display:flex;flex-direction:column;overflow:auto;">
	</div>
<%--	<cc1:State ID="State1" runat="server" />--%>
	<cc2:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>