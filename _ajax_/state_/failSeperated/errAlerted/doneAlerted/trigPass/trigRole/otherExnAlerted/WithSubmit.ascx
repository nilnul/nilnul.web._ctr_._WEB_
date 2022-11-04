<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WithSubmit.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated.errAlerted.doneAlerted.trigPass.trigRole.otherExnAlerted.WithSubmit" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register Src="~/_ajax_/state_/failSeperated/errAlerted/doneAlerted/trigPass/TrigRole.ascx" TagPrefix="uc1" TagName="TrigRole" %>

<%@ Register Src="~/_ajax_/state_/failSeperated/errAlerted/doneAlerted/trigPass/trigRole/OtherExnAlerted.ascx" TagPrefix="uc1" TagName="OtherExnAlerted" %>

<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>






<span>
	<input type="submit" value="<%= nilnul.web.svr.module_.ling_.perRequest_.perferCn2En.AftModule.GetEnCn("Submit","提交") %>" />
	<uc1:OtherExnAlerted runat="server" id="OtherExnAlerted" />

	<uc1:State runat="server" id="State" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</span>
