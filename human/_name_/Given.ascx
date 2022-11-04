<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Given.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.human._name_.Given" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc2" %>

<%@ Register Src="~/txt/err/Cached.ascx" TagPrefix="uc1" TagName="Cached" %>

<%-- middle name; 
	in China, for example: the "由" in name "朱由检" is the middle name. middle name expresses the rank in a family lineage.
	
	--%>

<span>
	<label title="如'腾格尔'中的'腾格尔'">
		名：
		<uc1:Cached runat="server" ID="Cached" />

	</label>
	<cc2:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</span>
