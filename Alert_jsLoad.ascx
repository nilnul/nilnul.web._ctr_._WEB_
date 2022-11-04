<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ OutputCache VaryByParam="l;id" Duration="36000000" %>
<script runat="server">

	public string unique_func_name;
	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}


</script>



<div
	style=" left: 0%; top: 0%; width: 100%; height: 100%; background-color: black; color: yellow; overflow:auto; padding:0px; margin:0px;">
	<p style="display:inline-block;padding:0px;margin:0px;" ></p>
	<button  onclick="this.clicked();" type="button">

		<% =nilnul._web_._CTR_.LangModule.GetString("Ok","好") %>
	</button>


	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;
			var key=boxer;
			var children=boxer.children;
			var i=0;
			var p=children[i++];
			var button=children[i++];

			var form=boxer;
			var $boxer=$(boxer);

			var trigger_oked=function(){
				$boxer.triggerHandler('oked');
				
			};


			var pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						msg: {
							value: function (val) {
								$(p).html(val);
							}

						}
					}
				);

				Object.defineProperties(

					button
					,
								
					{
						clicked: {
							value: function (e) {
								e&&e.preventDefault();
								$(form).hide();
								trigger_oked();
								return false;

							}
						}
					}


				);
			};

			var ini = function () {
				pub();

			};
			ini();

		};
	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</div>
