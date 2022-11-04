<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="../Import.ascx" TagPrefix="uc1" TagName="Import" %>

<asp:Literal ID="Literal1" runat="server" Text="<style>"></asp:Literal>
<uc1:Import runat="server" ID="Import" />
<asp:Literal ID="Literal2" runat="server" Text="</style>"></asp:Literal>
