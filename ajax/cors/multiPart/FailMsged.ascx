<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FailMsged.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.cors.multiPart.FailMsged" %>

<%-- 
	The communication may fail in cases that:
	1) there is a problem with the connection.
    2) the user aborted the communication.
	The communication may fail in case http error encountered (need to check with Jquery doc):
	1) http error.

	if the request fails not by user aborting, show a message and (after the user clicked the message) trig an event
--%>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true"%>
<%@ Register Src="~/Alert2.ascx" TagPrefix="uc1" TagName="Alert2" %>
<%@ Register Src="~/ajax/cors/MultiPart.ascx" TagPrefix="uc1" TagName="MultiPart" %>


<% #if (false) %>
<script src="http://localhost:12345/_apps/script/jquery.js"></script>
<script src="http://localhost:12345/_apps/script/nilnul.js"></script>
<% #endif %>

<div style="position: relative">
	<uc1:MultiPart runat="server" id="MultiPart" />
	<uc1:Alert2 runat="server" ID="Alert2" />
	<div></div>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</div>




