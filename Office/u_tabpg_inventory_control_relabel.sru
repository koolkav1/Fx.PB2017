HA$PBExportHeader$u_tabpg_inventory_control_relabel.sru
forward
global type u_tabpg_inventory_control_relabel from u_tabpg_dw
end type
type dw_2 from u_fxdw within u_tabpg_inventory_control_relabel
end type
type gb_2 from groupbox within u_tabpg_inventory_control_relabel
end type
end forward

global type u_tabpg_inventory_control_relabel from u_tabpg_dw
integer width = 4402
dw_2 dw_2
gb_2 gb_2
end type
global u_tabpg_inventory_control_relabel u_tabpg_inventory_control_relabel

type variables

Private:
//	Controller reference.
n_inventory_control_controller _myController

string _operator, _labelFormat
int _batchFlag
long _relabelSerialList[]

end variables

forward prototypes
public function integer setoperator (string operator)
public function integer setrelabelobjectlist (long seriallist[])
public function integer refresh ()
public function integer donewithrelabel ()
public function integer dorelabel ()
end prototypes

public function integer setoperator (string operator);
_operator = operator
return Refresh()

end function

public function integer setrelabelobjectlist (long seriallist[]);
_relabelSerialList = serialList
return Refresh()

end function

public function integer refresh ();
dw_2.of_Refresh(Refreshing) ; Refreshing = false
dw_2.event pfc_retrieve()

return super::refresh()

end function

public function integer donewithrelabel ();
if	not Isvalid(_myController) then return FAILURE

_operator = ""
_batchFlag = 0
_labelFormat = ""

long emptyList[]
_relabelSerialList = emptyList

return _myController.EndInventoryCommand()

end function

public function integer dorelabel ();
if	dw_2.GetRow()<=0 or dw_2.GetRow() > dw_2.RowCount() then return FAILURE
if	not Isvalid(_myController) then return FAILURE

//string batchSerials
//batchSerials = dw_2.Object.RelabelSerial[dw_2.GetRow()]

_myController.Relabel(_relabelSerialList, _labelFormat)

Refresh()

if	dw_1.RowCount() = 0 then
	return DoneWithRelabel()
end if

return SUCCESS

end function

on u_tabpg_inventory_control_relabel.create
int iCurrent
call super::create
this.dw_2=create dw_2
this.gb_2=create gb_2
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.dw_2
this.Control[iCurrent+2]=this.gb_2
end on

on u_tabpg_inventory_control_relabel.destroy
call super::destroy
destroy(this.dw_2)
destroy(this.gb_2)
end on

event constructor;call super::constructor;
of_SetResize(false)
of_SetResize(true)
inv_Resize.of_SetOrigSize(gb_2.X + gb_2.Width, gb_2.Y + gb_2.Height)
inv_Resize.of_Register(gb_1, 0, 0, 100, 100)
inv_Resize.of_Register(dw_1, 0, 0, 100, 100)
inv_Resize.of_Register(gb_2, 100, 0, 0, 100)
inv_Resize.of_Register(dw_2, 100, 0, 0, 100)

//	Get the controller for this control's window.
w_master myParentWindow
of_GetParentWindow(myParentWindow)
if	not IsValid(myParentWindow) or IsNull(myParentWindow) then return

_myController = myParentWindow.Container.of_GetItem("Controller")

end event

type gb_1 from u_tabpg_dw`gb_1 within u_tabpg_inventory_control_relabel
integer taborder = 0
string text = "Relabel Object List"
end type

type dw_1 from u_tabpg_dw`dw_1 within u_tabpg_inventory_control_relabel
string dataobject = "d_inventorycontrol_relabelobjectlist"
boolean showpowerfilter = false
end type

event dw_1::constructor;call super::constructor;
of_SetTransObject (SQLCA)

end event

event dw_1::pfc_retrieve;call super::pfc_retrieve;
return Retrieve(_relabelSerialList)

end event

type dw_2 from u_fxdw within u_tabpg_inventory_control_relabel
integer x = 1824
integer y = 80
integer width = 2290
integer height = 996
integer taborder = 20
boolean bringtotop = true
string dataobject = "d_usp_inventorycontrol_relabelrequest"
boolean vscrollbar = false
end type

event pfc_retrieve;call super::pfc_retrieve;
string relabelSerialList
int i, count
count = UpperBound(_relabelSerialList)
for	i = 1 to count
	relabelSerialList += string(_relabelSerialList[i]) + ","
next

if	Retrieve(_operator, _batchFlag, _labelFormat, relabelSerialList) > 0 then
	_batchFlag = Object.BatchFlag[1]
	_labelFormat = Object.LabeLFormat[1]
end if

return RowCount()

end event

event constructor;call super::constructor;
of_SetTransObject (SQLCA)

end event

event itemchanged;call super::itemchanged;
choose case lower(dwo.Name)
	case lower("BatchFlag")
		_batchFlag = long(data)
	case lower("LabelFormat")
		_labelFormat = data
end choose

parent.Refresh()

end event

event clicked;call super::clicked;
choose case lower(dwo.Name)
	case lower("p_ok")
		DoRelabel()
	case lower("p_cancel")
		DoneWithRelabel()
end choose

end event

type gb_2 from groupbox within u_tabpg_inventory_control_relabel
integer x = 1815
integer width = 2309
integer height = 1084
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "Relabel"
end type

