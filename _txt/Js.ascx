<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._txt.Js" %>

<% #if false %>
<script type="text/ecmascript">
		<% #endif %>

	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement;
		var children=boxer.children;
		var i=0;

	
		var	text = boxer.firstElementChild
			,
		val 
		,
		validate = function () {
			val = text.value;
		}
		, _determineChange = function () {
			var oldVal = val;
			validate();
			if (val !== oldVal) {
				changed();
			}
		}, changed = function () {
			nilnul.fireAction(boxer.changed);
		}
		, pub = function () {
			Object.defineProperties(
				boxer
				,
				{
					val:{
						get:function () {
							return text.value;
						}
						,
						set:function (x) {
							text.value=x;
						}

					}
					,value:{
					
						get:function () {
							return text.value;
						}
						,
						set:function (x) {
							text.value=x;
						}
					
					}
				}
			);
			boxer.valOp = function (x) {
				if (typeof x == "undefined") {
					return text.value;
				}
				text.value = x;
				_determineChange();
			};
			boxer.disable = function () {
				text.disabled = true;
					
			};
				
			boxer.enable = function () {
				text.disabled = false;
			};
			text._determineChange = _determineChange;
			text.propertychange_then = function (event) {
				if (event.propertyName.toLowerCase() == "value") {
					_determineChange();
				}
			};

			text.keyup_then = function () {
				_determineChange();
			};
			boxer.focusMy = function () { text.focus(); };


		}
		, listen = function () {

		}

		,ini = function () {
			validate();
			listen();

			pub();

		}
		;

		ini();
	};


	<% #if false %>


</script>

<% #endif %>

