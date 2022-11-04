<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.frm._comm.Js" %>
<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>

<% #if false %>
<script>
	<% #endif %>
	; var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			, children = boxer.children,
			i = 0,
			form = children[i++],
			ajax = children[i++],
			state = children[i++]
			,
			$boxer = $(boxer)
			,
			$form = $(form)
			,
			$ajax = $(ajax)
			,
			$state = $(state)
			,
			reset = function (acc) {
				form.uncover();
				$state.hide();
				$ajax.hide();
			}
			,
			on = function () {
				$form.on(
					'comm'
					,
					function () {
							<%--$form.filter(":input").prop("disabled", true);--%>
						form.cover();
						$ajax.show();
						ajax.post(form.val);
					}
				);
				$ajax.on(
					'done'
					,
					function (e) {
						form.uncover();
						trig.done();
					}
				);
				$ajax.on(
					'fail'
					,
					function (e) {
						form.uncover();
						trig.fail();
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
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						cfg: {
							get: function () {
								return ajax.cfg;
							}
						}
						,
						beforeSend: {
							set: function (f) { <%-- par=func(jqx, opts)--%>
								ajax.beforeSend = f;
							}
						}
						,
						getSid: {
							set: function (g) {
								ajax.getSid = g;
							}
						}
						,
						url: {
							set: function (v) {
								ajax.url = v;
							}
						}
						,
						uncover: {
							value:form.uncover
						}
						,
						loadFeed: {
							value:form.loadFeed
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