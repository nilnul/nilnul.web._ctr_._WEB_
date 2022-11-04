<%@ Page Title="" Language="C#" MasterPageFile="~/_master/ForTest.Master" AutoEventWireup="true" %>

<%@ Register Src="~/NumPositive.ascx" TagPrefix="uc1" TagName="NumPositive" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<uc1:NumPositive runat="server" ID="NumPositive1" />
</asp:Content>
