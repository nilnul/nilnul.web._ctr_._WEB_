<%@ Page Title="" Language="C#" MasterPageFile="~/_master/TypeJs.Master" AutoEventWireup="true"  %>
<%@ OutputCache Duration="360000000" VaryByParam="l" %>

<%@ Register Src="~/_all/InScript.ascx" TagPrefix="uc1" TagName="InScript" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:InScript runat="server" id="InScript" />
</asp:Content>
