<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FailMsged1.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.cors.FailMsged1" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%-- 
	if no error, msg will be shown( the response from server is in format {content, comment}; show comment only; the content can be shown in log or networkTrafficMonitor).

	The communication may fail in cases that:
	1) there is a problem with the connection.
    2) the user aborted the communication.
	The communication may fail in case http error encountered (need to check with Jquery doc; checked and confirmed "http://api.jquery.com/jquery.ajax/ @20190505 :  When an HTTP error occurs, errorThrown receives the textual portion of the HTTP status, such as "Not Found" or "Internal Server Error." "):
		1) http error.

	if the request fails not by user aborting, show a message and (after the user clicked the message) trig an event
--%>

<%@ OutputCache Duration="36000000" VaryByParam="id" %>
<%@ Register Src="~/Alert2.ascx" TagPrefix="uc1" TagName="Alert2" %>
<%@ Register Src="~/ajax/Cors1.ascx" TagPrefix="uc1" TagName="Cors" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>


<% #if (false) %>
<script src="http://localhost:12345/_apps/script/jquery.js"></script>
<script src="http://localhost:12345/_apps/script/nilnul.js"></script>
<% #endif %>

<div style="position: relative">
	<uc1:Cors runat="server" id="Cors" />
	<uc1:Alert2 runat="server" ID="Alert2" />
	<uc1:State runat="server" ID="State" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>




