<%@ Page Title="" Language="C#" MasterPageFile="~/_master/ForTest1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="nilnul.web._ctr_._WEB_.menu_.p.WebForm1" %>

<%@ Register Src="~/menu_/Main.ascx" TagPrefix="uc1" TagName="Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:Main runat="server" id="Main" />
</asp:Content>
