<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PasswordRegexed3.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.PasswordRegexed3" %>

<%--<%@ OutputCache  Duration="3600000" VaryByParam="id" %>--%>
<%@ Register Src="Password2.ascx" TagPrefix="uc5" TagName="Password2" %>


<%--
	regex can be removed. ???regex will be output to the browser as is?
--%>

<span>
	<uc5:Password2 runat="server" ID="Password2" />
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</span>
