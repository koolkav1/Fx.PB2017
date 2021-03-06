﻿$PBExportHeader$u_tabpg_shipping_openshipperlist.sru
forward
global type u_tabpg_shipping_openshipperlist from u_tabpg_dw
end type
type cb_beginshipout from commandbutton within u_tabpg_shipping_openshipperlist
end type
type cb_print from commandbutton within u_tabpg_shipping_openshipperlist
end type
end forward

global type u_tabpg_shipping_openshipperlist from u_tabpg_dw
integer width = 2359
cb_beginshipout cb_beginshipout
cb_print cb_print
end type
global u_tabpg_shipping_openshipperlist u_tabpg_shipping_openshipperlist

type variables

private:
string ShipperNumber
n_cst_shipping_controller _myController

end variables

forward prototypes
public function integer validateselectedshippersforshipout ()
public function integer showbeginshipout ()
public function integer printselectedshippers ()
end prototypes

public function integer validateselectedshippersforshipout ();
//	TransObject
n_cst_trans_shipping Trans_Shipping
Trans_Shipping = create n_cst_trans_shipping

//	Build a list of shippers that are selected for departure.
string shipperList = ""
long row, rows
long selectedArray []
string shipperArray []

SelectedArray = dw_1.Object.IsSelected.Primary
ShipperArray = dw_1.Object.ShipperNumber.Primary
rows = UpperBound(SelectedArray)
for	row = 1 to rows
	if	SelectedArray[row] = 1 then
		if	Len(shipperList + shipperArray[row]) > 8000 then
			MessageBox(gnv_App.iapp_Object.DisplayName, "There are too many shippers selected for a combined shipout.  Select shippers to be combined on a single truck and try again.")
			return FAILURE
		end if
		shipperList += shipperArray[row] + ","
	end if
next

if	Trans_Shipping.VerifyShipperListForDeparture(shipperList) = SUCCESS then
	commit using SQLCA  ;
	destroy Trans_Shipping
	return SUCCESS
end if

destroy Trans_Shipping
Controller.Refresh()
return FAILURE

end function

public function integer showbeginshipout ();
//	Build a list of serials that need to have the new status.
string shipperList = ""
long row, rows
long selectedArray []
string shipperArray []

SelectedArray = dw_1.Object.IsSelected.Primary
ShipperArray = dw_1.Object.ShipperNumber.Primary
rows = UpperBound(SelectedArray)
for	row = 1 to rows
	if	SelectedArray[row] = 1 then
		if	Len(shipperList + shipperArray[row]) > 8000 then
			MessageBox(gnv_App.iapp_Object.DisplayName, "There are too many shippers selected for a combined shipout.  Selecting shippers to be combined on a single truck and try again.")
			return FAILURE
		end if
		shipperList += shipperArray[row] + ","
	end if
next

if	not IsValid(_myController) then return FAILURE

return _myController.ShowBeginShipout(shipperList)

end function

public function integer printselectedshippers ();
//	TransObject
n_cst_trans_shipping Trans_Shipping
Trans_Shipping = create n_cst_trans_shipping

//	Build a list of shippers that are selected for departure.
string shipperList = ""
long row, rows
long selectedArray []
string shipperArray []

SelectedArray = dw_1.Object.IsSelected.Primary
ShipperArray = dw_1.Object.ShipperNumber.Primary
rows = UpperBound(SelectedArray)
for	row = 1 to rows
	if	SelectedArray[row] = 1 then
		if	Len(shipperList + shipperArray[row]) > 8000 then
			MessageBox(gnv_App.iapp_Object.DisplayName, "There are too many shippers selected for a combined printing.  Select fewer shippers to be printed and try again.")
			return FAILURE
		end if
		shipperList += shipperArray[row] + ","
	end if
next

if	Trans_Shipping.VerifyShipperListForPrinting(shipperList) = SUCCESS then
	commit using SQLCA  ;
	destroy Trans_Shipping
	return _myController.PrintPackingSlips(shipperList)
end if

destroy Trans_Shipping
Controller.Refresh()
return FAILURE

end function

on u_tabpg_shipping_openshipperlist.create
int iCurrent
call super::create
this.cb_beginshipout=create cb_beginshipout
this.cb_print=create cb_print
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_beginshipout
this.Control[iCurrent+2]=this.cb_print
end on

on u_tabpg_shipping_openshipperlist.destroy
call super::destroy
destroy(this.cb_beginshipout)
destroy(this.cb_print)
end on

event constructor;call super::constructor;
inv_Resize.of_SetOrigSize(cb_beginshipout.X + (cb_beginshipout.X - gb_1.X - gb_1.Width) + cb_beginshipout.Width, gb_1.Y * 2 + gb_1.Height)
inv_Resize.of_Register(cb_beginshipout, 100, 0, 0, 0)
inv_Resize.of_Register(cb_print, 100, 0, 0, 0)

//	Get the controller for this control's window.
w_master myParentWindow
of_GetParentWindow(myParentWindow)
if	not IsValid(myParentWindow) or IsNull(myParentWindow) then return

_myController = myParentWindow.Container.of_GetItem("Controller")

end event

type gb_1 from u_tabpg_dw`gb_1 within u_tabpg_shipping_openshipperlist
string text = "Open Shippers"
end type

type dw_1 from u_tabpg_dw`dw_1 within u_tabpg_shipping_openshipperlist
string dataobject = "d_shipping_openshipperlist"
end type

event dw_1::constructor;call super::constructor;
of_SetTransObject(SQLCA)

end event

event dw_1::activerowchanged;call super::activerowchanged;
if	not IsValid(_myController) then return

if	activeRow <= 0 or activeRow > RowCount() then
	ShipperNumber = ""
	_myController.SetShipperNumber(ShipperNumber, false)
	cb_beginshipout.Enabled = false
	return
end if
boolean requiresRelabel
ShipperNumber = Object.ShipperNumber[activeRow]
requiresRelabel = (Object.RequiresRelabel[activeRow] = 1)
cb_beginshipout.Enabled = not requiresRelabel
_myController.SetShipperNumber(ShipperNumber, requiresRelabel)

end event

event dw_1::pfc_retrieve;call super::pfc_retrieve;
return Retrieve()

end event

event dw_1::updateend;call super::updateend;
//	Commit changes.
commit using sqlca  ;

end event

type cb_beginshipout from commandbutton within u_tabpg_shipping_openshipperlist
integer x = 1806
integer y = 16
integer width = 443
integer height = 112
integer taborder = 30
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Begin Ship Out..."
end type

event clicked;
//	Validate selected shippers are ready to ship.
if	ValidateSelectedShippersForShipout() <> SUCCESS then return

//	Show dialog to begin shipout.
if	ShowBeginShipout() <> SUCCESS then return

end event

type cb_print from commandbutton within u_tabpg_shipping_openshipperlist
integer x = 1806
integer y = 144
integer width = 443
integer height = 112
integer taborder = 40
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Print..."
end type

event clicked;
//	Print selected shippers.
PrintSelectedShippers()

end event

