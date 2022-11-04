<%@ Page Title="" Language="C#" MasterPageFile="~/_master/ForTest.Master" AutoEventWireup="true"  %>

<%@ Register Src="~/Confirm.ascx" TagPrefix="uc1" TagName="Confirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:Confirm runat="server" id="Confirm1" />
</asp:Content>
