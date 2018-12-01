﻿$PBExportHeader$u_tabpg_whassembly_replenishmentdefs.sru
forward
global type u_tabpg_whassembly_replenishmentdefs from u_tabpg_dw
end type
type cbx_showall from checkbox within u_tabpg_whassembly_replenishmentdefs
end type
type cb_save from commandbutton within u_tabpg_whassembly_replenishmentdefs
end type
end forward

global type u_tabpg_whassembly_replenishmentdefs from u_tabpg_dw
integer width = 2336
cbx_showall cbx_showall
cb_save cb_save
end type
global u_tabpg_whassembly_replenishmentdefs u_tabpg_whassembly_replenishmentdefs

type variables

Private:
n_whassembly_kanbanracks_controller _myController

string _wireHarnessPartCode

end variables

forward prototypes
public function integer setwireharnesspart (string partcode)
end prototypes

public function integer setwireharnesspart (string partcode);
_wireHarnessPartCode = partCode
return Refresh()

end function

on u_tabpg_whassembly_replenishmentdefs.create
int iCurrent
call super::create
this.cbx_showall=create cbx_showall
this.cb_save=create cb_save
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cbx_showall
this.Control[iCurrent+2]=this.cb_save
end on

on u_tabpg_whassembly_replenishmentdefs.destroy
call super::destroy
destroy(this.cbx_showall)
destroy(this.cb_save)
end on

event constructor;call super::constructor;
inv_Resize.of_SetOrigSize(cb_save.X + (cb_save.X - gb_1.X - gb_1.Width) + cb_save.Width, gb_1.Y + gb_1.Height)
inv_Resize.of_Register(cb_save, 100, 0, 0, 0)
inv_Resize.of_Register(cbx_showall, 100, 0, 0, 0)

//	Get the controller for this control's window.
w_master myParentWindow
of_GetParentWindow(myParentWindow)
if	not IsValid(myParentWindow) or IsNull(myParentWindow) then return

_myController = myParentWindow.Container.of_GetItem("Controller")

end event

type gb_1 from u_tabpg_dw`gb_1 within u_tabpg_whassembly_replenishmentdefs
string text = "Aisle Definitions"
end type

type dw_1 from u_tabpg_dw`dw_1 within u_tabpg_whassembly_replenishmentdefs
string dataobject = "d_custom_mes_assemblyreplenishmentdefs"
end type

event dw_1::constructor;call super::constructor;
of_SetTransObject(SQLCA)

end event

event dw_1::pfc_retrieve;call super::pfc_retrieve;
//datawindowchild dddw
//
//if	GetChild("Status", dddw) = SUCCESS then
//	dddw.SetTransObject(SQLCA)
//	if	dddw.Retrieve("custom.WireHarnesses") <= 0 then
//		dddw.InsertRow(0)
//	end if
//end if

if	cbx_showall.Checked then
	string nullString
	SetNull(nullString)
	return Retrieve(nullString)
end if

return Retrieve(_wireHarnessPartCode)

end event

type cbx_showall from checkbox within u_tabpg_whassembly_replenishmentdefs
integer x = 1381
integer width = 352
integer height = 80
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "&Show All"
boolean lefttext = true
end type

event clicked;
post Refresh()

end event

type cb_save from commandbutton within u_tabpg_whassembly_replenishmentdefs
integer x = 1810
integer y = 12
integer width = 471
integer height = 112
integer taborder = 80
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Save"
end type

event clicked;
if	not IsValid(_myController) then return FAILURE

dw_1.AcceptText()
return _myController.SaveReplenishmentDefinitions()

end event

