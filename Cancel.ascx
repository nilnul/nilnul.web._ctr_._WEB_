<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" %>
<script runat="server">

	public string unique_func_name;
	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}


</script>



<div
	style="position: absolute; left: 0%; top: 0%; width: 100%; height: 100%; background-color: rgba(20,20,20,.8); color: yellow;">
	<p ></p>
	<button  onclick="this.clicked();">

		<% =nilnul._web_._CTR_.LangModule.GetString("Cancel","取消") %>
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

			var trigger_oked=function(){
				$(form).trigger('oked');
				
			};


			var pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						msg: {
							value: function (val) {
								$(p).text(val);
							}

						}
					}
				);

				Object.defineProperties(

					button
					,
								
					{
						clicked: {
							value: function () {
								trigger_oked();

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
