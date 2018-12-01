﻿$PBExportHeader$u_tabpg_backflush_batchprocess.sru
forward
global type u_tabpg_backflush_batchprocess from u_tabpg_dw
end type
type cb_1 from commandbutton within u_tabpg_backflush_batchprocess
end type
type cb_2 from commandbutton within u_tabpg_backflush_batchprocess
end type
end forward

global type u_tabpg_backflush_batchprocess from u_tabpg_dw
integer width = 2309
cb_1 cb_1
cb_2 cb_2
end type
global u_tabpg_backflush_batchprocess u_tabpg_backflush_batchprocess

type variables

Private:

//	Controller reference.
n_backflush_controller _myController

end variables

forward prototypes
public function integer backflush ()
public function integer override ()
end prototypes

public function integer backflush ();
if	not IsValid(_myController) then return FAILURE

dw_1.Reset()
SetPointer(HourGlass!)
_myController.Backflush()
SetPointer(Arrow!)

return SUCCESS

end function

public function integer override ();
if	not IsValid(_myController) then return FAILURE

dw_1.Reset()
SetPointer(HourGlass!)
_myController.BackflushWithOverride()
SetPointer(Arrow!)

return SUCCESS

end function

on u_tabpg_backflush_batchprocess.create
int iCurrent
call super::create
this.cb_1=create cb_1
this.cb_2=create cb_2
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_1
this.Control[iCurrent+2]=this.cb_2
end on

on u_tabpg_backflush_batchprocess.destroy
call super::destroy
destroy(this.cb_1)
destroy(this.cb_2)
end on

event constructor;call super::constructor;
inv_Resize.of_SetOrigSize(cb_1.X + (cb_1.X - gb_1.X - gb_1.Width) + cb_1.Width, gb_1.Y * 2 + gb_1.Height)
inv_Resize.of_Register(cb_1, 100, 0, 0, 0)
inv_Resize.of_Register(cb_2, 100, 0, 0, 0)

//	Get the controller for this control's window.
w_master myParentWindow
of_GetParentWindow(myParentWindow)
if	not IsValid(myParentWindow) or IsNull(myParentWindow) then return

_myController = myParentWindow.Container.of_GetItem("Controller")

end event

type gb_1 from u_tabpg_dw`gb_1 within u_tabpg_backflush_batchprocess
end type

type dw_1 from u_tabpg_dw`dw_1 within u_tabpg_backflush_batchprocess
string dataobject = "d_custom_backflush_batchprocess_shortage"
end type

event dw_1::constructor;call super::constructor;
of_SetTransObject (SQLCA)

end event

event dw_1::pfc_retrieve;call super::pfc_retrieve;
return Retrieve()

end event

type cb_1 from commandbutton within u_tabpg_backflush_batchprocess
integer x = 1806
integer y = 8
integer width = 407
integer height = 112
integer taborder = 40
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Backflush"
end type

event clicked;Backflush()

end event

type cb_2 from commandbutton within u_tabpg_backflush_batchprocess
integer x = 1806
integer y = 136
integer width = 407
integer height = 112
integer taborder = 50
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Override"
end type

event clicked;Override()

end event

