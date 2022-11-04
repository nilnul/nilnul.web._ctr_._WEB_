<%@ Page Title="" Language="C#" MasterPageFile="~/_master/TypeJs.Master" AutoEventWireup="true" %>

<%@ OutputCache CacheProfile="aspx" %>

<%@ Register Src="../Js.ascx" TagPrefix="uc1" TagName="Js" %>
<script runat="server">
	protected void Page_Load(object sender, EventArgs e)
	{
		Response.Cache.SetExpires(DateTime.Now.AddMonths(1));
		Response.Cache.SetCacheability(HttpCacheability.Public);
		Response.Cache.SetValidUntilExpires(true);

	}
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:Js runat="server" id="JsAll1" />
</asp:Content>
