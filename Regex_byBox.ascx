<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Regex_byBox.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Regex_byBox" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/Txt.ascx" TagPrefix="uc5" TagName="Txt" %>

<%--
	regex can be removed. ???regex will be output to the browser as is?
--%>

<span id="<%=ClientID %>">

	<uc5:Txt runat="server" ID="Text1" />
</span>

<script type="text/ecmascript">
	(function (key, text) {
		var validStatus;
		var regexExpr = RegExp("<%=regex%>");

		var regex = regexExpr,


			listenChildren = function () {
				text.changed = function () {
					text_changed1();
				};
			},



			regex_changed = function () {
				var oldValidState = validStatus;
				validate1();

				if (oldValidState || validStatus) {
					//key.valid = newValidity;
					nilnul.event.fireAction(key.regexChangedValidity);
					nilnul.event.fireAction(key.validityChanged);
					nilnul.event.fireAction(key.validChanged);
				}
			},



			text_changed = function () {

				var newValidity = valid();
				if (newValidity !== key.valid) {	//validity is reserved
					key.valid = newValidity;
					nilnul.event.fireAction(key.textChangedReportable);

					nilnul.event.fireAction(key.validityChanged);
					nilnul.event.fireAction(key.validChanged);

					nilnul.event.fireAction(key.changedReportable);


				}
				else if (newValidity) {
					nilnul.event.fireAction(key.textChangedReportable);

					nilnul.event.fireAction(key.changedReportable);
				}
				nilnul.fireAction(key.changed);
			},

			text_changed1 = function () {

				var oldValidStatus = validStatus;
				validate1();


				if (oldValidStatus || validStatus) {	//validity is reserved
					

					nilnul.event.fireAction(key.validityChanged);
					nilnul.event.fireAction(key.validChanged);



				
					nilnul.event.fireAction(key.textChangedReportable);

					nilnul.event.fireAction(key.changedReportable);
				}
				nilnul.fireAction(key.changed);
			},
			validate = function () {
				key.validity = validity();

				key.valid = valid();

			},

			validate1 = function () {
				validStatus=regex.test(text.value);

			},


			 validity = function () {
			 	return regex.test(text.value);

			 },

			 valid = function () {
			 	return regex.test(text.value);

			 },



			 pub = function () {
			 	

			 	key.disable = function () {
			 		text.disabled = true;
			 	};

			 	key.enable = function () { text.disabled = false; };
			 	key.val = text.val;

			 	key.regex = function (x) {
			 		if (typeof x == "undefined") {
			 			return regex;

			 		}
			 		regex = RegExp(x);
			 		regex_changed();
			 	}


			 	key.matches = function () {
			 		return regex.exec(key.val());
			 	};
			 	key.focus = text.focus;
			 	key.hide = function () {
			 		key.disable();
			 		text.style.display = "none";
					
			 	};
			 	key.isValid = function () {
			 		return validStatus;
			 	};

			 	key.txtCtr = text;


			 }
		,
			 ini = function () {

			 	validate1();

			 	listenChildren();	//attachEvent to Text

			 	pub();


			 }
	
		;
		ini();


		})(
		document.getElementById("<%=ClientID%>")
		,
		document.getElementById("<%=Text1.ClientID%>")

	);

</script>
