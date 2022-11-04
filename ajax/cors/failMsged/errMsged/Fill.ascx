<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Fill.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.cors.failMsged.errMsged.Fill" %>
<%-- 
	load ui from remote url
	--%>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>
<%@ Register Src="~/ajax/cors/failMsged/ErrMsged.ascx" TagPrefix="uc1" TagName="ErrMsged" %>



<div style="height:100%">
	<div style="height:100%;overflow:auto">

	</div>
	<uc1:ErrMsged runat="server" ID="ErrMsged" />
	<uc1:State runat="server" ID="State" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>