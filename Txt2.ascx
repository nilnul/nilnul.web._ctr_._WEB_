<%@ Control Language="C#" AutoEventWireup="true"  %>
<%--<%@ OutputCache Duration="3600000" VaryByParam="id" %>--%>
<%-----------------------------------------------
	this will generate a textbox on the client side. this textbox is different from html textbox in that it can catch the changes during the editing period while the html textbox can only catch the changes when blured.
	this can be used as a user ctrl. 
	This can also be placed on an blank .aspx file and then loaded to the client as a client control.
	The .aspx file can get the id from the client side and apply the id to this control. this control's clientmode is set as default. and the generated control id will be the same as request but the sub-controls' id will be prefixed by the given id.

---------------------------------------%>

<script runat="server">
	private string _type="text";
	public string type { get { return _type; } set { _type = value; } }
</script>

<label id="<%=ClientID %>"> <%-- boxer is necessary to enclose script following input --%>
	<input
		type="<%=type %>"
		onpropertychange="this.propertychange_then();"
		onpaste="this._determineChange()"
		onkeyup="this.keyup_then()"
		onchange="this._determineChange()"
		oninput="this._determineChange()" style="width:8em;"/>

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

	<script type="text/ecmascript">
		(function (boxer) {
			<%--above are compatible vars--%>


			var	text = boxer.firstElementChild,
			val 
			,validate = function () {
					val = text.value;
				}
			, _determineChange = function () {
				var oldVal = val;
				validate();
				if (val !== oldVal) {
					changed();
				}
			}, changed = function () {
				nilnul.fireAction(boxer.changed);
			}
			, pub = function () {
				boxer.valOp = function (x) {
					if (typeof x == "undefined") {
						return text.value;
					}
					text.value = x;
					_determineChange();
				};
				boxer.disable = function () {
					text.disabled = true;
					
				};
				
				boxer.enable = function () {
					text.disabled = false;
				};
				text._determineChange = _determineChange;
				text.propertychange_then = function (event) {
					if (event.propertyName.toLowerCase() == "value") {
						_determineChange();
					}
				};

				text.keyup_then = function () {
					_determineChange();
				};
				boxer.focusMy = function () { text.focus(); };


			}
			, listen = function () {

			}

			,ini = function () {
				validate();
				listen();

				pub();

			};

			ini();
		}(
			document.getElementById("<%=ClientID%>")
	));
	</script>
</label>
