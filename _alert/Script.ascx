<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Script.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._alert.Script" %>

<%@ OutputCache VaryByParam="l;id" Duration="36000000" %>




<script>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement;
		var children=boxer.children;
		var i=0;

		var p=children[i++];
		var 
			button=children[i++]
			,
			state=children[i++]
		;

		var $boxer=$(boxer);
		var $p=$(p);
		var 
			$button=$(button)
			,
			$state=$(state)
		;

		var on=function(){
			$button.click(
				function(e){
					e&&e.preventDefault();
					<%--
					$button.hide();
	--%>

					$state.text("点击了好！...");
					trig.oked();
					$state.text("");
				}
			);
		
		};

		var trig={
			oked:function(){
				$boxer.triggerHandler('oked');
			}
		};

		var pub = function () {
			Object.defineProperties(
				boxer
				,
				{
					msg: {
						set: function (val) {
							$p.text(val);
						}

					}
				}
			);

		};

		var ini = function () {
			on();
			pub();

		};
		ini();

	};
</script>
