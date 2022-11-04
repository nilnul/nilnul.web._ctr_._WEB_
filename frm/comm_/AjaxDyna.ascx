<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AjaxDyna.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.frm.comm_.AjaxDyna" %>
<%@ OutputCache Duration="36000000" VaryByParam="l" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc2" %>
<%@ Register Src="~/Frm.ascx" TagPrefix="uc1" TagName="Frm" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>



<% #if (false) %>
<% #endif %>

<div style="position: relative; overflow: auto; height: auto">
	<uc1:Frm runat="server" ID="Form" />
	<uc1:State runat="server" id="State" />
	<div></div>
	<cc2:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>
