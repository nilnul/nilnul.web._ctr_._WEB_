<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Click.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax.upload.failForked.errMsged.exnMsged.ui_.Click" 	%>
<%@ Register Src="~/_ajax/upload/failForked/errMsged/ExnMsged.ascx" TagPrefix="uc1" TagName="ExnMsged" %>


<div style="overflow: auto;">
	<div style="display: inline-block;">
		<label>
			上传
			<input type="file" style="display: none">
		</label>
	</div>
	<div style="display: inline-block;">
		<uc1:ExnMsged runat="server" ID="ExnMsged" />

	</div>
	<span></span>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=this.unique_func_name %>(this)"></script>
</div>
