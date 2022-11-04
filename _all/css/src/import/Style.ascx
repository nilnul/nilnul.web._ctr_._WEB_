<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>
<%@ Register Src="~/_all/css/src/Import.ascx" TagPrefix="uc1" TagName="Import" %>

<asp:Literal ID="Literal1" runat="server" Text="<style>"></asp:Literal>
<uc1:Import runat="server" ID="Import" />
<asp:Literal ID="Literal2" runat="server" Text="</style>"></asp:Literal>
