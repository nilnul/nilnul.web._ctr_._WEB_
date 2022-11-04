<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FetchUi.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.FetchUi" %>
<%-- 
	load ui from remote url
	--%>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/ajax_/NoAlert.ascx" TagPrefix="uc1" TagName="NoAlert" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>


<div>
	<div>

	</div>
	<uc1:NoAlert runat="server" ID="NoAlert" />
	<uc1:State runat="server" ID="State" />
	
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>