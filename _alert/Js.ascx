<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._alert.Js" %>

<%@ OutputCache VaryByParam="l" Duration="36000000" %>



<% #if false %>
<script>
	<% #endif %>

	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement;
		var children = boxer.children;
		var i = 0;

		var p = children[i++];
		var
			button = children[i++]
			,
			state = children[i++]
			;

		var $boxer = $(boxer);
		var $p = $(p);
		var
			$button = $(button)
			,
			$state = $(state)
			;

		var on = function () {
			$button.click(
				function (e) {
					e && e.preventDefault();
					<%--
					$button.hide();
	--%>

					$state.text("点击了好！...");
					$boxer.hide();
					trig.oked();
					$state.text("");
				}
			);

		};

		var trig = {
			oked: function () {
				$boxer.triggerHandler('oked');
			}
		};

		var pub = function () {
			Object.defineProperties(
				boxer
				,
				{
					msg: {
						set: function (val) {
							$p.text(val);
						}
						,
						get: function () {
							return function () {
								$p.text();
							}
						}
					}
					,
					showMsg: {
						value: function (x) {
							$p.text(val);
							$boxer.show();
						}
					}
				}
			);

		};

		var
			ini = function () {
				$boxer.hide();
			}
			,
			ready = function () {
				ini();
				on();
				pub();
			}
			;
		ready();
	}
	;

	<% #if false %>
</script>
<% #endif %>
