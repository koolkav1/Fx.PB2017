﻿$PBExportHeader$u_action_remaininginventory.sru
forward
global type u_action_remaininginventory from u_base
end type
type cb_3 from commandbutton within u_action_remaininginventory
end type
type cb_2 from commandbutton within u_action_remaininginventory
end type
type cb_1 from commandbutton within u_action_remaininginventory
end type
end forward

global type u_action_remaininginventory from u_base
integer width = 581
integer height = 864
long backcolor = 1073741824
event newqualitybatch ( )
event print ( )
event clipboard ( )
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
end type
global u_action_remaininginventory u_action_remaininginventory

on u_action_remaininginventory.create
int iCurrent
call super::create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_3
this.Control[iCurrent+2]=this.cb_2
this.Control[iCurrent+3]=this.cb_1
end on

on u_action_remaininginventory.destroy
call super::destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
end on

type cb_3 from commandbutton within u_action_remaininginventory
integer y = 256
integer width = 581
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Clipboard"
end type

event clicked;event clipboard()

end event

type cb_2 from commandbutton within u_action_remaininginventory
integer y = 128
integer width = 581
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Print"
end type

event clicked;event print()

end event

type cb_1 from commandbutton within u_action_remaininginventory
integer width = 581
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "New Quality Batch..."
end type

event clicked;event newqualitybatch()

end event

