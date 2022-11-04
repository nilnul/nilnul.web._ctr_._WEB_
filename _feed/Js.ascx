<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._feed.Js" %>
<%--  --%>

<%@ OutputCache Duration="3600000" VaryByParam="none" Shared="true" VaryByCustom="l" %>

<% #if false %>
<script type="text/ecmascript">
	<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			,
			$boxer = $(boxer)
			,
			children = boxer.children
			,
			inputs=Array.prototype.slice.call (children, 0, children.length-1)
			;
		<%-- the last one is  script. all other are child input. before script, we omit the full-nary check.--%>
		var
			_beOk
			,
			validate = function () {
				_beOk = nilnul.bit.op_.binary_.and.cumulator.cumulate(
					inputs.map(c=>c.beOk)
				);
			}
			,
			decide = function () {
				var oldBeOk = _beOk;
				validate();
				if (oldBeOk || _beOk) {
					trig.report();
				}
			}
			,
			on = function () {
				inputs.forEach(
					x =>
						$(x).on('report',
							decide
						)
				);
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
								return _beOk;
							}
						}
						,
						val: {
							get: function () {
								return inputs.map(x=>x.val);
							}
							,
							set: function (x) {
								x.forEach((v,)=> inputs[i].val=v);
							}
						}
						,
						beErr: {
							get: function () { return !_beOk; }
						}
						,
						disable: {
							value: function () {
								$boxer.find(":input:not(:disabled)").prop("disabled", true);
							}
						},
						enable: {
							value: function () {
								$boxer.find(":input:disabled").prop("disabled", false);
							}
						} 
					}
				);
			}
			,
			ini = function () {
				validate();
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
