<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OtherExnAlerted.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated.errAlerted.doneAlerted.trigPass.trigRole.OtherExnAlerted" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/_ajax_/state_/failSeperated/errAlerted/doneAlerted/trigPass/TrigRole.ascx" TagPrefix="uc1" TagName="TrigRole" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>
<%@ Register Src="~/Alert2.ascx" TagPrefix="uc1" TagName="Alert2" %>





<span>
	<uc1:TrigRole runat="server" id="TrigRole" />
	<uc1:Alert2 runat="server" id="Alert2" />
	<uc1:State runat="server" id="State" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</span>
