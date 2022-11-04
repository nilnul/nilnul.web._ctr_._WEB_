<%@ Page Title="" Language="C#" MasterPageFile="~/_master/ForTest.Master" AutoEventWireup="true" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul.web._ctr" TagPrefix="cc1" %>

<%@ Register Src="~/Abort.ascx" TagPrefix="uc1" TagName="Abort" %>
<%@ Register Src="~/RegexErr.ascx" TagPrefix="uc1" TagName="RegexErr" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
	<uc1:RegexErr runat="server" ID="RegexErr" />
	<cc1:ClientIdHolder ID="ClientIdHolder1" runat="server">
	</cc1:ClientIdHolder>
	<script id="<%=ClientIdHolder1.ClientID %>"  >
		var regexErr = document.getElementById("<%=ClientIdHolder1.ClientID%>").previousElementSibling;
		regexErr.regexStrOp("^a[bc]$");
		regexErr.errYesMsgOp("must be a[bc]");


	</script>
</asp:Content>
