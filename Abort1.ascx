<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Abort1.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Abort1" %>
<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="l" %>
<%@ Register Src="~/Confirm1.ascx" TagPrefix="uc1" TagName="Confirm1" %>
<%@ Register Src="~/Alert2.ascx" TagPrefix="uc1" TagName="Alert2" %>

<div id="<%=ClientID %>" style="/*position: absolute;*/ left: 0%; top: 0%; width: 100%; height: 100%; color: yellow; background-color: rgba(80, 80, 80,.8); display: block; overflow:auto; margin:0px;padding:0px;">

	<uc1:Alert2 runat="server" id="Alert2" />
	<uc1:Confirm1 runat="server" id="Confirm1" />
	<%-- state --%>
	<span></span>
	
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</div>
