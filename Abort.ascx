<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register Src="~/Confirm.ascx" TagPrefix="uc1" TagName="Confirm" %>

<div  id="<%=ClientID %>" style="position:absolute;left:0%;top:0%;width:100%;height:100%;color:yellow;background-color:rgba(80, 80, 80,.8);display:block;" >
	<cc1:EnglishChinese3 ID="EnglishChinese1" runat="server">
		<asp:View ID="View1" runat="server">Contacting Server...</asp:View>
		<asp:View ID="View2" runat="server">正在与服务器联系...</asp:View>
	</cc1:EnglishChinese3>
	<button runat="server" id="abort" onclick="this.clicked();">
		<cc1:EnglishChinese3 ID="EnglishChinese2" runat="server">
			<asp:View ID="View3" runat="server">Abort</asp:View>
			<asp:View ID="View4" runat="server">中止</asp:View>
		</cc1:EnglishChinese3>
	</button>
		<uc1:Confirm runat="server" ID="confirm" />

</div>
<script>

	(function (
		element
		,
		abort
		,
		confirm

	) {

		var abort_clicked = function () {
			$(confirm).show();

		};

		var listen = function () {

			$(confirm).on(
				'confirmed',
				function () {
					$(element).hide();
					$(element).trigger('aborted');
				}
			);
			$(confirm).on(
				'canceled'
				,
				function () {

					$(confirm).hide();
				}
			);


		};

		var validate = function () {
		};

		var pub = function () {
			abort.clicked = abort_clicked;
		};

		var ini = function () {
			$(confirm).hide();
			validate();
			listen();
			pub();
		};
		ini();
	})(
		document.getElementById("<%=ClientID%>")
		,
		document.getElementById("<%=abort.ClientID%>")
		,
		document.getElementById("<%=confirm.ClientID%>")
	);

</script>