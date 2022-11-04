<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Labeled.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.txt.err.email.Labeled" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_" TagPrefix="cc1" %>
<%@ Register Src="~/txt/err/Email.ascx" TagPrefix="uc1" TagName="Email" %>

<label>
	<label>
		<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.enCn_" TagPrefix="cc1" %>
		
		<cc1:enCn__BySession ID="EnCn__BySession1" runat="server">
			<%--first one is english--%>
			<asp:View ID="View1" runat="server">Email</asp:View>
			<asp:View ID="View2" runat="server">电子邮箱</asp:View>
		</cc1:enCn__BySession>		
		:
	</label>
	<uc1:Email runat="server" ID="Email" />
	<cc1:script__OnLoad ID="Script__OnLoad1" runat="server" />
</label>
