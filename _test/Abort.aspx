<%@ Page Title="" Language="C#" MasterPageFile="~/_master/ForTest.Master" AutoEventWireup="true" %>

<%@ Register Src="~/Abort.ascx" TagPrefix="uc1" TagName="Abort" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:Abort runat="server" id="Abort1" />
</asp:Content>
