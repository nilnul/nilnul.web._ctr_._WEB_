<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Nulable.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.human._name_.family.Nulable" %>

<%-- maybe we can just use txt.Err instead --%>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc2" %>

<%@ Register Src="~/txt/err/Cached.ascx" TagPrefix="uc1" TagName="Cached" %>

<%-- family name; surname --%>

<span>
	<label title="如'欧阳修'中的'欧阳'；或如'腾格尔'中的''">
		姓：
		<uc1:Cached runat="server" ID="Cached" />

	</label>
	<cc2:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</span>

