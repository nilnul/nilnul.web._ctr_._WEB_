<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._money.Js" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" Shared="true" %>

<% #if false %>
<script type="text/ecmascript">
		<% #endif %>
	; var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			,
			$boxer = $(boxer)
			,
			children = boxer.children
			, i = 0
			,
			inputUi = children[i++]
			,
			$inputUi = $(inputUi)
			,
			_memedVal
			,
			_input$val_set = function (x) {
				if (x === _memedVal) {

				} else {
					inputUi.value = x;
					_validate();
					trig.changed();
				}
			}
			,
			_input$val_get = function (x) {
				return inputUi.value;
			}
			,
			_validate = function () {
				_memedVal = inputUi.value;
			}
			,

			_input$onEdited = function () {
				var oldVal = _memedVal;
				_validate();
				if (_memedVal !== oldVal) {
					trig.changed();
				}
			},
			on = function () {
				$boxer.on("focus", function (e) {
					e.stopPropagation();
					e.preventDefault();
					$inputUi.focus();
				});
			}
			,
			trig = {
				changed: function () {
					$boxer.triggerHandler("changed");
				}
			},
			pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						val: {
							get: _input$val_get
							,
							set: _input$val_set

						}
						,
						disable: {
							value: function () {
								inputUi.disabled = true;
							}
						},
						enable: {
							value: function () {
								inputUi.disabled = false;
							}
						}
						,
						focus: {
							value: function () {
								$inputUi.focus();
							}
						}
					}
				);
			}
			,
			ini = function () {
				Object.defineProperties(
					inputUi
					,
					{
						onEdited: { value: _input$onEdited }
						,
						onPropertyChanged: {
							value: function (event) {
								if (event.propertyName.toLowerCase() == "value") {
									_input$onEdited();
								}
							}
						}
						,
						onKeyUped: {
							value: function () {
								_input$onEdited();
							}
						}
					}

				);
				_validate();
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