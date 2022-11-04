<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" %>
<script runat="server">

	[Obsolete("see Alert or Cancel")]
</script>

<%
	//This will generate a client ctrl, i.e., html+script+ maybe some css 
	
	//This ctrl can be used in asp.net design mode as a asp.net user control.
	//If this is put on an aspx page, then the page can be retrieved from browser and insert into client side webpage as a client side ctrl.
%>




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
			element$ = $(element)
		,
			label = element,	//compatible

			containsErr =function () {
				return nilnul.isNullOrWhiteSpace(element.innerHTML);
			}
		,
		/**@compatible*/
		valid =containsErr,


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
			//element.style.color = "red";


		},
		textSet = function (text) {
			element.innerHTML = x;


		}
		,

		pub = function () {
			element.val = val;
			element.msg = val;
			element.valid = valid;
			element.hide = function () {
				element.style.display = "none";
			};
			element.isValid = valid;
			element.containsErr = valid;

			element.warn = function (msg) {

				element$.html(msg);
				element$.removeClass();

				$(element).addClass("nilnul-warn");

			}
			;
			element.err = function (msg) {
				element$.html(msg);
				element$.removeClass();
				element$.addClass("nilnul-err");

			}
		},

		ini = function () {
			pub();
		};

		ini();

	})(

		document.getElementById("<%=ClientID%>")


	);
</script>
