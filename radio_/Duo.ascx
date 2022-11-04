<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Duo.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.radio_.Duo" %>
<%-- impossible if none is selected --%>
<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="l" %>

<div>
	<button class="<%= classSelected%>" disabled="true">
	</button>
	<button>
	</button>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</div>
