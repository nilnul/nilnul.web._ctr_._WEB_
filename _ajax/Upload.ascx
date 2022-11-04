<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Upload.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax.Upload" %>

<%@ OutputCache VaryByParam="none" Duration="36000000" %>

<%--
	to upload a file
	subtype "Fail" into {Err, Exception}. 
		Err indicating server unreachable due to network disconnectedness or timeout; 
		Exception is the response error (status code is in the not normal category; WebApi uses this to communicate useful info)

	use data-url in root element
	--%>

<span  >
	<span></span><%-- the state--%>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</span>
