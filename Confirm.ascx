<%@ Control Language="C#" AutoEventWireup="true"  %>

<div style="position:absolute;left:0%;top:0%;width:100%;height:100%;display:block;" onfocus="this.focused_()" id="<%=ClientID %>" name="<%=ClientID %>" 
<%--	onsubmit="return false;" action="javascript:void(0);" --%>
>
	<p id="message" runat="server">
		<%=nilnul._web_._CTR_.LangModule.GetString("If you continue to abort, server will continue processing, but won't notify you. Insist to continue?","如果坚持中止，服务器可能会继续处理，但不通知您结果。是否仍要中止？") %>
	</p>

	<button id="confirm" runat="server" onclick="this.clicked()">
		<%=nilnul._web_._CTR_.LangModule.GetString("Ok","确定") %>
	</button>
	<button id="cancel" runat="server" onclick="this.clicked()">
		<% =nilnul._web_._CTR_.LangModule.GetString("Cancel","取消")%>
	</button>
</div>
<script>
	(function (
		element
		,
		confirm
		,
		cancel
	) {
		var element_focused = function () {
			$(confirm).focus();
		};

		var pub = function () {
			element.focused_ = element_focused;
			confirm.clicked = function () {
				$(element).hide();
				$(element).trigger('confirmed');

			};
			cancel.clicked = function () {
				$(element).hide();
				$(element).trigger('canceled');

			};


		};
		var ini = function () {
			pub();

		};

		ini();


	})(
		document.getElementById("<%=ClientID%>")
		,
		document.getElementById("<%=confirm.ClientID%>")
		,
		document.getElementById("<%=cancel.ClientID%>")
	
	);
</script>