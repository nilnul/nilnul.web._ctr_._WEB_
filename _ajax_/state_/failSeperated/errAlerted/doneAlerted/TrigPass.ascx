<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrigPass.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated.errAlerted.doneAlerted.TrigPass" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register Src="~/_ajax_/state_/failSeperated/errAlerted/DoneAlerted.ascx" TagPrefix="uc1" TagName="DoneAlerted" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>


<span>

	<uc1:DoneAlerted runat="server" ID="DoneAlerted" />
	<uc1:State runat="server" id="State" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</span>
