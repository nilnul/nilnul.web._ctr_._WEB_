<%@ Page Title="" Language="C#" MasterPageFile="_p/Nested.Master" AutoEventWireup="true"  %>

<%@ Register Src="~/upload_/Iframe.ascx" TagPrefix="uc1" TagName="Iframe" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
	<uc1:Iframe runat="server" id="Iframe" />
</asp:Content>
