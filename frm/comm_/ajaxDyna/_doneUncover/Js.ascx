<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.frm.comm_.ajaxDyna._doneUncover.Js" %>
<% #if false %>
<script>
	<% #endif %>
	; var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			, children = boxer.children,
			i = 0,
			commUi = children[i++],
			stateUi = children[i++],
			clickOffUi = children[i++]
			,
			$boxer = $(boxer)
			,
			$commUi= $(commUi)
			,
			$stateUi= $(stateUi)
			,
			$clickOffUi= $(clickOffUi)
			,
			on = function () {
				$commUi.on(
					'done'
					,
					function () {
						stateUi.txt = "完成提交";

						clickOffUi.cover();
						commUi.uncover();<%-- 
	this is unnecessary as:
						the commUi's lifecyle is cycled/recyclable and the commUi will uncover when escalating
						--%>
					}
				);
				$commUi.on(
					'fail'
					,
					function () {
						trig.fail();
					}
				);

				$clickOffUi.on(
					'uncovered'
					,
					function (e) {
						stateUi.txt = "";
						trig.done();
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
								return commUi.cfg;
							}
						},
						beforeSend: {
							set: function (f) { <%-- par=func(jqx, opts)--%>
								commUi.beforeSend = f;
							}
						}
						,
						getSid: {
							set: function (g) {
								commUi.getSid = g;
							}
						}
						,
						url: {
							set: function (v) {
								commUi.url = v;
							}
						}
						,
						fitFeed: {
							value:commUi.fitFeed
						}
						,
						fitAjax: {
							value:commUi.fitAjax
						}
						,
						fit: {
							writable: false
							,
							value: commUi.fit
							
						}
					}
				);
			},
			ini = function () {
				clickOffUi.txt = "成功提交";
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