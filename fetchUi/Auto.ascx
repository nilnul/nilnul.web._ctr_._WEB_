<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Auto.ascx.cs" Inherits="nilnul.web.ctr._web.fetchUi.Auto" %>
<%@ Register Assembly="nilnul.web.ctr._web._ctr" Namespace="nilnul.web.ctr._web._ctr" TagPrefix="cc2" %>
<%-- 
	load ui from remote url
	--%>
<%@ Register Assembly="nilnul.web._ctr(141115" Namespace="nilnul.web._ctr" TagPrefix="cc1" %>
<%@ Register Src="~/FetchUi.ascx" TagPrefix="uc1" TagName="FetchUi" %>



<div>
	<uc1:FetchUi runat="server" id="FetchUi" />
	<cc2:State ID="State1" runat="server" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>