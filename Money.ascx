<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Money.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Money" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" Shared="true" %>

<%-----------------------------------------------
	this will generate a textbox on the client side. this textbox is different from html textbox in that it can catch the changes during the editing period while the html textbox can only catch the changes when blured.
	this can be used as a user ctrl. 
	This can also be placed on an blank .aspx file and then loaded to the client as a client control.
	The .aspx file can get the id from the client side and apply the id to this control. this control's clientmode is set as default. and the generated control id will be the same as request but the sub-controls' id will be prefixed by the given id.

---------------------------------------%>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>


<span>
	<%-- boxer is necessary to enclose script following input --%>
	<input
		type="<%=type %>" min="0" step="0.01"
		pattern="^\d*(\.\d{0,2})?$"
		onpropertychange="this.onPropertyChanged();"
		onpaste="this.onEdited()"
		onkeyup="this.onKeyUped()"
		onchange="this.onEdited()"
		oninput="this.onEdited()" />

	<%-- 
http://stackoverflow.com/questions/574941/best-way-to-track-onchange-as-you-type-in-input-type-text#		
So, you want the onchange event to fire on keydown, blur, and paste? That's magic.

If you want to track changes as they type, use "onkeydown". If you need to trap paste operations with the mouse, use "onpaste" (IE, FF3) and "oninput" (FF, Opera, Chrome, Safari1).

		Looks like oninput does not work on textarea in Safari...

		onkeypress should be used instead of onkeydown. onkeydown fires when a key is clicked down. If a user holds down a key, the event will only fire once for the first character. onkeypress fires whenever a char is added to the text field. 

	  
With jquery 1.8.3, looks like: $().on('change keydown paste input', function() {}) 
 
		
	--%>

	<%--	onmouseover="this.mouseover()"--%>

	<%--<asp:TextBox ID="text" runat="server" onpropertychange="this.propertychange();" onkeyup="this.keyup()" onchange="this._determineChange()"
	onmouseover="this.mouseover"  oninput="this._determineChange()" onclick="this._determineChange()" ></asp:TextBox>
	--%>
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</span>
