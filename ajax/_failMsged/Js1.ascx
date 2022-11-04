<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js1.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax._failMsged.Js1" %>

<% #if (false) %>
<script>
<% #endif %>
	;var <%=unique_func_name %>= <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			,
			$boxer=$(boxer)
			, children = boxer.children
			, i = 0
			, ajax = boxer.children[i++]
			, $ajax = $(ajax)
			,
			msger = boxer.children[i++]
			,
			$msger = $(msger)
			,
			state=children[i++]
			,
			$state = $(state)
			,
			showMsg=function(msg){
				<%--$ajax.hide();--%>
				msger.msg=(msg);
				$msger.show();
			}
			,
			on= function () {
				$ajax.on(
					'fail'
					,
					function (e,jqXhr, textStatus, errorThrown) {
						if (textStatus==="abort") { <%-- Possible values (besides null) are "timeout", "error", "abort", and "parsererror". --%>
							trig.fail(textStatus,errorThrown);
						} else {
							showMsg("提交失败："+ textStatus +", "+errorThrown+", "+ jqXhr.responseText);

						}
					}
				);

				$ajax.on(
					'done'
					,
					function (e,data, textStatus,jqx) {
						trig.done(data, textStatus,jqx)
					}
				);

				$msger.on(
					'oked',
					function(e,jqx, textStatus, errorThrown){
						trig.fail(jqx, textStatus, errorThrown);
					}
				);

			}
			,
			trig={
				done:function(data, textStatus,jqx){
					$boxer.triggerHandler('done',[data, textStatus,jqx]);
				}
				,
				fail:function (jqXhr,textStatus,errorThrown) {
					$boxer.triggerHandler('fail',[jqXhr,textStatus, errorThrown]);
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
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
						post: { value: ajax.post }
						,
						send: { value: ajax.send }
						,
						get: { value: ajax.get }
						,
						url: {
							set: function (u) {
								ajax.url=u
							}
						}
						,
						cfg: {
							get: function () {
								return ajax.cfg;
							}
						}
							
					}
				);
			},
			ini = function () {
				$msger.hide();
			}
			,
			ready = function () {
				ini(); on(); pub();
			}
		;
		ready();
	};
<% #if (false) %>
</script>
<% #endif %>