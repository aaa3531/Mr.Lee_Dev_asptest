﻿<!-- #include virtual="/_include/connect.inc" -->
<%   
   
    strSQL = "p_sh_calculate_updown_update '" & request("game_no") & "','" & _
                                                request("index_value") & "','" & _
                                                request("index_last") & "'"
    
    'response.write strSQL
    'response.End

    Set rsData = Server.CreateObject("ADODB.RecordSet")
    rsData.Open strSQL, DbCon, 1, 1 

    set rsData = nothing
    set Dbcon = nothing
    
    Response.redirect "calculate_game.asp?game_no="&request("game_no")&"&yyyymmdd="&request("yyyymmdd")
 
%>
<!-- #include virtual="/_include/connect_close.inc" -->
