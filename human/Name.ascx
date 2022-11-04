<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Name.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.human.Name" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc1" %>
<%@ Register Src="_name_/Family.ascx" TagPrefix="uc1" TagName="Family" %>
<%@ Register Src="_name_/Mid.ascx" TagPrefix="uc1" TagName="Mid" %>
<%@ Register Src="_name_/Given.ascx" TagPrefix="uc1" TagName="Given" %>



<span data-val-keys='["family","mid", "given"]'>
	<uc1:Family runat="server" id="Family" />
	<uc1:Mid runat="server" id="Mid" />
	<uc1:Given runat="server" id="Given" />
	<cc1:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</span>
