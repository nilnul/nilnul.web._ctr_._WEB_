<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.script_._nameInput.Js" %>
<% #if false %>
<script>
	<% #endif %>
	;var <%=unique_func_name %>=function (child) {
		var boxer=child.parentElement
			,
			$boxer = $(boxer)
			,
			ini = function () {
				var input =
					boxer.querySelector("input");
				if ( input ) {
					if ( boxer.dataset.inputName ) {
						input.name = boxer.dataset.inputName;

					}
				}
			}
			,
			ready = function () {
				ini();
			}
		;
		ready();
	};
	<% #if false %>
</script>
<% #endif %>