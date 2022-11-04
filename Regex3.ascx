<%@ Control Language="C#" AutoEventWireup="true" %>
<script runat="server">
        [Obsolete("")]        
</script>

<%-- see Regex_scriptLoad --%>

<%--<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="id" %>--%>
<%@ Register Src="~/Txt2.ascx" TagPrefix="uc5" TagName="Txt" %>

<%--
	regex can be removed. ???regex will be output to the browser as is?
--%>

<span id="<%=ClientID %>">
	<uc5:Txt runat="server" ID="Text1" />
	<script type="text/ecmascript">
		(function (boxer) {
			<%--above for compatibility--%>

			var txt = boxer.firstElementChild;

			var regex;

			var regexTested;

			var

			listen = function () {
				txt.changed = function () {
					txt_changed();
				};
			},

			regex_touched = function () {
				var old_regexTested = regexTested;
				validate();
				if (old_regexTested !== regexTested) {	//validity is reserved
					nilnul.event.fireAction(boxer.changedReportable);
				}

			},
			txt_changed = function () {
				var old_regexTested = regexTested;
				validate();
				if (old_regexTested || regexTested) {	//validity is reserved
					nilnul.event.fireAction(boxer.changedReportable);
				}
				nilnul.fireAction(boxer.txtChanged);
			},

			validate = function () {
				if (regex) {
					regexTested = regex.test(txt.valOp());
				} else {
					regexTested = true;
				}
			},


			pub = function () {
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


		})(
		document.getElementById("<%=ClientID%>")

	);

	</script>
</span>
