<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopBar.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._dialog_.TopBar" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<div style="text-align:right;">
	<button title="<%= nilnul.web.svr.module_.ling_.perRequest_.perferCn2En.AftModule.GetCnEn("最大","Maximize") %>">+</button><button title="<%= nilnul.web.svr.module_.ling_.perRequest_.perferCn2En.AftModule.GetCnEn("关闭","Close") %>">X</button>
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>