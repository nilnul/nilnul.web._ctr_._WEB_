<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WithButton.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state.errAlerted.WithButton" %>
<%@ Register Src="~/_ajax_/state/ErrAlerted.ascx" TagPrefix="uc1" TagName="ErrAlerted" %>

<div>
	<button>
		保存
	</button>
	<uc1:ErrAlerted runat="server" ID="ErrAlerted" />
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</div>