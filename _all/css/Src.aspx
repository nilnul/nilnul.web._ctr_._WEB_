<%@ Page Title="" Language="C#" MasterPageFile="~/_master/Css.Master" AutoEventWireup="true"  %>
<%@ OutputCache Duration="36000000" VaryByParam="l" VaryByCustom="l" %><%-- in page you cannot use "Shared"--%>
<%--<%@ OutputCache CacheProfile="aspx" %>--%>

<%@ Register Src="~/_all/Css.ascx" TagPrefix="uc1" TagName="Css" %>

<script runat="server">
	protected void Page_Load(object sender, EventArgs e)
	{
		Response.Cache.SetExpires(DateTime.Now.AddMonths(1));
		Response.Cache.SetCacheability(HttpCacheability.Public);
		Response.Cache.SetValidUntilExpires(true);

	}
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:Css runat="server" id="Css" />
</asp:Content>
