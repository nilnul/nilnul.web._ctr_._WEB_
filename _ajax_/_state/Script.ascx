<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Script.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_._state.Script" %>

<script>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement;
		var children=boxer.children;
		var i=0;

		var status=children[i++];

		var $boxer=$(boxer);
		var $status=$(status);
		
		var jqx;
		var handler=$boxer.data("handler");

		var send = function (data) {
			$status.text("提交中...");

			jqx=$.post(handler, data, "json").done(

				function (response) {
					if (response) {
						if (typeof(response)==="string") {
							response=$.parseJSON(response);
						}
    
					}else {
						response=null;
					}
					$status.text("得到回应...");

					trig.done(response);
					$status.text("");


				}
			).fail(
				function (jqXhr,textStatus,errorThrown) {
					$status.text("");
					trig.fail(textStatus,errorThrown);
				}
			).always(
				function () {
					trig.always();
				}
			);
			;
		};

		var trig={
			done:function(response){
				$boxer.triggerHandler("done",response);
			}
			,
			fail:function (textStatus,errorThrown) {
				$boxer.triggerHandler("fail", [textStatus,errorThrown]);
			}
			,
			always:function(){
				$boxer.triggerHandler("always");
			}
		};
		var pub = function () {
			Object.defineProperties(
				boxer
				,
				{
					abort:{
						value:function(){
							jqx && jqx.abort();
						}
					}
					,
					send:{
						value:send
					}
					,
					handler:{
						get:function(){
							return handler;
						}
						,
						set:function(v){
							handler=v;
						}
					}
				}
					

			);
		};

		var ini = function () {
			pub();
		};
		ini();
	};
</script>
