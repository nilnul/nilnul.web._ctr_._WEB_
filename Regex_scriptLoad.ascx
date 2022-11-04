<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="l" %>

<script runat="server">
	public string unique_func_name;
	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}

			/// <summary>
		/// this will enable set the regex in user ctrl in asp.net
		/// </summary>
		private string _regex="";

		public string regex
		{
			get { return _regex; }
			set { _regex = value; }
		}





</script>




<%--
	regex can be removed. ???regex will be output to the browser as is?
--%>

<span id="<%=ClientID %>">
	<%@ Register Src="~/Txt_scriptLoad.ascx" TagPrefix="uc5" TagName="Txt" %>

	<uc5:Txt runat="server" ID="Text1" />
	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;
			var key=boxer;
			var children=boxer.children;
			var i=0;
			<%--above for compatibility--%>

			var txt = boxer.firstElementChild;

			var $boxer=$(boxer)
				,
				$txt=$(txt)
			;

			var regex = RegExp("<%=regex%>");


			var regexTested;

			var

			listen = function () {
				$txt.on('changed1' ,
					function () {
						txt_changed();
					}
				);
				
			},

			regex_touched = function () {
				var old_regexTested = regexTested;
				validate();
				if (old_regexTested !== regexTested) {	//validity is reserved
					trigger.changedReportable_byNilnul();
					trigger_changedReportable();
				}

			},
			txt_changed = function () {
				var old_regexTested = regexTested;
				validate();
				if (old_regexTested || regexTested) {	//validity is reserved
					nilnul.evt.fireAction(boxer.changedReportable, "valChanged");
					trigger_changedReportable();
				}
				nilnul.fireAction(boxer.txtChanged);
				
			},

			trigger={
				changedReportable_byNilnul:function(){
					nilnul.evt.fireAction(boxer.changedReportable);
				}
			},

			trigger_changedReportable=function(e,type){
				$boxer.triggerHandler('changedReportable1', {type:type}
					
				);
			}
			,

			validate = function () {
				if (regex) {
					regexTested = regex.test(txt.valOp());
				} else {
					regexTested = true;
				}
			},


			pub = function () {

				Object.defineProperties(
					boxer,
					{
						isValid1:{
							get:function(){
								return regexTested;
							}
						}
						,
						val:{
							value:txt.valOp
						}
						,
						val1:{
							get:function(){
								return txt.val;
							}
						},
						regex:{
							set:function(x){
								try{
									regex = RegExp(x);
							
								}
								catch(e){
									//return;									
								}
								finally{
									regex_touched();
							
								}
							}
						}
						,valid:{
							get:function(){return regexTested;}
						}

					}

				);

			 	boxer.disable = function () {
			 		txt.disable();
			 	};

			 	boxer.enable = function () { txt.enable(); };
			 	boxer.valOp = txt.valOp;

			 	boxer.regexStrOp = function (x) {
			 		if (typeof x == "undefined") {
			 			return regex.source;
			 		}

			 		regex = RegExp(x);
			 		regex_touched();
			 	}

			 	boxer.isValid = function () { return regexTested;};


			 	boxer.matchesOp = function () {
			 		return regex.exec(txt.valOp());
			 	};
			 	boxer.focusMy = txt.focusMy;
			 	boxer.hide = function () {
			 		boxer.style.display = "none";

			 	};
			 	boxer.regexTestedGet= function () {
			 		return regexTested;
			 	};

			 	boxer.txtCtr = txt;

			 }
		,
			 ini = function () {

			 	validate();
			 	listen();	//attachEvent to Text
			 	pub();
			 }
			;
			ini();


		};

	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</span>
