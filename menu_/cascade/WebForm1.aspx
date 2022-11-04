<%@ Page Title="" Language="C#" MasterPageFile="~/_master/ForTest1.Master" AutoEventWireup="true"  %>

<%@ Register Src="~/menu_/Main.ascx" TagPrefix="uc1" TagName="Main" %>
<%@ Register Src="~/menu_/_cascade/css/typeCss/import/Style.ascx" TagPrefix="uc1" TagName="Style" %>
<%@ Register Src="~/menu_/Cascade.ascx" TagPrefix="uc1" TagName="Cascade" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<uc1:Style runat="server" ID="Style" />
	<uc1:Cascade runat="server" id="Cascade" />
</asp:Content>
