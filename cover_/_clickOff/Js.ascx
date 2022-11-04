<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.cover_._clickOff.Js" %>
<% #if false %>
<script>
	<% #endif %>
	; var <%=unique_func_name %>=function (child) {
		var
			boxer = child.parentElement
			, $boxer = $(boxer)
			,
			children = boxer.children
			,
			i = 0
			,
			stateUi = children[i++]
			,
			$stateUi= $(stateUi)
			,
			_cover = function (txt) {
				
				$boxer.show();
			}
			,
			_uncover = function () {
				$boxer.hide();
				trig.uncovered();
			}
			,
			on = function () {
				$boxer.click(
					_uncover
				);
			}
			,
			trig = {
				uncovered: function () {
					$boxer.triggerHandler("uncovered");
				}

			}
			,
			pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						cover: {
							value: _cover
						}
						,
						uncover: {
							value:_uncover
						}
						,
						txt: {
							set: function (t) {
								stateUi.txt = t;
							}
						}

					}
				);
			},
			ini = function () {
			}
			,
			ready = function () {
				ini();
				on();
				pub();
			}
			;
		ready();
	};
	<% #if false %>
</script>
<% #endif %>