<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Abort.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state.Abort" %>
<%@ OutputCache Duration="36000000" VaryByParam="id" %>

<%-- 
	make the Http communication abortable. If the user aborts the communication by pressing the "abort" button and confirming it, the communication is aborted and a "fail" callback will be called.
	the callback is not provided here and is not processed here. the callback will be appended by a subsequent control, which wrapps this control.
--%>



<% #if (false) %>
<script src="http://localhost:12345/_apps/script/jquery.js"></script>
<script src="http://localhost:12345/_apps/script/nilnul.js"></script>
<% #endif %>


<div style="position: relative; overflow: auto; height: auto">
	<%@ Register Src="../State.ascx" TagPrefix="uc1" TagName="Ajax" %>
	<uc1:Ajax runat="server" ID="Ajax" />
	<%@ Register Src="~/Abort1.ascx" TagPrefix="uc1" TagName="Abort1" %>
	<uc1:Abort1 runat="server" ID="Abort1" />
	<span></span>

	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</div>
