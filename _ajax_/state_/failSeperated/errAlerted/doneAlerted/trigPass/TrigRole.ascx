<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrigRole.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated.errAlerted.doneAlerted.trigPass.TrigRole" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register Src="~/_ajax_/state_/failSeperated/errAlerted/doneAlerted/TrigPass.ascx" TagPrefix="uc1" TagName="TrigPass" %>

<span>
	<uc1:TrigPass runat="server" id="TrigPass" />

	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</span>
