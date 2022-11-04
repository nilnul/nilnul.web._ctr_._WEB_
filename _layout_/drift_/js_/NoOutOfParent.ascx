﻿<%@ Control Language="C#"  %>
<!doctype html>
<html>
    <head>
        <style>
			#container {
				position:absolute;
                background-color: blue;
				}
            #elem{
                position: absolute;
                background-color: green;
                -webkit-user-select: none;
                -moz-user-select: none;
                -o-user-select: none;
                -ms-user-select: none;
                -khtml-user-select: none;     
                user-select: none;
            }
        </style>
        <script>
            var mydragg = function(){
                return {
                    move : function(divid,xpos,ypos){
                        divid.style.left = xpos + 'px';
                        divid.style.top = ypos + 'px';
                    },
                    startMoving : function(divid,container,evt){
                        evt = evt || window.event;
                        var posX = evt.clientX,
                            posY = evt.clientY,
                        divTop = divid.style.top,
                        divLeft = divid.style.left,
						eWi = parseInt(divid.style.width),
						eHe = parseInt(divid.style.height),
						cWi = parseInt(document.getElementById(container).style.width),
						cHe = parseInt(document.getElementById(container).style.height);
						document.getElementById(container).style.cursor='move';
                        divTop = divTop.replace('px','');
                        divLeft = divLeft.replace('px','');
                        var diffX = posX - divLeft,
                            diffY = posY - divTop;
                        document.onmousemove = function(evt){
                            evt = evt || window.event;
                            var posX = evt.clientX,
                                posY = evt.clientY,
                                aX = posX - diffX,
                                aY = posY - diffY;
								if (aX < 0) aX = 0;
								if (aY < 0) aY = 0;
								if (aX + eWi > cWi) aX = cWi - eWi;
								if (aY + eHe > cHe) aY = cHe -eHe;
                            mydragg.move(divid,aX,aY);
                        }
                    },
                    stopMoving : function(container){
                        var a = document.createElement('script');
						document.getElementById(container).style.cursor='default';
                        document.onmousemove = function(){}
                    },
                }
            }();

        </script>
    </head>
    <body>
		<div id='container' style="width: 600px;height: 400px;top:50px;left:50px;">		
			<div id="elem" onmousedown='mydragg.startMoving(this,"container",event);' onmouseup='mydragg.stopMoving("container");' style="width: 200px;height: 100px;">
				<div style='width:100%;height:100%;padding:10px'>
				<select id=test>
					<option value=1>first
					<option value=2>second
				</select>
				<INPUT TYPE=text value="123">
				</div>
			</div>
		</div>	
    </body>
</html>
    
    
    
    
    
