<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.validator_._required.Js" %>

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
			beOkGet = function () {
				return $errUi.is(":hidden");
			}
			,
			_isOk = function () {
				if (_feedEl) {
					if (_feedEl.val) {
						return true;

					} else {
						return false;
					}
				}
				else {
					return true;
				}
			}
			,
			_validate = function () {
				if (_isOk()) {
					$errUi.hide();
				} else {
					$errUi.show();
				}

			}
			,
			ini = function () {
				_validate();
			}
			,
			_decide = function () {
				var old_beOk = beOkGet();
				_validate();
				var newBeOk = beOkGet();
				if (old_beOk !== newBeOk) {
					trig.report();
					return;
				}
				if (newBeOk) {
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
							get: beOkGet
						}
						,
						beErr: {
							get: function () {
								return !beOkGet();
							}
						}

						,
						cfg: {
							set: function (v) {
								_feedEl = v.feed;
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
