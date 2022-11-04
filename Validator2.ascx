<%
	//see Err



	//This will generate a client ctrl, i.e., html+script+ maybe some css 
	
	//This ctrl can be used in asp.net design mode as a asp.net user control.
	//If this is put on an aspx page, then the page can be retrieved from browser and insert into client side webpage as a client side ctrl.
%>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Validator2.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Validator2" %>

<script runat="server">
		/// <summary>
		/// 
		/// </summary>
		/// 
		[Obsolete("Err")]
</script>

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


<label id="<%=ClientID %>"></label>

<script type="text/ecmascript">
	(function (element) {

		var
			label = element,

		valid = function () {
			return nilnul.isNullOrWhiteSpace(element.innerHTML);
		},


		val = function (x) {
			if (typeof x == "undefined") {
				return element.innerHTML;
			}
			if (x === null) {
				element.innerHTML = "";
				return;

			}
			x = x.toString();

			if (nilnul.string.isNullOrWhiteSpace(x)) {
				element.innerHTML = "";
				return;
			}

			element.innerHTML = x;
			element.style.color = "red";


		},
		pub = function () {
			element.val = val;
			element.valid = valid;
			element.hide = function () {
				element.style.display = "none";
			};
			element.isValid = valid;
			element.containsErr = valid;

		},

		ini = function () {
			pub();
		};

		ini();

	})(

		document.getElementById("<%=ClientID%>")


	);
</script>
