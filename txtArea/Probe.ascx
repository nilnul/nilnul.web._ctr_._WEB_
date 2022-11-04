<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Probe.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.txtArea.Probe" %>
<script runat="server">
	/// <summary>
	/// txtArea with err
	/// </summary>
</script>

<div>
	<%@ Register Src="~/TxtArea1.ascx" TagPrefix="uc1" TagName="TxtArea1" %>
	<uc1:TxtArea1 runat="server" id="TxtArea1" />

	<%@ Register Src="~/Err1.ascx" TagPrefix="uc1" TagName="Err1" %>
	<uc1:Err1 runat="server" id="Err1" />

	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</div>
