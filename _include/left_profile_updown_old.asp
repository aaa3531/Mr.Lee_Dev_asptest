﻿
 <SCRIPT language="javascript">
     function FormatNumber(num) {
         var str = num;
         var Re = /[^0-9]/g;
         var ReN = /(-?[0-9]+)([0-9]{3})/;
         str = str.replace(Re, '');
         while (ReN.test(str)) {
             str = str.replace(ReN, "$1,$2");
         }
         return str;
     }
</script>

 <SCRIPT language="javascript">
     var xhr;
     function readprofilePoint() {
         xhr = new XMLHttpRequest();
         xhr.onreadystatechange = setprofilePoint;
         xhr.open("Get", "/_include/left_profile_read.asp");
         xhr.send(null);
     }
     function setprofilePoint() {
         //alert("111");
         if (xhr.readyState == 4) {
             var data = xhr.responseText;
             var slipdata = data.split(',');
             document.getElementById("pointtotal").innerHTML = FormatNumber(slipdata[0]) + "원";
             document.getElementById("memocount").innerHTML = "(" + slipdata[1] + ")";
             //var pre1 = document.getElementById("pointtotal");
             //pre1.innerHTML = "보유금액 ( " + FormatNumber("" + "<%=point_total %>") + " )";
         }
         //setTimeout("readprofilePoint()", 5000);

     }

</script>
	

	<!--[s] ASIDE -->		
			<div class="aside">
				<div class="top">
						<div class="myinfo">
						<div class="myinfo_top">
						<span><a href="/mypage/update.asp"><%=session("member_alias") %></a> 님</span>
						<a href="/logout.asp" class="btn_logout"><img src="/img/btn_logout.gif" width="47" height="18" /></a>
						</div>
						<div class="myinfo_center">
						<dl >
							<dt>쪽지 : </dt>
							<dd class="txt1"><a href="/mypage/memo.asp"><span id="memocount" style="font-weight:bold;"><%=session("memo_cnt") %></span> 통</a></dd>
							<dd><a href="/mypage/memo.asp" class="btn_notice"><img src="/img/btn_notice.gif" width="28" height="18" /></a></dd>
						</dl>
						<dl>
							<dt>보유금액 : </dt>
							<dd class="txt2"><span id="pointtotal" style="margin:0 10px 0 0 ; color:#FFD595;"></span> 원</dd>
							<dd><a href="/mypage/charge.asp" class="btn_charge"><img src="/img/btn_charge.gif" width="28" height="18" /></a></dd>
						</dl>
						</div>
					</div>
				</div>
			</div>
	<!--[e] ASIDE -->		
			
<div style="text-align:center;">
<table width="100%" border="0" cellpadding="0" cellspacing="0" style="background-color:#000000;">
<tr height=25">
<div style="margin:0px;padding:10px;background-color:#00856A;color:#47B7AD;text-align:center;font-weight:bold; border-top-right-radius:5px; border-top-left-radius:5px;">
    MEMBER INFO
    </div>

<td align="center">
<span style="color:#ffffff;font-weight:bold;margin:0 10px 0 0;"><%=session("member_alias") %>님 </span>  
<a target="_parent" href="/mypage/memo.asp">
<span style="color:#99CC00;font-weight:bold;">쪽지</span>
<span id="memocount" style="color:#99CC00;font-weight:bold;"><%=session("memo_cnt") %></span>
</a>
</td>
</tr>
<tr height=25"> 
<td align="center">
    <span style="margin:0 0 0 0 ; color:#FFD595;">보유금액 : </span>
    <span id="pointtotal" style="margin:0 10px 0 0 ; color:#FFD595;"></span>
    <% if bet_amt <> "" then %>
    <span style="color:#FFD595;">베팅금액( <%=bet_amt %> )</span>
    <% end if %>
</td>
</tr>
<tr>
<tr height=5"> 
<td align="center">
</tr>
</table>
</div>
    
    <script>
    readprofilePoint();
    setInterval("readprofilePoint()",5000);
    </script>
    

