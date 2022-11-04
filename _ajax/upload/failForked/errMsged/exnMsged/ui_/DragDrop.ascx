<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DragDrop.ascx.cs" Inherits="nilnul.fs._web.upload_.DragDrop" %>
<%@ Register Assembly="nilnul.web.ctr._web._ctr" Namespace="nilnul.web.ctr._web._ctr" TagPrefix="cc2" %>
<%@ Register Assembly="nilnul.web._ctr(141115" Namespace="nilnul.web._ctr" TagPrefix="cc1" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>

<div style="min-width:10px; min-height:10px;" class="nilnul-drop">
	<span>drop files here...</span>
	<cc2:State ID="State1" runat="server" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>
