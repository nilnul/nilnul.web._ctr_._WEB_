<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state.errAlerted._withButton.Js" %>

<% #if false %>
<script>

<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement;
		var children=boxer.children;
		var i=0;

		var button=children[i++]
			,
			errAlerted=children[i++]
			

			,$boxer=$(boxer)
			, $button=$(button)
			, $errAlerted=$(errAlerted)
			
			,
			on= function () {
				$button.click(
					function (e) {
						trig.clicked();
					}
				);

				$errAlerted.on(
					"success"
					,function () {
						$button.show();
						$errAlerted.hide();
    
					}
				);
				$errAlerted.on(
					"err"
					,
					function () {
						$button.show();
						$errAlerted.hide();
					}
				);
			}
			,
			trig={
				clicked:function () {
					$boxer.triggerHandler("clicked");
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						send:{
							value:function(data){
								$button.hide();
								errAlerted.send(data);
							}
						}
						,
						handler:{
							set:function (x) {
								errAlerted.handler=x;
							}
						}
					}
				);
			},
			ini = function () {
				$errAlerted.hide();
				on();
				pub();
			}
		;
		ini();
	}
	<% #if false %>

</script>

<% #endif %>