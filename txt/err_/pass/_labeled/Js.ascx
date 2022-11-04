<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.txt.err_.pass._labeled.Js" %>

<% #if false %>
<script type="text/ecmascript">
	<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			,
			$boxer = $(boxer)
			,
			children = boxer.children
			,
			i = 0
			,
			spanUi = children[i++]
			, $spanUi = $(spanUi)
			,
			passUi = children[i++]
			,
			$passUi = $(passUi)

			,
			on = function () {
				$passUi.on('report',
					function () {
						trig.report();
					}
				);
			}
			,
			trig = {
				report: function () {
					$boxer.triggerHandler(
						'report'
					);
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						beOk: {
							get: function () {
								return passUi.beOk;
							}
						}
						
						,
						val: {
							get: function () {
								return passUi.val;
							}
							,
							set: function (x) {
								passUi.val = x;
							}
						}
						,
						constraints: {
							set: function (v) {
								passUi.constraints = v;
							}
							,
							get: function () {
								return passUi.constraints;
							}
						}
						,
						check: {
							set: function (v) {
								passUi.check = v;
							}
							,
							get: function () {
								return passUi.check;
							}
						}
						,
						tip: {
							set: function (v) {
								$spanUi.text(v);
							}
							,
							get: function () {
								return $spanUi.text();
							}
						}
						,
						beErr: {
							get: function () { return err.beErr; }
						}
						,
						disable: {
							value: function () {
								passUi.disable();
							}
						},
						enable: {
							value: function () { passUi.enable(); }
						}
					}
				);
			}
			,
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
