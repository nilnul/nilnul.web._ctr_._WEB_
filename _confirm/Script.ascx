<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Script.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._confirm.Script" %>
<%@ OutputCache VaryByParam="l" Duration="36000000" %>

<script>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement;
		var children=boxer.children;
		var i=0;
		var msg=children[i++];

		var confirm=children[i++];
		var cancel=children[i++]
			,state=children[i++]
			,
			
			$boxer=$(boxer), $msg=$(msg),$confirm=$(confirm), $cancel=$(cancel),$state=$(state)
			,
			on=function(){
				$confirm.click(
					function () {
						$confirm.hide();
						$cancel.hide();
						$state.text("已确认");
  						trig.confirmed();
					}
				);
				$cancel.click(
					function () {
						$confirm.hide();
						$cancel.hide();
						$state.text("已取消");

						trig.canceled();
					}
				);
			}
			,
			trig={
				confirmed:function () {
					$boxer.triggerHandler("confirmed");
				}
				,
				canceled:function(){
					$boxer.triggerHandler("canceled");
				}
			}
			,pub = function () {
				

			}
			,ini = function () {
				$cancel.focus();
				on();
				pub();

			}
		;
		ini();
	};
</script>
