<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Comm.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.frm.Comm" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc2" %>

<%@ OutputCache Duration="36000000" VaryByParam="l" %>


<%@ Register Src="../Frm.ascx" TagPrefix="uc1" TagName="Frm" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>
<%@ Register Src="~/ajax/cors/FailMsged1.ascx" TagPrefix="uc1" TagName="FailMsged1" %>



<% #if (false) %>
<% #endif %>

<div style="position: relative; overflow: auto; height: auto">
	<uc1:Frm runat="server" ID="Form" />
	<uc1:FailMsged1 runat="server" ID="FailMsged1" />
	<uc1:State runat="server" id="State" />
	<cc2:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>
