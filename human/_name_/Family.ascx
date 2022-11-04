<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Family.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.human._name_.Family" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc2" %>
<%@ Register Src="~/txt/err/Cached.ascx" TagPrefix="uc1" TagName="Cached" %>

<%-- family name; surname ; 姓，比如：张；--%>

<span>
	<label title="如'欧阳修'中的'欧阳'">
		姓：<uc1:cached runat="server" id="Cached" />

	</label>
	<cc2:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</span>
