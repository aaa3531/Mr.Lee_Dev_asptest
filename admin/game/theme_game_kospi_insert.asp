﻿
<!-- #include virtual="/_include/connect.inc" -->
<%   

    strSQL = "p_sm_game_theme_insert    'KOSPI','" & _
                                         request("theme_type") & "'"

    'response.Write strSQL
    'response.end
    
    Set rsData = Server.CreateObject("ADODB.RecordSet")
    rsData.Open strSQL, DbCon, 1, 1 

    set rsData = nothing
    set Dbcon = nothing
    
    Response.redirect "kospitheme_game.asp?page="&request("page")
   
%>
<!-- #include virtual="/_include/connect_close.inc" -->
