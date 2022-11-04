<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.frm.comm_._ajaxDyna.Js" %>
<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>

<% #if false %>
<script>
	<% #endif %>
	; var <%=unique_func_name %>= <%--<%=unique_func_name %>||/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			,
			$boxer = $(boxer)
			,
			children = boxer.children,
			i = 0,
			frm = children[i++]
			,form=frm
			,
			$frm=$(frm)
			,
			$form = $(form)
			,
			state = children[i++]
			,
			$state = $(state)
			,
			ajaxParent = children[i++]
			,
			$ajaxParent= $(ajaxParent)
			,
			ajax
			,
			$ajax
			,
			ini = function () {

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
						//ajax.cfg.type = "POST";
						ajax.send( {data: form.val });<%--not only "post", we can also patch by submit a form--%>
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
			_fitAjax = function (ajax0) {
				<%--insert after frm --%>
				ajax = ajax0;
				$ajaxParent.empty().append(ajax);
				<%--$frm.after(ajax);--%>
				$ajax = $( ajax );

				$ajax.on(
					'done'
					,
					function (e) {
						form.uncover();
						$ajax.hide();
						trig.done();
					}
				);
				$ajax.on(
					'fail'
					,
					function (e) {
						form.uncover();
						$ajax.hide();
						trig.fail();
					}
				);
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
						fitFeed: {
							value:form.loadFeed
						}
						,
						fitAjax: {
							writable: false
							,
							value:_fitAjax
						}
						,
						fit: {
							writable: false
							,
							value: function (feed, ajax) {
								form.fitFeed( feed );
								_fitAjax( ajax );
							}

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
