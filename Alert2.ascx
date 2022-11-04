<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Alert2.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Alert2" %>
<%@ OutputCache VaryByParam="l" Duration="36000000" %>

<div
	style=" left: 0%; top: 0%; width: 100%; height: 100%; background-color: black; color: yellow; overflow:auto; padding:0px; margin:0px;">
<%-- msg --%>
	<p style="display:inline-block;padding:0px;margin:0px;" ></p>

	<button   type="button">
		<% =nilnul._web_._CTR_.lang.PerRequest.GetEnZh("Ok","好") %>
	</button>
	<%-- state --%>
	<span>

	</span>

	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</div>
