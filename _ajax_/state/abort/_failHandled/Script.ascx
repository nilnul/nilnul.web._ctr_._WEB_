<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Script.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state.abort._failHandled.Script" %>

<script>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement;
		var children=boxer.children;
		var i=0;

		var abortable=boxer.children[i++];

		var msger=boxer.children[i++]
			,
			state=children[i++]
			
			,
			$boxer=$(boxer)
		;
		
		var $abortable=$(abortable);
		var $msger=$(msger)
			,$state=$(state)
		;


		var 
			showMsg=function(msg){
				$abortable.hide();
				msger.msg(msg);
				$msger.show();
			}
			,

			on= function () {
				$abortable.on(
					'fail'
					,
					function(e,textStatus,errorThrown){
						msger.msg("提交失败："+ textStatus +". "+errorThrown);
						$msger.show();
					}
				);
				$abortable.on(
					'aborted'
					,
					function(e){
						trig.fail();
					}
				);

				$abortable.on(
					'done'
					,
					function (e,data) {
						trig.done(data)
					}
				);

				$msger.on(
					'oked',
					function(){
						trig.fail();
					}
				);


			}
			
			,
				
			trig={
				done:function(data){
					$boxer.triggerHandler('done',data);
				}
				,
				fail:function (textStatus,errorThrown) {
					$boxer.triggerHandler('fail',[textStatus, errorThrown]);
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						send:{value: abortable.send}

							
					}
				);
			},
			ini = function () {
				$msger.hide();
				//$abortable.css({
				//	'width':'100%'
				//	,'height':'100%'
				//	,'top':'0px'
				//	,'left':'0px'
				//});
				on();
				pub();
			}
		;
		ini();
	}
</script>

