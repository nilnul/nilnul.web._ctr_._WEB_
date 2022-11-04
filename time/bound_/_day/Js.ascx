<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.time.bound_._day.Js" %>


<%@ OutputCache Duration="36000000" VaryByParam="l" VaryByCustom="l" Shared="true" %>
<%-- layout separted from logic --%>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer = child.parentElement
			, $boxer = $(boxer)
			, children = boxer.children
			,
			i = 0
			,
			inputUi = children[i++]
			,
			$inputUi = $(inputUi)
			,
			val
			,
			validate = function () {
				val = inputUi.value;
			}
			,
			ini = function () {
				validate();
				<%-- $inputUi.attr("max", new Date().toISOString().split("T")[0]); --%>
				<%-- var observer = new MutationObserver(
					function (mutations, observer) {
						
					}
				);
				observer.observe(
					inputUi
					,
					{attributes:true}
				);--%>
			}
			,
			decide = function () {
				var oldVal = val;
				validate();
				if (val !== oldVal) {
					trig.report();
				}
			}
			,
			on = function () {
				$inputUi.on(
					"paste input keyup"
					,
					decide
				);

				$inputUi.on(
					"propertychange"
					,
					function (event) {
						if (event.propertyName.toLowerCase() == "value") {
							decide();
						}
					}
				);

				$inputUi.on(
					"change"
					,
					decide <%-- trig.report   //other events might have already occured so this is not necessary --%>
				);
			}
			,
			trig = {
				report: function () {
					$boxer.triggerHandler('report');
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer
					,
					{

						val: {
							get: function () {
								return inputUi.value;
							}
							,
							set: function (v) {
								inputUi.value = v;
							}
						}
						,
						beOk: {
							get: function () {
								return inputUi.validity.valid;
							}
						}
						,
						max: {
							set: function (v) {
								inputUi.setAttribute("max", v);
							}
						}
					}
				);
			}
			, ready = function () {
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
