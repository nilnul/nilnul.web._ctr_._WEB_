<%@ Page Title="" Language="C#" MasterPageFile="_p/Nested.Master" AutoEventWireup="true" CodeBehind="P.aspx.cs" Inherits="nilnul.fs._web.upload_.dragDrop.P" %>

<%@ Register Src="~/upload_/DragDrop.ascx" TagPrefix="uc1" TagName="DragDrop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
	<uc1:DragDrop runat="server" id="DragDrop" />
</asp:Content>
