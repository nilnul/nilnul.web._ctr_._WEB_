<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Fill.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.cors.failMsged.Fill" %>
<%-- 
	load ui from remote url
	--%>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>
<%@ Register Src="~/ajax/cors/FailMsged1.ascx" TagPrefix="uc1" TagName="FailMsged1" %>


<div style="height:100% ;">
	<div style="height:100%;overflow:auto">

	</div>
	<uc1:FailMsged1 runat="server" ID="FailMsged" />
	<uc1:State runat="server" ID="State" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>