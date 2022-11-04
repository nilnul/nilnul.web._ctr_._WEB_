<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.err.optional_._length.Js" %>

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
			_boundDefault= { min: 0, max: Number.POSITIVE_INFINITY }
			,
			bound = _boundDefault
			,
			_validate = function () {
				if (_feedEl) {
					var v = _feedEl.val;
					if (v) {
						if (v.length < bound.min) {
							errUi.msg= "<%= nilnul.web.http.svr.app.module_.ling_.enCn_.BySessionX.GetCnEn("太短")%>";
						} else if (v.length>bound.max) {
							errUi.msg="<%= nilnul.web.http.svr.app.module_.ling_.enCn_.BySessionX.GetCnEn("太长")%>"
						} else {
							errUi.msg = "";
						}
					} else {
						errUi.msg= ""; <%-- this is taken care of  by "RequiredValidator"--%>
					}
				}
				else {
					errUi.msg= "";
				}
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
								_feedEl = v.feed;
								bound = Object.assign(_boundDefault, v.bound) ;
								_validate();
								on();
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
