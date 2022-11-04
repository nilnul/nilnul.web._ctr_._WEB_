<%@ Control Language="C#" AutoEventWireup="true" %>

<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="id" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/Confirm_jsLoad.ascx" TagPrefix="uc1" TagName="Confirm" %>


<script runat="server">

	public string unique_func_name;
	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}


</script>



<div id="<%=ClientID %>" style="position: absolute; left: 0%; top: 0%; width: 100%; height: 100%; color: yellow; background-color: rgba(80, 80, 80,.8); display: block;">
	<span>
		<cc1:EnglishChinese3 ID="EnglishChinese1" runat="server">
			<asp:View ID="View1" runat="server">Contacting Server...</asp:View>
			<asp:View ID="View2" runat="server">正在与服务器联系...</asp:View>
		</cc1:EnglishChinese3>

	</span>
	<button runat="server" id="abort" onclick="this.clicked();">
		<cc1:EnglishChinese3 ID="EnglishChinese2" runat="server">
			<asp:View ID="View3" runat="server">Abort</asp:View>
			<asp:View ID="View4" runat="server">中止</asp:View>
		</cc1:EnglishChinese3>
	</button>
	<uc1:Confirm runat="server" ID="confirm" />

	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;
			var key=boxer;
			var children=boxer.children;
			var i=0;
			i++;

			var abort=children[i++];
			var confirm=children[i++];

			var element=boxer;


			var abort_clicked = function () {
				$(confirm).show();

			};

			var listen = function () {

				$(confirm).on(
					'confirmed',
					function () {
						$(element).hide();
						trigger_aborted();
						
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

			var trigger_aborted=function(){
					$(element).triggerHandler('aborted');
		
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

		};
	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</div>
