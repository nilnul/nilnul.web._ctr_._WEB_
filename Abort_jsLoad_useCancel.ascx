<%@ Control Language="C#" AutoEventWireup="true" %>

<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="id" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/Confirm_jsLoad.ascx" TagPrefix="uc1" TagName="Confirm" %>
<%@ Register Src="~/Cancel_submitting.ascx" TagPrefix="uc1" TagName="Cancel_submitting" %>




<script runat="server">
	public string unique_func_name;
	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}
</script>



<div id="<%=ClientID %>" style="/*position: absolute;*/ left: 0%; top: 0%; width: 100%; height: 100%; color: yellow; background-color: rgba(80, 80, 80,.8); display: block; overflow:auto; margin:0px;padding:0px;">
	<span></span>
	<uc1:Cancel_submitting runat="server" ID="Cancel_submitting1" />
	<uc1:Confirm runat="server" ID="confirm" />
	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;
			var children=boxer.children;
			var i=0;

			var status=children[i++],
				alert=children[i++];

			var confirm=children[i++];

			var  $alert=$(alert)
				,
				$confirm=$(confirm)
				,
				$boxer=$(boxer)
				$status=$(status)
			;

			var listen = function () {
				$(alert).on(
					'oked'
					,
					function () {
						$(alert).hide();
						$(confirm).show();
					}
				);

				$(confirm).on(
					'confirmed',
					function () {

						$confirm.hide();
						$alert.hide();
						$status.text('confirmed');
						trigger_aborted();
						
					}
				);
				$(confirm).on(
					'canceled'
					,
					function () {
						$(alert).show();
						$(confirm).hide();
					}
				);

			};

			var trigger_aborted=function(){
					$(boxer).triggerHandler('aborted');
		
			};

			var validate = function () {

			};

			var begin=function(){
				$alert.show();
			};

			var pub = function () {
				Object.defineProperties(
					boxer,
					{
						begin:{
							value:function(){
								$alert.show();
								$confirm.hide();

							
							}
						}
					}
					);
			};

			var ini = function () {
				$confirm.hide();
				$alert.show();
				validate();
				listen();
				pub();


			};
			ini();

		};
	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</div>
