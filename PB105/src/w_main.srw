$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type em_speed from editmask within w_main
end type
type st_17 from statictext within w_main
end type
type em_nrrect from editmask within w_main
end type
type st_16 from statictext within w_main
end type
type cb_3 from commandbutton within w_main
end type
type dw_3 from uo_dwprocess within w_main
end type
type dw_2 from uo_dwprocess within w_main
end type
type st_dwbgcolor from statictext within w_main
end type
type st_14 from statictext within w_main
end type
type em_rrpadding from editmask within w_main
end type
type st_13 from statictext within w_main
end type
type ddlb_brushhatch from dropdownlistbox within w_main
end type
type em_rrpenwidth from editmask within w_main
end type
type ddlb_1 from dropdownlistbox within w_main
end type
type st_rrpencolor from statictext within w_main
end type
type st_brushcolor from statictext within w_main
end type
type st_rrbgcolor from statictext within w_main
end type
type st_9 from statictext within w_main
end type
type st_8 from statictext within w_main
end type
type st_7 from statictext within w_main
end type
type st_2 from statictext within w_main
end type
type st_6 from statictext within w_main
end type
type st_rrbgcolor1 from statictext within w_main
end type
type st_4 from statictext within w_main
end type
type em_rrewidth from editmask within w_main
end type
type em_rreheight from editmask within w_main
end type
type st_3 from statictext within w_main
end type
type em_rrwidth from editmask within w_main
end type
type st_1 from statictext within w_main
end type
type cb_2 from commandbutton within w_main
end type
type cb_1 from commandbutton within w_main
end type
type dw_1 from uo_dwprocess within w_main
end type
type gb_1 from groupbox within w_main
end type
type gb_2 from groupbox within w_main
end type
end forward

global type w_main from window
integer width = 1440
integer height = 2364
boolean titlebar = true
string title = "Processing Marquee"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
em_speed em_speed
st_17 st_17
em_nrrect em_nrrect
st_16 st_16
cb_3 cb_3
dw_3 dw_3
dw_2 dw_2
st_dwbgcolor st_dwbgcolor
st_14 st_14
em_rrpadding em_rrpadding
st_13 st_13
ddlb_brushhatch ddlb_brushhatch
em_rrpenwidth em_rrpenwidth
ddlb_1 ddlb_1
st_rrpencolor st_rrpencolor
st_brushcolor st_brushcolor
st_rrbgcolor st_rrbgcolor
st_9 st_9
st_8 st_8
st_7 st_7
st_2 st_2
st_6 st_6
st_rrbgcolor1 st_rrbgcolor1
st_4 st_4
em_rrewidth em_rrewidth
em_rreheight em_rreheight
st_3 st_3
em_rrwidth em_rrwidth
st_1 st_1
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
gb_1 gb_1
gb_2 gb_2
end type
global w_main w_main

type variables
int ii_rrpenstyle, ii_rrbrushhatch, ii_rrpadding
end variables

on w_main.create
this.em_speed=create em_speed
this.st_17=create st_17
this.em_nrrect=create em_nrrect
this.st_16=create st_16
this.cb_3=create cb_3
this.dw_3=create dw_3
this.dw_2=create dw_2
this.st_dwbgcolor=create st_dwbgcolor
this.st_14=create st_14
this.em_rrpadding=create em_rrpadding
this.st_13=create st_13
this.ddlb_brushhatch=create ddlb_brushhatch
this.em_rrpenwidth=create em_rrpenwidth
this.ddlb_1=create ddlb_1
this.st_rrpencolor=create st_rrpencolor
this.st_brushcolor=create st_brushcolor
this.st_rrbgcolor=create st_rrbgcolor
this.st_9=create st_9
this.st_8=create st_8
this.st_7=create st_7
this.st_2=create st_2
this.st_6=create st_6
this.st_rrbgcolor1=create st_rrbgcolor1
this.st_4=create st_4
this.em_rrewidth=create em_rrewidth
this.em_rreheight=create em_rreheight
this.st_3=create st_3
this.em_rrwidth=create em_rrwidth
this.st_1=create st_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.gb_1=create gb_1
this.gb_2=create gb_2
this.Control[]={this.em_speed,&
this.st_17,&
this.em_nrrect,&
this.st_16,&
this.cb_3,&
this.dw_3,&
this.dw_2,&
this.st_dwbgcolor,&
this.st_14,&
this.em_rrpadding,&
this.st_13,&
this.ddlb_brushhatch,&
this.em_rrpenwidth,&
this.ddlb_1,&
this.st_rrpencolor,&
this.st_brushcolor,&
this.st_rrbgcolor,&
this.st_9,&
this.st_8,&
this.st_7,&
this.st_2,&
this.st_6,&
this.st_rrbgcolor1,&
this.st_4,&
this.em_rrewidth,&
this.em_rreheight,&
this.st_3,&
this.em_rrwidth,&
this.st_1,&
this.cb_2,&
this.cb_1,&
this.dw_1,&
this.gb_1,&
this.gb_2}
end on

on w_main.destroy
destroy(this.em_speed)
destroy(this.st_17)
destroy(this.em_nrrect)
destroy(this.st_16)
destroy(this.cb_3)
destroy(this.dw_3)
destroy(this.dw_2)
destroy(this.st_dwbgcolor)
destroy(this.st_14)
destroy(this.em_rrpadding)
destroy(this.st_13)
destroy(this.ddlb_brushhatch)
destroy(this.em_rrpenwidth)
destroy(this.ddlb_1)
destroy(this.st_rrpencolor)
destroy(this.st_brushcolor)
destroy(this.st_rrbgcolor)
destroy(this.st_9)
destroy(this.st_8)
destroy(this.st_7)
destroy(this.st_2)
destroy(this.st_6)
destroy(this.st_rrbgcolor1)
destroy(this.st_4)
destroy(this.em_rrewidth)
destroy(this.em_rreheight)
destroy(this.st_3)
destroy(this.em_rrwidth)
destroy(this.st_1)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
destroy(this.gb_1)
destroy(this.gb_2)
end on

type em_speed from editmask within w_main
integer x = 549
integer y = 1488
integer width = 695
integer height = 80
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "100"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "####"
boolean spin = true
double increment = 1
string minmax = "1~~99999"
end type

type st_17 from statictext within w_main
integer x = 73
integer y = 1488
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Speed:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_nrrect from editmask within w_main
integer x = 549
integer y = 1104
integer width = 695
integer height = 80
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "5"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "####"
boolean spin = true
double increment = 1
string minmax = "1~~99999"
end type

type st_16 from statictext within w_main
integer x = 73
integer y = 1104
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Number RRect:"
alignment alignment = right!
boolean focusrectangle = false
end type

type cb_3 from commandbutton within w_main
integer x = 73
integer y = 1664
integer width = 256
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Apply"
end type

event clicked;dw_1.of_setdw(st_dwbgcolor.backcolor )
dw_1.of_setrr (integer(em_rrwidth.text), integer (em_rreheight.text), integer (em_rrewidth.text), ii_rrbrushhatch, st_brushcolor.backcolor , st_rrbgcolor.backcolor , st_rrpencolor.backcolor , ii_rrpenstyle, Integer(em_rrpenwidth.text), integer (em_rrpadding.text), integer (em_nrrect.text))
dw_2.of_setdw(st_dwbgcolor.backcolor )
dw_2.of_setrr (integer(em_rrwidth.text), integer (em_rreheight.text), integer (em_rrewidth.text), ii_rrbrushhatch, st_brushcolor.backcolor , st_rrbgcolor.backcolor , st_rrpencolor.backcolor , ii_rrpenstyle, Integer(em_rrpenwidth.text), integer (em_rrpadding.text), integer (em_nrrect.text))
dw_3.of_setdw(st_dwbgcolor.backcolor )
dw_3.of_setrr (integer(em_rrwidth.text), integer (em_rreheight.text), integer (em_rrewidth.text), ii_rrbrushhatch, st_brushcolor.backcolor , st_rrbgcolor.backcolor , st_rrpencolor.backcolor , ii_rrpenstyle, Integer(em_rrpenwidth.text), integer (em_rrpadding.text), integer (em_nrrect.text))
end event

type dw_3 from uo_dwprocess within w_main
integer x = 73
integer y = 2080
integer width = 1243
integer height = 96
integer taborder = 20
boolean border = false
borderstyle borderstyle = stylebox!
end type

type dw_2 from uo_dwprocess within w_main
integer x = 73
integer y = 1952
integer width = 1243
integer height = 96
integer taborder = 20
boolean border = false
borderstyle borderstyle = stylebox!
end type

type st_dwbgcolor from statictext within w_main
integer x = 549
integer y = 1376
integer width = 695
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
alignment alignment = right!
boolean border = true
boolean focusrectangle = false
end type

event clicked;long  red, green, blue 
long custom[ ]
integer li_color

red = This.backcolor

custom[1]=0	//	Black
custom[2]=16777215	//	White
custom[3]=12632256	//	Gray
custom[4]=8421504	//	Dark Grey
custom[5]=255	//	Red
custom[6]=128	//	Dark Red
custom[7]=65280	//	Green
custom[8]=32768	//	Dark Green
custom[9]=16711680	//	Blue
custom[10]=8388608	//	Dark Blue
custom[11]=16711935	//	Magenta
custom[12]=8388736	//	Dark Magenta
custom[13]=16776960	//	Cyan
custom[14]=8421376	//	Dark Cyan
custom[15]=65535	//	Yellow
custom[16]=32896	//	Brown

li_color = ChooseColor( red, custom [ ] )

This.backcolor =  red
//rr_1.fillcolor =  red
end event

event constructor;this.backcolor = 15794160
end event

type st_14 from statictext within w_main
integer x = 73
integer y = 1376
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Background Color:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_rrpadding from editmask within w_main
integer x = 549
integer y = 1008
integer width = 695
integer height = 80
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "5"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "####"
boolean spin = true
double increment = 1
string minmax = "1~~99999"
end type

type st_13 from statictext within w_main
integer x = 73
integer y = 1008
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Padding:"
alignment alignment = right!
boolean focusrectangle = false
end type

type ddlb_brushhatch from dropdownlistbox within w_main
integer x = 549
integer y = 608
integer width = 695
integer height = 640
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean sorted = false
string item[] = {"Horizontal (0)","Bdiagonal (1)","Vertical (2)","Cross (3)","Fdiagonal (4)","DiagCross (5)","Solid (6)","Transparent (7)"}
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;ii_rrbrushhatch = index
end event

event constructor;this.selectitem( 1)
end event

type em_rrpenwidth from editmask within w_main
integer x = 549
integer y = 912
integer width = 695
integer height = 80
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "1"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "####"
boolean spin = true
double increment = 1
string minmax = "1~~99999"
end type

type ddlb_1 from dropdownlistbox within w_main
integer x = 549
integer y = 804
integer width = 695
integer height = 512
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean sorted = false
string item[] = {"Solid (0)","Dash (1)","Dotted (2)","Dash-dot Pattem (3)","Dash-dot-dot Pattem (4)","No Visible Line (5)"}
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;//LineStyle style[] ={ Continuous!,Dash!,DashDot!,DashDotDot!,Dot!,Transparent!}
//rr_1.linestyle =style[ index]

ii_rrpenstyle = index 
end event

event constructor;this.selectitem( 1)
end event

type st_rrpencolor from statictext within w_main
integer x = 549
integer y = 712
integer width = 695
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
alignment alignment = right!
boolean border = true
boolean focusrectangle = false
end type

event clicked;long  red, green, blue 
long custom[ ]
integer li_color

red = This.backcolor

custom[1]=0	//	Black
custom[2]=16777215	//	White
custom[3]=12632256	//	Gray
custom[4]=8421504	//	Dark Grey
custom[5]=255	//	Red
custom[6]=128	//	Dark Red
custom[7]=65280	//	Green
custom[8]=32768	//	Dark Green
custom[9]=16711680	//	Blue
custom[10]=8388608	//	Dark Blue
custom[11]=16711935	//	Magenta
custom[12]=8388736	//	Dark Magenta
custom[13]=16776960	//	Cyan
custom[14]=8421376	//	Dark Cyan
custom[15]=65535	//	Yellow
custom[16]=32896	//	Brown

li_color = ChooseColor( red, custom [ ] )

This.backcolor =  red

end event

type st_brushcolor from statictext within w_main
integer x = 549
integer y = 512
integer width = 695
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
alignment alignment = right!
boolean border = true
boolean focusrectangle = false
end type

event clicked;long  red, green, blue 
long custom[ ]
integer li_color

red = This.backcolor

custom[1]=0	//	Black
custom[2]=16777215	//	White
custom[3]=12632256	//	Gray
custom[4]=8421504	//	Dark Grey
custom[5]=255	//	Red
custom[6]=128	//	Dark Red
custom[7]=65280	//	Green
custom[8]=32768	//	Dark Green
custom[9]=16711680	//	Blue
custom[10]=8388608	//	Dark Blue
custom[11]=16711935	//	Magenta
custom[12]=8388736	//	Dark Magenta
custom[13]=16776960	//	Cyan
custom[14]=8421376	//	Dark Cyan
custom[15]=65535	//	Yellow
custom[16]=32896	//	Brown

li_color = ChooseColor( red, custom [ ] )

This.backcolor =  red

end event

event constructor;This.backcolor = 32768
end event

type st_rrbgcolor from statictext within w_main
integer x = 549
integer y = 416
integer width = 695
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
alignment alignment = right!
boolean border = true
boolean focusrectangle = false
end type

event clicked;long  red, green, blue 
long custom[ ]
integer li_color

red = This.backcolor

custom[1]=0	//	Black
custom[2]=16777215	//	White
custom[3]=12632256	//	Gray
custom[4]=8421504	//	Dark Grey
custom[5]=255	//	Red
custom[6]=128	//	Dark Red
custom[7]=65280	//	Green
custom[8]=32768	//	Dark Green
custom[9]=16711680	//	Blue
custom[10]=8388608	//	Dark Blue
custom[11]=16711935	//	Magenta
custom[12]=8388736	//	Dark Magenta
custom[13]=16776960	//	Cyan
custom[14]=8421376	//	Dark Cyan
custom[15]=65535	//	Yellow
custom[16]=32896	//	Brown

li_color = ChooseColor( red, custom [ ] )

This.backcolor =  red
//rr_1.fillcolor =  red
end event

event constructor;This.backcolor = 32768
end event

type st_9 from statictext within w_main
integer x = 73
integer y = 912
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Pen Width:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_8 from statictext within w_main
integer x = 73
integer y = 800
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Pen Style:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_7 from statictext within w_main
integer x = 73
integer y = 704
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Pen Color:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_2 from statictext within w_main
integer x = 73
integer y = 608
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Brush Hatch:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_6 from statictext within w_main
integer x = 73
integer y = 512
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Brush Color:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_rrbgcolor1 from statictext within w_main
integer x = 73
integer y = 416
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Background Color:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_4 from statictext within w_main
integer x = 73
integer y = 320
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Ellipse Width:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_rrewidth from editmask within w_main
integer x = 549
integer y = 320
integer width = 695
integer height = 80
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "50"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "####"
boolean spin = true
double increment = 10
string minmax = "1~~99999"
end type

type em_rreheight from editmask within w_main
integer x = 549
integer y = 224
integer width = 695
integer height = 80
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "20"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "####"
boolean spin = true
double increment = 10
string minmax = "1~~99999"
end type

type st_3 from statictext within w_main
integer x = 73
integer y = 224
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Ellipse Height:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_rrwidth from editmask within w_main
integer x = 549
integer y = 128
integer width = 695
integer height = 80
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "50"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "####"
boolean spin = true
double increment = 10
string minmax = "1~~99999"
end type

type st_1 from statictext within w_main
integer x = 73
integer y = 128
integer width = 462
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "RR Width:"
alignment alignment = right!
boolean focusrectangle = false
end type

type cb_2 from commandbutton within w_main
integer x = 1024
integer y = 1664
integer width = 256
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "stop"
end type

event clicked;dw_1.of_stop()
dw_2.of_stop()
dw_3.of_stop()
end event

type cb_1 from commandbutton within w_main
integer x = 768
integer y = 1664
integer width = 256
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "start"
end type

event clicked;dw_3.of_setruntype(dw_1.TypeMid )
dw_2.of_setruntype(dw_1.Typeright )
dw_1.of_setruntype(dw_1.Typeleft )
dw_1.of_start(Long(em_speed.Text))
dw_2.of_start(Long(em_speed.Text))
dw_3.of_start(Long(em_speed.Text))



end event

type dw_1 from uo_dwprocess within w_main
integer x = 73
integer y = 1824
integer width = 1243
integer height = 96
integer taborder = 10
boolean border = false
borderstyle borderstyle = stylebox!
end type

type gb_1 from groupbox within w_main
integer x = 37
integer y = 32
integer width = 1280
integer height = 1216
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "RoundRectangle"
end type

type gb_2 from groupbox within w_main
integer x = 37
integer y = 1280
integer width = 1280
integer height = 336
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Process"
end type

