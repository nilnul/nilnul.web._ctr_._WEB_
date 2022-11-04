<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DoneUncover.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.frm.comm.DoneUncover" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc2" %>

<%@ OutputCache Duration="36000000" VaryByParam="l" %>


<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>
<%@ Register Src="~/frm/Comm.ascx" TagPrefix="uc1" TagName="Comm" %>
<%@ Register Src="~/cover_/ClickOff.ascx" TagPrefix="uc1" TagName="ClickOff" %>




<% #if (false) %>
<% #endif %>

<div style="position: relative; overflow: auto; height: auto">
	<uc1:Comm runat="server" ID="Comm" />
	<uc1:State runat="server" id="State" />
	<uc1:ClickOff runat="server" id="ClickOff" />
	<cc2:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>
