<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Beep.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.btn_.Beep" %>
<audio id="audio" src="http://www.soundjay.com/button/beep-07.wav" autoplay="false" ></audio>
    <a onclick="playSound();"> Play</a>
    <script>
    function playSound() {
          var sound = document.getElementById("audio");
          sound.play();
      }
    </script>
