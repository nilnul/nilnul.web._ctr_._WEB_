<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WithBtn.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.cors.failMsged.WithBtn" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>


<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>
<%@ Register Src="~/ajax/cors/FailMsged1.ascx" TagPrefix="uc1" TagName="FailMsged1" %>






<span>
	<button>
		<%= nilnul.web.svr.module_.ling_.enCn_.BySessionX.GetEnCn("Submit","提交") %> 
	</button>
	<uc1:FailMsged1 runat="server" ID="FailMsged1" />
	<uc1:State runat="server" ID="State" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</span>
