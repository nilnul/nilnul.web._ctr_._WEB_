<%@ Page Title="" Language="C#" MasterPageFile="_p/Nested.Master" AutoEventWireup="true"  %>

<%@ Register Src="~/upload_/Click.ascx" TagPrefix="uc1" TagName="Click" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
	<uc1:Click runat="server" id="Click" />
</asp:Content>
