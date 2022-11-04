<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PasswordRegexed.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.PasswordRegexed" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register Src="Password.ascx" TagName="Password" TagPrefix="uc1" %>

<cc1:KeyHidden ID="KeyHidden1" runat="server" />
<uc1:Password ID="Password1" runat="server" />


<script type="text/ecmascript">

	(function (key, password ) {

		var regex = RegExp("<%=regex%>"),


		listenChildren = function () {
			password.changed = function () {
				password_changed();
			};

		},

		password_changed = function () {
			var oldValidity = key.valid;
			validate();

			if (oldValidity !== key.valid) {

				nilnul.fireAction(key.validChangedEvt);	//validChangeEvt will know current valid status.
				nilnul.fireAction(key.validityChanged);	//validChangeEvt will know current valid status.
				nilnul.fireAction(key.validChanged);	//validChangeEvt will know current valid status.

				nilnul.event.fireAction(key.changedReportable);

			}
			else if (oldValidity) {
				nilnul.event.fireAction(key.changedReportable);


			}

			nilnul.fireAction(key.changedEvt);
			nilnul.fireAction(key.changed);
		},
		regex_set = function () {
			var oldValidity = key.valid;

			validate();
			if (oldValidity !== key.valid) {

				nilnul.event.fireAction(key.regexChangedValidity);
				nilnul.event.fireAction(key.validityChanged);

				nilnul.event.fireAction(key.validChanged);
				nilnul.event.fireAction(key.changedReportable);

			}
		},

		 valid = function () {
		 	return regex.test(password.value);

		 },

		 validate = function () {
		 	key.valid = valid();
		 },

		 pub = function () {
		 	key.val = password.val;
		 	key.regex = function (x) {
		 		if (typeof x === "undefined") {
		 			return regex;

		 		}
		 		regex = new RegExp(x);

		 		regex_set();
		 	};

		 },

		 ini = function () {

		 	validate();
		 	listenChildren();	//attachEvent to Text
		 	pub();

		 };


		ini();


	})(
		document.getElementById("<%=ClientID%>")
		,
		document.getElementById("<%=Password1.keyId%>")
		, document.getElementById("<%=ClientID%>")

	);







</script>
