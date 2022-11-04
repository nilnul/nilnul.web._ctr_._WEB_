<%@ Page Title="" Language="C#" MasterPageFile="~/_master/ForTest.Master" AutoEventWireup="true"  %>

<%@ Register Src="~/Alert.ascx" TagPrefix="uc1" TagName="Alert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:Alert runat="server" id="Alert1" />

	<a href="~/Alert.ascx?id=abc" runat="server">alert?id=abc</a>
</asp:Content>
