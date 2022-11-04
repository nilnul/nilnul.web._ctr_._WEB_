<%@ Page Title="" Language="C#" MasterPageFile="~/_master/ForTest.Master" AutoEventWireup="true" %>

<%@ Register Src="~/Num.ascx" TagPrefix="uc1" TagName="Num" %>






<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:Num runat="server" ID="Num" />

</asp:Content>
