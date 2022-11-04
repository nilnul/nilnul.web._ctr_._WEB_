<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WithButton.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state.WithButton" %>
<%@ Register Src="~/_ajax_/State.ascx" TagPrefix="uc1" TagName="State" %>

<div style="display:inline-block;position:relative;">
	<button>
		保存
	</button>
	<uc1:State runat="server" ID="State" />


</div>
