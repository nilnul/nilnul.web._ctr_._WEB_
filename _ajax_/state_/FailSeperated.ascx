<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FailSeperated.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.FailSeperated" %>

<%@ OutputCache VaryByParam="none" Duration="36000000" %>

<%--
	subtype "Fail" into {Err, Exception}. 
		Err indicating server unreachable due to network disconnectedness or timeout;
		Exception is the response error (status code is in the not normal category; WebApi uses this to communicate useful info)
	--%>

<span data-url="<%=url %>" >
	<span></span>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</span>
