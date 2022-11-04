<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Dialog.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.frm.comm_.ajaxDyna.Dialog" %>
<%@ OutputCache Duration="36000000" VaryByParam="l" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc2" %>
<%@ Register Src="~/frm/comm_/AjaxDyna.ascx" TagPrefix="uc1" TagName="AjaxDyna" %>
<%@ Register Src="~/dialog_/LoadContent.ascx" TagPrefix="uc1" TagName="LoadContent" %>






<% #if (false) %>
<% #endif %>

<div ><%-- don't set position:relative cuz we want the contained dialog's parent to be not this one but the one above. This div is jus a interim holder whileas the contained dialog has the property of "position:absolute"

	inline-block or not can be set in higher-up containers. such as a container for this can be set as "display:inline-block"; as the result, this div will be a sub-block in that inline-blaock
	--%>
	<uc1:LoadContent runat="server" ID="LoadContent" />
	<uc1:AjaxDyna runat="server" id="AjaxDyna" />
	<cc2:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>
