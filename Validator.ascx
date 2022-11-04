<%
	//This will generate a client ctrl, i.e., html+script+ maybe some css 
	
	//This ctrl can be used in asp.net design mode as a asp.net user control.
	//If this is put on an aspx page, then the page can be retrieved from browser and insert into client side webpage as a client side ctrl.
%>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Validator.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Validator" %>





<% #if(false) %>
<script src="http://localhost:12345/script/_web/jquery.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.cookie.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.string.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.ctrl.js">

</script>

<% #endif %>


<span id="Label1" runat="server"></span>
<script type="text/ecmascript">
	(function (label, element) {

		var msgGet = function () { return label.innerHTML(); },

		 msgSet = function (value) {

		 	if (typeof value == "undefined" || value == null) {
		 		msgSetNull();
		 		return;
		 	}
		 	if (typeof value == "string") {
		 		msgSetStr(value);

		 	}

		 },

		msgSetNull = function () {
			msgSetStrEmpty();

		},
		msgSetStr = function (value) {
			value = $.trim(value);
			if (value == "") {
				msgSetStrEmpty();
				return;
			}
			else {
				msgSetStrSth(value);
			}
		},
		msgSetStrEmpty = function () {
			label.innerHTML = "";
			$(label).hide();

		},
		msgSetStrSth = function (value) {
			label.innerHTML = value;
			$(label).show();


		},

		valid = function () {
			return nilnul.isNullOrWhiteSpace(label.innerHTML);
		},

		msg = function (value) {
			if (typeof value == "undefined") {
				msgSetNull();
				//return msgGet();

			} else {
				msgSet(value);

			}
		},

		val = function (x) {
			if (typeof x == "undefined") {
				return label.innerHTML;
			}
			if (x===null) {
				label.innerHTML = "";
				return;

			}
			x = x.toString();

			if (nilnul.string.isNullOrWhiteSpace(x)) {
				label.innerHTML = "";
				return;
			}
			label.innerHTML = x;
			label.style.color = "red";


		},

		init = function () {
			label.msgSet = msgSet;
			label.msgSetStr = msgSetStr;
			label.msgSetStrEmpty = msgSetStrEmpty;
			label.val = val;

			element.valid = valid;



		};

		init();

	})(
		document.getElementById("<%=clientId%>"),
		document.getElementById("<%=clientId%>")


	);
</script>
