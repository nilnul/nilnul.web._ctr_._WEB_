<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.fs._web.upload_._iframe.Js" %>

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
			,formEle=children[i++]
				,$formEle=$(formEle)
			,frameEle=children[i++]
				,$frameEle=$(frameEle)
			
			,stateDiv=children[i++]
			,$stateDiv=$(stateDiv)
			,
			on= function () {
				$formEle.submit(
					function (e) {
						
						var frameName=nilnul.eles.has_.name.genUni();<%--[$frameEle.attr("name"), $frameEle.prop("name"), $frameEle.attr("id"), $frameEle.prop("id"), $formEle.attr("target"), $formEle.prop("target")]--%>

						//$frameEle.attr("name", frameName);
						//$frameEle.prop("name", frameName);
						//$frameEle.attr("id", frameName);
						//$frameEle.prop("id", frameName);

						//$formEle.attr("target", frameName);
						//$formEle.prop("target", frameName);
						<%-- it seems that form.target static value such as "_1" is honored but dynamic value is not--%>

						$formEle.off();
						$formEle.submit();


						<%--
						e.preventDefault();--%>
						<%--$formEle.submit(); will trigger a loop 
	Note that if you already installed a submit event listener for your form, the innner call to submit() 
jQuery('#<form-id>').submit( function(e){ 
    e.preventDefault();
    // maybe some validation in here
    if ( <form-is-valid> ) jQuery('#<form-id>').submit();
});

won't work as it tries to install a new event listener for this form's submit event (which fails). So you have to acces the HTML Element itself (unwrap from jQquery) and call submit() on this element directly:
    jQuery('#<form-id>').submit( function(e){ 
      e.preventDefault();
      // note the [0] array access:
      if ( <form-is-valid> ) jQuery('#<form-id>')[0].submit();
    });

	So you can either call ajax to post instead of submit, or off the handler before call submit, or preempt a flag.
	e.preventDefault();
    // do some stuff, and if it's okay:
    $(this).off('submit').submit();

	
	--%>
						$frameEle.show();

						<%--return false; --%>
					}
				);
			}
			,
			trig={
			},

			pub = function () {
				Object.defineProperties(
					boxer
					,
					{
					}
				);

			},
			ini = function () {

				<%--listen to the message posted back from Iframe

				window.addEventListener('message',function(e){
					var fname=e.data;
					$('#supplyfile').val(fname);
					$(".loadinfo").addClass("none");
					$(".successinfo").html("<p>文件上传成功</p>").removeClass("none");
					setTimeout(function() { $(".successinfo").addClass("none");}, 2000);
					$("#supplyfile_div").html('<span class="am-icon-file-o"></span> <a target="_blank" href="'+hosts+'/files/'+fname+'">供应商确认单</a>');
				},false);
				--%>
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