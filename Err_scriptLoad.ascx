<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" %>

<%
//This will generate a client ctrl, i.e., html+script+ maybe some css 

//This ctrl can be used in asp.net design mode as a asp.net user control.
//If this is put on an aspx page, then the page can be retrieved from browser and insert into client side webpage as a client side ctrl.
%>
<script runat="server">
	public string unique_func_name;

	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}
</script>

<% #if (false) %>

<% #endif %>

<span>
	<span></span>
	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;

			var
				output = boxer.firstElementChild,	//compatible

				has = function () {
					return nilnul.str.notNullOrWhiteSpace(output.innerHTML);
				}
				,


				msgOp = function (x) {
					if (typeof x == "undefined") {
						return output.innerHTML;
					}
					if (x === null) {
						output.innerHTML = "";
						return;

					}
					x = x.toString();

					if (nilnul.str.isNullOrWhiteSpace(x)) {
						output.innerHTML = "";
						return;
					}

					output.innerHTML = x;
					output.style.color = "red";


				},
				pub = function () {
					boxer.msgOp= msgOp;
					boxer.hide = function () {
						boxer.style.display = "none";
					};
					boxer.has = has;
					boxer.valid=function(){return !(has())};

					Object.defineProperties(
						boxer,
						{
							valid1:{
								get:function(){
									return nilnul.txt.isNulOrWhite(output.innerHTML);

								}
							},
							isPositive:{
								get:function(){return has();}
							}
							,
							isZero:{
								get:function(){
									return ! (this.isPositive);
								}
							}
							,
							msg:{
								value:msgOp
							}
							,msg1:{
								get:function(){
									return output.innerHTML;
								}
								,set:function(x){

									if (typeof x == "undefined") {
										x="";
									}
									if (x === null) {
										x="";
										

									}
									x = x.toString();

									if (nilnul.str.isNullOrWhiteSpace(x)) {
										output.innerHTML = "";
										return;
									}

									output.innerHTML = x;
									output.style.color = "red";

									
								}
							}
						}
					);
				},

				ini = function () {
					pub();
				};

			ini();

		};
	</script>

	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>


</span>

