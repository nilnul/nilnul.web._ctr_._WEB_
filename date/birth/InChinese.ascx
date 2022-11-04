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

				txt.placeholder='年-月-日如1998-3-19';

				var regex=/^(?:20|19)(\d{2})-([1-9]|0[1-9]|1[0-2])-([1-9]|0[1-9]|1\d|2[0-9]|3[0-1])$/;
				txt.check=function(x){
					x=(x||"").toString().trim();
					if (x==="") {
						return "必填";
					}
					if (!regex.test(x)) {
						return "格式为年-月-日，年为4位数；如：1998-3-19";
					}

					var bits = x.split('-');
					var ints=[parseInt(bits[0])  ,parseInt(bits[1]), parseInt(bits[2])   ];
					var d = new Date(ints[0], ints[1] - 1, ints[2]);
					if (
						d.getDate() === ints[0]
					){ 
						return "日输入有误";
					}
					if (
						(d.getMonth() + 1) !==ints[1]
					) {
						return "月输入有误";
					}
					if (d.getFullYear()!==ints[0] ) {
						return "年输入有误";
					}
					
					return "";
				
				};
				txt.label=("出生日期：");

				validate();
				listen();
				pub();
			};
			ini();

		};
	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>


</span>

