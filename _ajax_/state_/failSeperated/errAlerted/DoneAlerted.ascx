<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DoneAlerted.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated.errAlerted.DoneAlerted" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/_ajax_/state_/failSeperated/ErrAlerted.ascx" TagPrefix="uc1" TagName="ErrAlerted" %>
<%@ Register Src="~/Alert2.ascx" TagPrefix="uc1" TagName="Alert2" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>


<span>


	<uc1:ErrAlerted runat="server" id="ErrAlerted" />
	<uc1:Alert2 runat="server" id="Alert2" />
	<uc1:State runat="server" id="State" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</span>
