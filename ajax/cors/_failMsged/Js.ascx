<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.cors._failMsged.Js" %>

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
				$ajax.hide();
				msger.msg=(msg);
				$msger.show();
			}
			,
			on= function () {
				$ajax.on(
					'fail'
					,
					function (e,jqXhr, textStatus, errorThrown) {
						if (textStatus === "abort") { <%-- Possible values (besides null) are "timeout", "error", "abort", and "parsererror". --%>
							_reset();
							trig.fail(textStatus,errorThrown);
						} else {
							console.error(jqXhr.responseText);
							showMsg(
								"提交失败：" + textStatus + ", " + errorThrown + "; "+ "<%= nilnul.web.http.svr.app.module_.ling_.enCn_.BySessionX.GetEnCn("在调试模式可查看细节","view details in debug mode")%>"
								//+ jqXhr.responseText
							);

						}
					}
				);

				$ajax.on(
					'done'
					,
					function (e, data, textStatus, jqx) {
						console.log(
							"comm done：" + (data||"")
						);
						$state.attr(
							"title"
							,
							"<%= nilnul.web.svr.module_.ling_.enCn_.BySessionX.GetEnCn("see log for more","详见控制台") %>"
						);
						$state.removeClass("err");
						state.txt =  "<%= nilnul.web.svr.module_.ling_.enCn_.BySessionX.GetEnCn("","通讯完成") %>";
						trig.done(data, textStatus,jqx)
					}
				);

				$msger.on(
					'oked',
					function(e,jqXhr, textStatus, errorThrown){
						trig.fail(jqXhr, textStatus, errorThrown);
					}
				);

			}
			,
			_reset = function () {
				state.txt = "";
				$msger.hide();
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
						post: {
							value: function (data) {
								state.txt = "";
								$msger.hide();
								ajax.post(data);

							}
						}
						,
						send: {
							value: function (options) {
								state.txt = "";
								$msger.hide();
								ajax.send(options)
							}
								
						}
						,
						get: {
							value: function (url) {
								state.txt = "";
								$msger.hide();
								ajax.get(url);
							}
								
						}
						,
						url: {
							set: function (u) {
								ajax.url=u
							}
							,
							get: function () {
								return ajax.url;
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
