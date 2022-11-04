<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" %>
<%-----------------------------------------------

---------------------------------------%>

<script runat="server">
	public string unique_func_name;
	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}
</script>

<span>
	<%-- boxer is necessary to enclose script following input --%>
	<textarea
		onpropertychange="this.propertychange_then();"
		onpaste="this._determineChange()"
		onkeyup="this.keyup_then()"
		onchange="this._determineChange()"
		oninput="this._determineChange()"
		></textarea>

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
	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;
			var children=boxer.children;
			var i=0;

			var text=children[i++];

			var $boxer=$(boxer);
			var $text=$(text);

			var	
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
				},
				changed = function () {
					trigger.changed();
				}
				,
				trigger={
					changed:function(){
						$boxer.triggerHandler('changed');
					}
				}
				, pub = function () {
					Object.defineProperties(
						boxer,
						{
							val:{
								get:function(){
									return text.value;
								},
								set:function(x){
									text.value=x;
									_determineChange();
								}
							}
							,placeholder:{
								set:function (x) {
									$text.attr("placeholder",x);
								}
							}
						}
					);
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

					boxer.focal = function () { text.focus(); };


				}
				, listen = function () {

				}

				,ini = function () {
					validate();
					listen();
					pub();

				}
			;

			ini();
		}
	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</span>
