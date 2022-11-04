<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Labeled.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.txt.err_.pass.Labeled" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.enCn_" TagPrefix="cc1" %>
<%@ Register Src="~/txt/err_/Pass.ascx" TagPrefix="uc1" TagName="Pass" %>

<label>
	<span>
		<cc1:enCn__BySession ID="EnCn__BySession1" runat="server">
			<asp:View ID="View1" runat="server"><%--english--%>Password:</asp:View>
			<asp:View ID="View2" runat="server">密码：</asp:View>
		</cc1:enCn__BySession>
	</span>
	<uc1:Pass runat="server" ID="Pass" />
	<script src="data:,;" onload="<%=unique_func_name %>(this)"></script>
</label>
