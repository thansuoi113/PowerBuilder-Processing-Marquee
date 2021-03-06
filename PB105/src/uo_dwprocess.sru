$PBExportHeader$uo_dwprocess.sru
forward
global type uo_dwprocess from datawindow
end type
end forward

global type uo_dwprocess from datawindow
integer width = 1147
integer height = 88
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
event vscroll pbm_vscroll
event timer pbm_timer
end type
global uo_dwprocess uo_dwprocess

type prototypes
Function UInt SetTimer( UInt hwin, UInt idtimer, UInt TimeOut, Long tmprc ) Library "user32.dll"
Function Boolean KillTimer( UInt hwin, UInt idtimer ) Library "user32.dll"
end prototypes

type variables
Int ii_rrheight = 100
Int ii_rrwidth = 50
Int ii_rrellipseheight = 20
Int ii_rrellipsewidth = 55
Int ii_rrbrushhatch = 6
Long il_rrbrushcolor = 32768
Long il_rrbackgroundcolor = 1073741824
Long il_rrpencolor = 32768
Int ii_rrpenstyle = 0
Int ii_rrpenwidth = 5
Int ii_rrpadding = 5
Int ii_rrcnt = 5
Long il_dwbackgroundcolor = 15794160
Int ii_xstart, ii_xend, ii_rr_cnt
String is_runtype = "LEFT"
String TypeLeft = "LEFT"
String TypeRight = "RIGHT"
String TypeMid = "MID"
Boolean ib_flagmid = True

end variables

forward prototypes
public function string of_syntaxdw ()
public subroutine of_loadprocess ()
public subroutine of_marquee ()
public subroutine of_start (long al_time)
public subroutine of_stop ()
public subroutine of_setruntype (string as_runtype)
public subroutine of_setrr (integer ai_rrwidth, integer ai_rrellipseheight, integer ai_rrellipsewidth, integer ai_rrbrushhatch, long al_rrbrushcolor, long al_rrbackgroundcolor, long al_rrpencolor, integer ai_rrpenstyle, integer ai_rrpenwidth, integer ai_rrpadding, integer ai_rrcnt)
public subroutine of_setdw (long al_dwbackgroundcolor)
public subroutine of_setrrcolor (long al_rrbrushcolor, long al_rrbackgroundcolor, long al_rrpencolor)
public subroutine of_setrrpaint (integer ai_rrwidth, integer ai_rrellipseheight, integer ai_rrellipsewidth, integer ai_rrpadding, integer ai_rrcnt)
end prototypes

event vscroll;return 1
end event

event timer;of_marquee()
//of_rightmarquee()
//of_midmarquee()
end event

public function string of_syntaxdw ();//====================================================================
// Function: uo_dwprocess.of_syntaxdw()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/06/21
//--------------------------------------------------------------------
// Usage: uo_dwprocess.of_syntaxdw ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

string ls_syntax

ls_syntax = 'release 10.5;' + '~r~n' + &
'datawindow(units=0 timer_interval=0 color='+string(il_dwbackgroundcolor)+' processing=0 HTMLDW=no print.printername="" print.documentname="" print.orientation = 0 print.margin.left = 110 print.margin.right = 110 print.margin.top = 96 print.margin.bottom = 96 print.paper.source = 0 print.paper.size = 0 print.canusedefaultprinter=yes print.prompt=no print.buttons=no print.preview.buttons=no print.cliptext=no print.overrideprintjob=no print.collate=yes print.preview.outline=yes hidegrayline=no )' + '~r~n' + &
'header(height=0 color="1073741824" )' + '~r~n' + &
'summary(height=0 color="536870912" )' + '~r~n' + &
'footer(height=0 color="536870912" )' + '~r~n' + &
'detail(height=0 color="536870912" )' + '~r~n' + &
'table(column=(type=char(500) updatewhereclause=yes name=col dbname="col" ))' + '~r~n' + &
'htmltable(border="1" )' + '~r~n' + &
'htmlgen(clientevents="1" clientvalidation="1" clientcomputedfields="1" clientformatting="0" clientscriptable="0" generatejavascript="1" encodeselflinkargs="1" netscapelayers="0" pagingmethod=0 generatedddwframes="1" )' + '~r~n' + &
'xhtmlgen() cssgen(sessionspecific="0" )' + '~r~n' + &
'xmlgen(inline="0" )' + '~r~n' + &
'xsltgen()' + '~r~n' + &
'jsgen()' + '~r~n' + &
'export.xml(headgroups="1" includewhitespace="0" metadatatype=0 savemetadata=0 )' + '~r~n' + &
'import.xml()' + '~r~n' + &
'export.pdf(method=0 distill.custompostscript="0" xslfop.print="0" )' + '~r~n' + &
'export.xhtml()' 

Return ls_syntax
end function

public subroutine of_loadprocess ();//====================================================================
// Function: uo_dwprocess.of_loadprocess()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/06/21
//--------------------------------------------------------------------
// Usage: uo_dwprocess.of_loadprocess ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String ls_syntax_str, ls_errmsg, ls_visible
String ls_syntaxrr, ls_value
Int li_row, li_rr_count, li_rr_mid, li_rr_start, li_rr_end
Long ll_rrx

of_stop()

ls_syntax_str = of_syntaxdw( )
This.Create(ls_syntax_str, ls_errmsg)

If Len(Trim(ls_errmsg)) > 0  Then
	MessageBox("Warning","Create Dw Error")
	Return
End If

li_rr_count = Width / (ii_rrwidth +ii_rrpadding )
li_rr_mid = li_rr_count /2 - 1
li_rr_start = li_rr_mid  -  (ii_rrcnt/2)
li_rr_end = li_rr_mid +  (ii_rrcnt/2)
ii_xstart = li_rr_start
ii_xend = li_rr_end
ii_rr_cnt = li_rr_count

ls_syntaxrr = ""
ls_value = ""
For li_row = 0 To li_rr_count
	ll_rrx = li_row *  (ii_rrwidth +ii_rrpadding )
	If li_row >= li_rr_start And li_row < li_rr_end Then
		//ls_visible = "1"
		ls_value = ls_value + "1"
	Else
		//ls_visible = "0"
		ls_value = ls_value + "0"
	End If
	ls_syntaxrr = ls_syntaxrr + 'create roundrectangle(band=detail ellipseheight="'+String(ii_rrellipseheight)+'" ellipsewidth="'+String(ii_rrellipsewidth)+'"x="'+String(ll_rrx)+'" y="1" height="'+String(ii_rrheight - 4)+'" width="'+String(ii_rrwidth)+'"  name=rr_'+String(li_row )+' visible="1~tIf(long(mid(col,'+String(li_row + 1)+',1))=1,1,0)" brush.hatch="'+String(ii_rrbrushhatch)+'" brush.color="'+String(il_rrbrushcolor)+'" pen.style="'+String(ii_rrpenstyle)+'" pen.width="'+String(ii_rrpenwidth)+'" pen.color="'+String(il_rrpencolor)+'"  background.mode="2" background.color="'+String(il_rrbackgroundcolor)+'" ) '
Next

ls_errmsg = This.Modify(ls_syntaxrr)

This.Modify('DataWindow.Detail.Height='+String(ii_rrheight))
//This.Height = ii_rrheight + 5
InsertRow(0)

This.SetItem(1, "col", ls_value )

end subroutine

public subroutine of_marquee ();//====================================================================
// Function: uo_dwprocess.of_marquee()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/06/21
//--------------------------------------------------------------------
// Usage: uo_dwprocess.of_marquee ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String ls_value
Int li_row

For li_row = 0 To ii_rr_cnt
	If ii_xstart <= ii_xend Then
		If li_row >= ii_xstart And li_row < ( ii_xend ) Then
			ls_value = ls_value + "1"
		Else
			ls_value = ls_value + "0"
		End If
	Else
		If li_row >= ii_xend And li_row < ( ii_xstart ) Then
			ls_value = ls_value + "0"
		Else
			ls_value = ls_value + "1"
		End If
	End If
Next

If is_runtype = TypeLeft Or ( is_runtype = TypeMid And ib_flagmid )Then
	ii_xstart ++
	ii_xend ++
	If ii_xend > ii_rr_cnt Then
		ii_xend = 0
		If is_runtype = TypeMid Then
			ii_xend --
			ib_flagmid = False
		End If
	End If
	If ii_xstart > ii_rr_cnt Then ii_xstart = 0
ElseIf is_runtype = TypeRight  Or ( is_runtype = TypeMid And Not ib_flagmid ) Then
	ii_xstart --
	ii_xend --
	If ii_xend < 0 Then ii_xend = ii_rr_cnt
	If ii_xstart < 0 Then
		ii_xstart = ii_rr_cnt
		If is_runtype = TypeMid Then
			ii_xstart ++
			ib_flagmid = True
		End If
	End If
End If

This.SetItem(1, "col", ls_value)



end subroutine

public subroutine of_start (long al_time);//====================================================================
// Function: uo_dwprocess.of_start()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	long	al_time	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/06/21
//--------------------------------------------------------------------
// Usage: uo_dwprocess.of_start ( long al_time )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

If al_time < 1 Then al_time = 1
SetTimer( Handle( This ), 0, al_time, 0 )
	
end subroutine

public subroutine of_stop ();//====================================================================
// Function: uo_dwprocess.of_stop()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/06/21
//--------------------------------------------------------------------
// Usage: uo_dwprocess.of_stop ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

KillTimer( Handle( This ),0 )

end subroutine

public subroutine of_setruntype (string as_runtype);is_runtype = as_runtype
end subroutine

public subroutine of_setrr (integer ai_rrwidth, integer ai_rrellipseheight, integer ai_rrellipsewidth, integer ai_rrbrushhatch, long al_rrbrushcolor, long al_rrbackgroundcolor, long al_rrpencolor, integer ai_rrpenstyle, integer ai_rrpenwidth, integer ai_rrpadding, integer ai_rrcnt);//====================================================================
// Function: uo_dwprocess.Script - of_setrr ( integer ai_rrwidth, integer ai_rrellipseheight, integer ai_rrellipsewidth, integer ai_rrbrushhatch, long al_rrbrushcolor, long al_rrbackgroundcolor, long al_rrpencolor, integer ai_rrpenstyle, integer ai_rrpenwidth, integer ai_rrpadding()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	integer	ai_rrwidth          	
// 	value	integer	ai_rrellipseheight  	
// 	value	integer	ai_rrellipsewidth   	
// 	value	integer	ai_rrbrushhatch     	
// 	value	long   	al_rrbrushcolor     	
// 	value	long   	al_rrbackgroundcolor	
// 	value	long   	al_rrpencolor       	
// 	value	integer	ai_rrpenstyle       	
// 	value	integer	ai_rrpenwidth       	
// 	value	integer	ai_rrpadding        	
// 	value	integer	ai_rrcnt            	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/06/21
//--------------------------------------------------------------------
// Usage: uo_dwprocess.
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

ii_rrwidth = ai_rrwidth
ii_rrellipseheight = ai_rrellipseheight
ii_rrellipsewidth = ai_rrellipsewidth
ii_rrbrushhatch = ai_rrbrushhatch
il_rrbrushcolor = al_rrbrushcolor
il_rrbackgroundcolor = al_rrbackgroundcolor
il_rrpencolor = al_rrpencolor
ii_rrpenstyle = ai_rrpenstyle
ii_rrpenwidth = ai_rrpenwidth
ii_rrpadding = ai_rrpadding
ii_rrcnt = ai_rrcnt

of_loadprocess()
end subroutine

public subroutine of_setdw (long al_dwbackgroundcolor);il_dwbackgroundcolor = al_dwbackgroundcolor
end subroutine

public subroutine of_setrrcolor (long al_rrbrushcolor, long al_rrbackgroundcolor, long al_rrpencolor);il_rrbrushcolor = al_rrbrushcolor
il_rrbackgroundcolor = al_rrbackgroundcolor
il_rrpencolor = al_rrpencolor

of_loadprocess()
end subroutine

public subroutine of_setrrpaint (integer ai_rrwidth, integer ai_rrellipseheight, integer ai_rrellipsewidth, integer ai_rrpadding, integer ai_rrcnt);ii_rrwidth = ai_rrwidth
ii_rrellipseheight = ai_rrellipseheight
ii_rrellipsewidth = ai_rrellipsewidth
ii_rrpadding = ai_rrpadding
ii_rrcnt = ai_rrcnt

of_loadprocess()
end subroutine

on uo_dwprocess.create
end on

on uo_dwprocess.destroy
end on

event constructor;ii_rrheight = Height
This.Post of_loadprocess()
//This.Height = ii_height

end event

event resize;ii_rrheight = newheight
of_loadprocess()
end event

