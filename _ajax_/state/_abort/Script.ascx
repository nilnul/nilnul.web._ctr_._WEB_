<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Script.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state._abort.Script" %>

<script>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement;
		var children=boxer.children;
		var i=0;

		var ajax=children[i++];
		var abort=children[i++]
			,
			state=children[i++]
		;

		var 
			$boxer=$(boxer)
			,
			$ajax=$(ajax),
			$abort=$(abort)
			,
			$state=$(state)
			,
			on = function () {
				$abort.on(
					'aborted'
					,
					function(){
						ajax.abort();	<%--may trigger fail callback.--%>
						$state.text("已要求中止");
						$abort.hide();
					}
				);
				$ajax.on(
					"fail"
					,
					function (textStatus, errorThrown) {
						if (textStatus!=="abort") {

							$state.text("failed: " +textStatus +"," +errorThrown);

							trig.fail(
									textStatus
									,
									errorThrown
							);
						}else{
							$abort.hide();
							$state.text("aborted");
							trig.aborted();
						}
					}
				);

				$ajax.on(
					"done"
					,
					function (data) {
						$abort.hide();
						$state.text("done:" + data);
						trig.done(data);
					}
				);
			}
			,
			send=function (data) {
				$ajax.hide();
				ajax.send(
					data
				);
				$abort.show();
			}
			,
			trig={
				aborted:function () {
					$boxer.triggerHandler("aborted");
    
				}
				,
				fail:function(textStatus,errThrown){
					$boxer.triggerHandler('fail',[textStatus,errThrown]);
				}
				,
				done:function(response){
					$boxer.triggerHandler('done', response);
					
				}
			}
			,

			pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						send:{value:send},
						
						handler:{
							get:function(){
								return ajax.handler;
							}
							,
							set:function(v){
								ajax.handler=v;
							}
						}

					}

				);
			},
			ini = function () {
				$abort.hide();
				on();
				pub();
			}
		;
		ini();
	}
</script>
