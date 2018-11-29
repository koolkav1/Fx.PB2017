﻿$PBExportHeader$u_tabpg_dictionarytableupdatekey.sru
forward
global type u_tabpg_dictionarytableupdatekey from u_tabpg_dw
end type
type cb_1 from commandbutton within u_tabpg_dictionarytableupdatekey
end type
end forward

global type u_tabpg_dictionarytableupdatekey from u_tabpg_dw
string text = "Table Update Key"
cb_1 cb_1
end type
global u_tabpg_dictionarytableupdatekey u_tabpg_dictionarytableupdatekey

type variables

end variables

on u_tabpg_dictionarytableupdatekey.create
int iCurrent
call super::create
this.cb_1=create cb_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_1
end on

on u_tabpg_dictionarytableupdatekey.destroy
call super::destroy
destroy(this.cb_1)
end on

type gb_1 from u_tabpg_dw`gb_1 within u_tabpg_dictionarytableupdatekey
end type

type dw_1 from u_tabpg_dw`dw_1 within u_tabpg_dictionarytableupdatekey
boolean autogeneratedw = true
boolean rowindicator = true
string tablealias = "FT"
string tablename = "DictionaryTableUpdateKey"
string columngrouplist = "All"
end type

event dw_1::pfc_retrieve;call super::pfc_retrieve;
this.Retrieve()
return this.RowCount()

end event

event dw_1::constructor;call super::constructor;
//	Retrieve datawindow.
dw_1.SetTransObject(SQLCA)
dw_1.post event pfc_Retrieve()
dw_1.of_SetUpdateable(true)

end event

type cb_1 from commandbutton within u_tabpg_dictionarytableupdatekey
integer width = 343
integer height = 92
integer taborder = 30
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "none"
end type

event clicked;
//	Generate datawindow.
dw_1.GenerateDW()

//	Retrieve new datawindow.
dw_1.SetTransObject(SQLCA)
dw_1.post event pfc_Retrieve()

end event

