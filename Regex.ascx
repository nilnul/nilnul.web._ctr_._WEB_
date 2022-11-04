<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Regex.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Regex" %>



<%--<%@ Register Assembly="nilnul.web.script.webctrl(130116" Namespace="nilnul.web.script.webctrl"
	TagPrefix="cc1" %>--%>

<%@ Register Src="Text.ascx" TagName="Text" TagPrefix="uc5" %>

<%--<cc1:CommonScriptsControl ID="CommonScriptsControl1" runat="server">
</cc1:CommonScriptsControl>--%>

<%--
	regex can be removed. ???regex will be output to the browser as is?
--%>	

<uc5:Text ID="Text1" runat="server" />

<input id="key" type="hidden" runat="server" />

<span id="<%=ClientID %>" style="visibility:hidden;display:none;"></span>


	<script type="text/ecmascript">
		(function (key, text, element) {

			key = element;
			//var element = key;
			var regex = RegExp("<%=regex%>"),
			oldValid,

			//validEvent = new CustomEvent("valid"),
		

			listenEvents = function () {
				text.changedEvt = function () {
					handleTextChange();
				};
			},

			handleTextChange = function () {
				var _valid = valid();
				
				if (_valid !== oldValid) {
					oldValid = _valid;

					nilnul.fireAction(element.validChangeEvt);	//validChangeEvt will know current valid status.

					nilnul.fireAction(element.validChangedEvt);
					nilnul.fireAction(key.raisedChangedEvt);

					nilnul.event.fireAction(element.overflown);

				}
				else if (_valid) {

					nilnul.event.fireAction(element.overflown);


					nilnul.fireAction(key.raisedChangedEvt);


				}


				nilnul.fireAction(key.changedEvt);

					//this.dispatchEvent(validEvent);

				//} else if (!_valid && oldValid) {
				//	oldValid = _valid;
				//	element.valid = _valid;
				//	nilnul.fireAction(element.validChangeEvt);
				//	//this.dispatchEvent(validEvent);

				//}
			},

			 valid = function () {
			 	return regex.test(text.value);

			 },
			 validityGet = function () {
			 	return regex.test(text.value);

			 },
			 init = function () {
			 	

			 	handleTextChange();
			 	element.handleTextChange = handleTextChange;
			 	key.valid = valid;
			 	key.validity = valid;
			 	key.validityGet = valid;
			 	listenEvents();	//attachEvent to Text
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

			 		handleTextChange();
			 	}

			 	element.matches= function () {
			 		return regex.exec(element.val());
			 	};

				
			 };

			
			init();


		})(
		document.getElementById("<%=key.ClientID%>")
		,
		document.getElementById("<%=textClientId%>")
		,
		document.getElementById("<%=ClientID%>")
		
	);

</script>
