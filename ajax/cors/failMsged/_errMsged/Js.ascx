<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.cors.failMsged._errMsged.Js" %>
<%@ OutputCache Duration="36000000" VaryByParam="id" %>

<% #if (false) %>
<script>
<% #endif %>
	var <%=unique_func_name %>= <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			,
			$boxer = $(boxer)

			, children = boxer.children
			, i = 0
			,
			failMsged = children[i++]
			, $failMsged = $(failMsged)
			,
			msger = children[i++]
			, $msger = $(msger)
			,
			state = children[i++]
			, $state = $(state)
			,
			showMsg = function (msg) {
				msger.msg=(msg);
				$msger.show();
			},

			response,

			on = function () {
				$failMsged.on(
					'fail'
					,
					function (e, textStatus, errorThrown) {

						trig.err();
					}
				);
				$failMsged.on(
					'done'
					,
					function (e, data) {
						if (data.err) {
							showMsg("<%=nilnul._web_._CTR_.lang.PerRequest.GetEnZh("Error:","错误：")%>" + data.err.msg);
						} else {
							trig.success(data);
						}
					}
				);
				$msger.on(
					'oked',
					function () {
						trig.err();
					}
				);
			}
			,
			trig = {
				success: function (data) {
					state.txt=("成功了!");
					$boxer.triggerHandler('success', data);
					state.txt=("");
				}
				,
				err: function () {
					state.txt=("出错了！");
					$boxer.triggerHandler('err');
					state.txt=("");
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						post: { value: failMsged.post }
						,
						send: { value: failMsged.send }
						,
						get: { value: failMsged.get }
						,
						url: {
							set: function (u) {
								failMsged.url = u;
							}
						}
						,
						cfg: {
							get: function () {
								return failMsged.cfg;
							}
						}
					}
				);
			},
			ini = function () {
				$msger.hide();

			},
			ready = function () {
				ini();
				on();
				pub();
			}
		;
		ready();
	};
<% #if (false) %>
</script>
<% #endif %>

