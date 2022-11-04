<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.frm.comm_.ajaxDyna._dialog.Js" %>
<% #if false %>
<script>
	<% #endif %>
	; var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			,
			$boxer = $(boxer)
			,
			children = boxer.children
			,
			i = 0
			,
			dialogUi = children[i++]
			,
			$dialogUi = $( dialogUi )
			, frmUi = children[i++]
			,$frmUi=$(frmUi)
			,
			ini = function () {
				dialogUi.fit(frmUi);
			}
			,
			on = function () {
				$frmUi.on(
					'done'
					,
					function () {
						trig.done();<%--or this shall be done after the dialog is closed--%>
					}
				);
				$frmUi.on(
					'fail'
					,
					function () {
						trig.fail();
					}
				);

				$dialogUi.on(
					'closed'
					,
					function (e) {
						trig.closed();
					}
				);
			}
			,
			trig = {
				done: function () {
					$boxer.triggerHandler('done');
				}
				,
				fail: function () {
					$boxer.triggerHandler('fail');
				}
				,
				closed: function () {
					$boxer.triggerHandler('closed');
				}
			}
			, _pop = function () {
				dialogUi.pop();
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						cfg: {
							get: function () {
								return frmUi.cfg;
							}
						},
						beforeSend: {
							set: function (f) { <%-- par=func(jqx, opts)--%>
								frmUi.beforeSend = f;
							}
						}
						,
						getSid: {
							set: function (g) {
								frmUi.getSid = g;
							}
						}
						,
						url: {
							set: function (v) {
								frmUi.url = v;
							}
						}
						,
						fitFeed: {
							value:frmUi.fitFeed
						}
						,
						fitAjax: {
							value:frmUi.fitAjax
						}
						,
						fit: {
							writable: false
							,
							value: frmUi.fit
							
						}
						,
						pop: {
							writable: false
							,
							value: _pop

						}
					}
				);
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