<%@ Page Title="" Language="C#" MasterPageFile="~/_master/ForTest.Master" AutoEventWireup="true" %>

<%@ Register Src="~/PosQuotient.ascx" TagPrefix="uc1" TagName="PosQuotient" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:PosQuotient runat="server" ID="PosQuotient" />
</asp:Content>
