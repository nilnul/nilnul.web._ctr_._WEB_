<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.err.optional_._regex.Js" %>

<%@ OutputCache Duration="3600000" VaryByParam="l" Shared="true" VaryByCustom="l" %>

<% #if false %>
<script type="text/ecmascript">
	<% #endif %>
	var <%=unique_func_name %>=function (child) {
		var boxer = child.parentElement
			,
			$boxer = $(boxer)
			,
			children = boxer.children
			,
			i = 0
			,
			errUi = children[i++]
			,
			$errUi = $(errUi)
			,
			_feedEl
			,
			regex
			,
			errMsg
			,
			_check = function () {
				if (_feedEl) {
					if (_feedEl.val) {
						if (regex instanceof RegExp) {
							return regex.test(_feedEl.val) ? "" : (errMsg || "");
						} else {
							return "";
						}
					} else {
						return ""; <%-- this is taken care of  by "RequiredValidator"--%>
					}
				}
				else {
					return "";
				}
			}
			,
			_validate_assumeFeedEl = function () {

			}
			,
			_validate = function () {
				
				errUi.msg = _check();
				
			}
			,
			ini = function () {
				_validate();
			}
			,
			_decide = function () {
				var old_beOk = errUi.beOk;
				_validate();
				if (old_beOk !== errUi.beOk) {
					trig.report();
					return;
				}
				if (errUi.beOk) {
					if (_feedEl.beChanged === true) {
						trig.report();
					}
				}
			}
			,
			on = function () {
				if (_feedEl) {
					$(_feedEl).on(
						'report'
						,
						_decide
					);
				}
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
								return errUi.beOk;
							}
						}
						,
						beErr: {
							get: function () {
								return errUi.beErr;
							}
						}
						,
						cfg: {
							set: function (v) {
								if (v.errClass) {
									errUi.className0 = v.errClass;
								} else if (v.asWarn) {
									errUi.asWarn();
								}
								_feedEl = v.feed;
								regex = v.regex;
								errMsg = v.errMsg || ("<%= nilnul.web.svr.module_.ling_.enCn_.BySessionX.GetCnEn("格式不符合","format invalid with") + ":" %>" /*+ regex.toString()*/);
								_validate();
								on();
							}
						}
						,
						asWarn: {
							value: function () {
								errUi.asWarn();
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
