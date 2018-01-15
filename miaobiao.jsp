<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>

</head>
<style>
  .clock{
	  width:300px;
	  height:100px;
	  background:#000;
	  color:#FFF;
	  font-weight:bold;
	  border-radius:50px;
	  text-align:center;
	  line-height:100px;
	  font-size:100px;
	  }
  .ps{
	  position:absolute;
	  left:35%;
	  top:35%;	  
     }
    .botton{
	  position:relative;
	  left:25%;
	  top:10px;	  
     }

</style>

<script type="text/javascript">
 var c=0;
 var t;
 function timeCount()
 {
	document.getElementById("clk").value=c;
	c=c+1;
    t=setTimeout("timeCount()",1000);
	sobj=document.getElementById("clk");
	sobj.innerHTML=c;
	
	if(c==10) 
	{
		alert('10 秒时间到!');
	}
 }
 
 function stopCount()
 {
 clearTimeout(t)
 }
 
</script>

<body>
 <div class="ps">
 <div class="clock"><span id='clk'>0</span></div>
 <div class="botton">
 <input type="button" value="开始计时" onClick="timeCount()">
 <input type="button" value="停止计时" onClick="stopCount()">
 </div>
 </div>
</body>


</html>