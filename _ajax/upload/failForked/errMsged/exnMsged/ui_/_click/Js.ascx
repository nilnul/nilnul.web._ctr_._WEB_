<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax.upload.failForked.errMsged.exnMsged.ui_._click.Js" %>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=function (child) {
		var 
			boxer=child.parentElement
			,
			$boxer=$(boxer)
			,
			children=boxer.children
			,
			i=0
			,
			fileDiv=children[i++]
				,$fileDiv=$(fileDiv)
				,fileLabel=fileDiv.firstElementChild
					,fileBrowse=fileLabel.firstElementChild
						,$fileBrowse=$(fileBrowse)
			,ajaxDiv=children[i++]
				,$ajaxDiv=$(ajaxDiv)
					,ajaxCtr=ajaxDiv.firstElementChild
						,$ajaxCtr=$(ajaxCtr)
			,stateDiv=children[i++]
				,$stateDiv=$(stateDiv)
							,
			ini = function () {
				
			}

			,
			on= function () {
				$fileBrowse.on(
					"change"
					,
					function (e) {
						if (fileBrowse.value) {
							$stateDiv.text("上传中...");

							ajaxCtr.post(
								this.files[0]
							);
							<%--It's better to put this.value = null at the end of the onchange because it's possible to active an input element without clicking on it (by using the keyboard). You can store input.files if you need to reference it later. – Halcyon Oct 10 '14 at 13:19 --%>
							try{

								fileBrowse.value=null;

							}catch(e){
								fileBrowse.value="";
							}
						}
					}
				);

				$ajaxCtr.on(
					"done"
					,function (e,data,textStatus,jqx) {

						trig.done(data,textStatus,jqx);

						$ajaxDiv.hide();
						$fileDiv.show();
						$stateDiv.text("");
					}
				);
				$ajaxCtr.on(
					"err exn"
					,function (e,jqx, textStatus,errorThrown) {
						trig.fail(jqx, textStatus,errorThrown);
					}
				);
				


			}
			,
			trig={
				fail:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('fail',[jqx,textStatus,errorThrown]);
				},
				done:function(data,textStatus,jqx){
					$boxer.triggerHandler('done', [data,textStatus,jqx]);
				}

				
			},

			pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						abort:{
							value:ajaxCtr.abort
						}
,
						post:{
							value:function(file){
								$fileDiv.hide();
								$ajaxDiv.show();
								ajaxCtr.post(file);
								
							}
						}
						,
						url:{
							set:function (x) {
								ajaxCtr.url=x;
							}
						}
						,accept:{
							set:function (v) {
								$fileBrowse.attr("accept", v);
							}
						}
						
					}
				);

			}
			,ready=function () {
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