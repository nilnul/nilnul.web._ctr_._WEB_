<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Password.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Password" %>



<input id="<%=ClientID %>" type="password" onpropertychange="this.propertychange();" onkeyup="this.keyup()" onchange="this._determineChange()"
	oninput="this._determineChange()" />


<script type="text/ecmascript">

	(function (element) {
		var password = element;

		var listenChildren = function () {
			element.mouseover = function () {
				element.focus();
			};


		};


		var oldVal,
		_determineChange = function () {

			if (element.value != oldVal) {

				handleChange();
			}
		},
		handleChange = function () {
			oldVal = password.value;
			fireChange();

		},
		fireChange = function () {
			nilnul.fireAction(element.changedEvt);
			nilnul.fireAction(element.changed);

		};

		var pub = function () {
			element.propertychange = function () {
				if (event.propertyName.toLowerCase() == "value") {
					_determineChange();
				}
			};

			element.keyup = function () {
				_determineChange();
			};
			element.val = function (x) {
				if (typeof x == "undefined") return element.value;
				else {
					element.value = x;
				}
			};
			element._determineChange = _determineChange;

		};


		var ini = function () {
			listenChildren();
			pub();
		};

		ini();



	})(

		document.getElementById("<%=passwordId%>")

	);







</script>
