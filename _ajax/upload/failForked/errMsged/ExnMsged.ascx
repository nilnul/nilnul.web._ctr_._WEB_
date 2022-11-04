<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ExnMsged.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax.upload.failForked.errMsged.ExnMsged" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/_ajax/upload/failForked/ErrMsged.ascx" TagPrefix="uc1" TagName="ErrMsged" %>
<%@ Register Src="~/Alert2.ascx" TagPrefix="uc1" TagName="Alert2" %>



<span>

	<uc1:ErrMsged runat="server" id="ErrMsged" />
	<uc1:Alert2 runat="server" id="Alert2" />

	<span></span>
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</span>
