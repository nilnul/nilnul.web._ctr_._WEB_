<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="id" %>

<%@ Register Src="~/LabelTxtErr_scriptLoad.ascx" TagPrefix="uc1" TagName="LabelTxtErr_scriptLoad" %>


<script runat="server">

	public string unique_func_name;
	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}


</script>
<span>
	<uc1:LabelTxtErr_scriptLoad runat="server" ID="LabelTxtErr_scriptLoad" />
	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;
			var key=boxer;
			var children=boxer.children;
			var i=0;

			var txt=children[i++]
			
			,$boxer=$(boxer)
			,$txt=$(txt)

			,listen=function(){
				$txt.on('changedReportable',trigger_changedReportable);
			}
			,trigger_changedReportable=function(){
				$boxer.triggerHandler('changedReportable');
			}
			;

			var validate = function () {

			};

			var pub = function () {


				Object.defineProperties(
					boxer,
					{
						val:{
							get:function () {
								return txt.val;
							}
							,
							set:function (x) {
								txt.val=x;
							}
						}
						,
						valid:{
							get:function(){
								return txt.valid;
							}
						}
					}
				);



			};

			var ini = function () {

				var regex=new RegExp("(^(?:[a-zA-Z0-9_-]+\\.){0,2}(?:[a-zA-Z0-9_-]+)@(?:[a-zA-Z0-9_-]+\\.)+[a-zA-Z]{2,4}$)");
				txt.check=function(x){
					x=(x||"").toString().trim();
					if (x==="") {
						return "必填";
					}
					if (!regex.test(x)) {
						return "格式不对";
					}
					return "";
				
				};
				txt.label=("电子邮箱地址：");

				validate();
				listen();
				pub();
			};
			ini();

		};
	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>


</span>

