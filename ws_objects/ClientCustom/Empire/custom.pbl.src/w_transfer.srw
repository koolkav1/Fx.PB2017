﻿$PBExportHeader$w_transfer.srw
$PBExportComments$mit
forward
global type w_transfer from Window
end type
type cb_49 from commandbutton within w_transfer
end type
type cb_45 from commandbutton within w_transfer
end type
type ddlb_finishedpart from dropdownlistbox within w_transfer
end type
type gb_1 from groupbox within w_transfer
end type
type em_1 from editmask within w_transfer
end type
type st_2 from statictext within w_transfer
end type
type sle_location_to from singlelineedit within w_transfer
end type
type dw_misc from datawindow within w_transfer
end type
type dw_limit_locs from datawindow within w_transfer
end type
type lb_1 from listbox within w_transfer
end type
type sle_status from statictext within w_transfer
end type
type st_1 from statictext within w_transfer
end type
type cb_57 from commandbutton within w_transfer
end type
type lb_unit_list from listbox within w_transfer
end type
type dw_unit_list from datawindow within w_transfer
end type
type cb_55 from commandbutton within w_transfer
end type
type cb_48 from commandbutton within w_transfer
end type
type dw_object from datawindow within w_transfer
end type
type rb_2 from radiobutton within w_transfer
end type
type rb_1 from radiobutton within w_transfer
end type
type sle_operator from singlelineedit within w_transfer
end type
type sle_serial from singlelineedit within w_transfer
end type
type cb_47 from commandbutton within w_transfer
end type
type cb_46 from commandbutton within w_transfer
end type
type cb_44 from commandbutton within w_transfer
end type
type cb_42 from commandbutton within w_transfer
end type
type dw_1 from datawindow within w_transfer
end type
type cb_41 from commandbutton within w_transfer
end type
type cb_43 from commandbutton within w_transfer
end type
type cb_40 from commandbutton within w_transfer
end type
type cb_39 from commandbutton within w_transfer
end type
type cb_38 from commandbutton within w_transfer
end type
type cb_37 from commandbutton within w_transfer
end type
type cb_36 from commandbutton within w_transfer
end type
type cb_35 from commandbutton within w_transfer
end type
type cb_34 from commandbutton within w_transfer
end type
type cb_33 from commandbutton within w_transfer
end type
type cb_32 from commandbutton within w_transfer
end type
type cb_31 from commandbutton within w_transfer
end type
type cb_30 from commandbutton within w_transfer
end type
type cb_29 from commandbutton within w_transfer
end type
type cb_28 from commandbutton within w_transfer
end type
type cb_27 from commandbutton within w_transfer
end type
type cb_26 from commandbutton within w_transfer
end type
type cb_25 from commandbutton within w_transfer
end type
type cb_24 from commandbutton within w_transfer
end type
type cb_23 from commandbutton within w_transfer
end type
type cb_22 from commandbutton within w_transfer
end type
type cb_21 from commandbutton within w_transfer
end type
type cb_20 from commandbutton within w_transfer
end type
type cb_19 from commandbutton within w_transfer
end type
type cb_18 from commandbutton within w_transfer
end type
type cb_17 from commandbutton within w_transfer
end type
type cb_16 from commandbutton within w_transfer
end type
type cb_15 from commandbutton within w_transfer
end type
type cb_14 from commandbutton within w_transfer
end type
type cb_13 from commandbutton within w_transfer
end type
type cb_12 from commandbutton within w_transfer
end type
type cb_11 from commandbutton within w_transfer
end type
type cb_10 from commandbutton within w_transfer
end type
type cb_9 from commandbutton within w_transfer
end type
type cb_8 from commandbutton within w_transfer
end type
type cb_7 from commandbutton within w_transfer
end type
type cb_6 from commandbutton within w_transfer
end type
type cb_5 from commandbutton within w_transfer
end type
type cb_4 from commandbutton within w_transfer
end type
type cb_3 from commandbutton within w_transfer
end type
type cb_2 from commandbutton within w_transfer
end type
type cb_1 from commandbutton within w_transfer
end type
type lb_2 from listbox within w_transfer
end type
type sle_title from statictext within w_transfer
end type
type gb_dwbox from groupbox within w_transfer
end type
type gb_serial_number from groupbox within w_transfer
end type
type gb_operator from groupbox within w_transfer
end type
type gb_location_to from groupbox within w_transfer
end type
type cb_50 from commandbutton within w_transfer
end type
type lb_list from u_it_list_box within w_transfer
end type
type mle_notes from multilineedit within w_transfer
end type
end forward

global type w_transfer from Window
int X=0
int Y=0
int Width=2967
int Height=3500
boolean TitleBar=true
string Title="Transfer"
long BackColor=77897888
boolean ControlMenu=true
boolean MinBox=true
boolean MaxBox=true
boolean Resizable=true
WindowState WindowState=maximized!
WindowType WindowType=popup!
string Icon="mit.ico"
event ue_return_value ( string a_s_return_value )
event ue_close_audit_trail ( )
cb_49 cb_49
cb_45 cb_45
ddlb_finishedpart ddlb_finishedpart
gb_1 gb_1
em_1 em_1
st_2 st_2
sle_location_to sle_location_to
dw_misc dw_misc
dw_limit_locs dw_limit_locs
lb_1 lb_1
sle_status sle_status
st_1 st_1
cb_57 cb_57
lb_unit_list lb_unit_list
dw_unit_list dw_unit_list
cb_55 cb_55
cb_48 cb_48
dw_object dw_object
rb_2 rb_2
rb_1 rb_1
sle_operator sle_operator
sle_serial sle_serial
cb_47 cb_47
cb_46 cb_46
cb_44 cb_44
cb_42 cb_42
dw_1 dw_1
cb_41 cb_41
cb_43 cb_43
cb_40 cb_40
cb_39 cb_39
cb_38 cb_38
cb_37 cb_37
cb_36 cb_36
cb_35 cb_35
cb_34 cb_34
cb_33 cb_33
cb_32 cb_32
cb_31 cb_31
cb_30 cb_30
cb_29 cb_29
cb_28 cb_28
cb_27 cb_27
cb_26 cb_26
cb_25 cb_25
cb_24 cb_24
cb_23 cb_23
cb_22 cb_22
cb_21 cb_21
cb_20 cb_20
cb_19 cb_19
cb_18 cb_18
cb_17 cb_17
cb_16 cb_16
cb_15 cb_15
cb_14 cb_14
cb_13 cb_13
cb_12 cb_12
cb_11 cb_11
cb_10 cb_10
cb_9 cb_9
cb_8 cb_8
cb_7 cb_7
cb_6 cb_6
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
lb_2 lb_2
sle_title sle_title
gb_dwbox gb_dwbox
gb_serial_number gb_serial_number
gb_operator gb_operator
gb_location_to gb_location_to
cb_50 cb_50
lb_list lb_list
mle_notes mle_notes
end type
global w_transfer w_transfer

type prototypes
FUNCTION boolean SndPlaySoundA(string wavfile, uint flag) LIBRARY "WINMM.DLL"
FUNCTION uint WaveOutGetNumDevs() LIBRARY "WINMM.DLL"
end prototypes

type variables
string			is_field
boolean			ib_forward,&
			ib_back,&
			ib_enter
graphicobject		igo_last
st_generic_structure 	stParm
Int 			iThisInstance
Int 			iddlbIndex
Int			iHandle
Boolean			bAuditTrail
Boolean			bNoKey
Boolean			bUserNotes
Boolean			bUserOperator
Boolean 			bOperator
Boolean 			bLocationTo
Boolean 			bLocationFrom
Boolean 			bSerialNumber
Boolean 			bUnits
Boolean 			bMachines
Boolean 			bPackaging
Boolean 			bLot
Boolean 			bQty
Boolean 			bNumberOf
Boolean 			bParts
Boolean 			bWriteParent
Boolean 			bZeroParent
Boolean 			bSuper
Boolean 			bNoCheck
Boolean 			bChars, bNumbers
Boolean 			bLoseFocus
Boolean 			bDelete
Boolean 			bEnabled
Boolean 			bLabelNeeded
Boolean 			bCurrentObject
Boolean 			bNewObject
Boolean 			bPopulateParts
Boolean 			bPopulateLocations
Boolean 			bPopulateMachines
Boolean 			bPartsLoseFocus
Boolean 			bExit
Boolean 			bMessageBox
Boolean 			bMandatoryLot
Boolean 			bRequired
Boolean 			bClicked
Boolean 			bModified
Boolean 			bBreakoutMore
Boolean 			bDifferentPart
Boolean 			bInvalidCombineSerial
Boolean 			bStagedObject
Boolean 			bCombineSameSerial
Boolean 			bCombineDifferentStatus
Boolean 			bIssueMoreQuantity
Boolean 			bDifferentStatus
Boolean 			bStatusSame
Boolean 			bInvalidSuperObject
Boolean 			bExternalMessage
Boolean 			bOpen
Boolean 			bNoClickCheck
Boolean 			bButton
Boolean 			bBack
Boolean 			bCombineSerial
Boolean 			bCB48
Boolean 			bMessage
Boolean 			bSetToThis
Boolean 			bTab
Boolean 			bAction
Boolean 			bQCNotes
Boolean 			bMandatoryQCNotes
Boolean			bJCNumberOfMode
Boolean			bJCLotMode
Boolean			bJCQtyMode
Boolean			bJCUnitMode
Boolean			bMIUnitMode
Boolean			bBONumberOfMode
Boolean			bBOUnitMode 
Boolean			bDeleteScrap
Boolean			bSetBack
Boolean			bLabel, &
			ib_Scale, &
			ib_PopupScaleInterface, &
			ib_ScaleOpen, &
			ib_Auto, &
			ib_Password, &
			ib_Notes
String 			szOperator
String 			szTo
String 			szLocation
String 			szNewLoc
String 			szRemarks
String 			cType
String 			cObjectType
String 			szMessage
String 			szPart
String 			szLot
String 			szStatus
String 			szPoNumber
String 			szUnit
String 			cStatus
String 			szWorkOrder
String 			szTextCheck
String 			szField
String 			szSelectedText
String 			szRealityText
String 			cCharacterTouched
String 			cIssueType, &
			is_Notes,&
			is_UserStatus
DateTime 		dtToday
DateTime 		dDateTime
Date 			dToday
Time 			tTime
Dec 			dQuantity
Dec 			dWeight
Dec 			dPrice
Dec 			dOnHand, &
			idec_ScaleWeight
Long	 		lParent
Long 			lSerial
Long 			lLoop
Long 			lRow
Long 			lColumn
Long 			lSerialParm
Long			il_AuditRow
DataWindow 		dwObject
LONG			il_palletserial
long	il_counter=0
end variables

forward prototypes
public subroutine disable_chars ()
public subroutine enable_chars ()
public subroutine enable_numbers ()
public subroutine wf_key_pressed (string ccharacter)
public subroutine wf_setup_screen ()
public subroutine wf_transfer_update_object ()
public subroutine wf_transfer_update_objects ()
public subroutine wf_enable_screen ()
public subroutine wf_disable_screen ()
public subroutine wf_show_transfer_help ()
public subroutine wf_hide_transfer_help ()
public subroutine wf_reset_colors ()
public subroutine wf_change_color_focus ()
public function string wf_get_character ()
public function boolean wf_valid_key ()
public subroutine wf_show_message ()
public subroutine wf_hide_message ()
public function boolean wf_update_onhand (long ll_serial, string ls_mode)
public subroutine wf_disable_except_buttons ()
public subroutine wf_enable_except_buttons ()
public function integer wf_print_pallet_label (long al_serial)
public function string wf_location_of_super_object (long alserial)
public subroutine wf_getfp ()
end prototypes

event ue_return_value;lb_list.Hide ( )
ib_Forward = TRUE
Choose Case is_field
	Case "location"
		sle_location_to.Text = a_s_return_value
		sle_location_to.TriggerEvent ( "ue_validate" )
End Choose
end event

event ue_close_audit_trail;CloseUserObject ( u_audit_trail )
wf_enable_screen ( )
Choose case is_field
	case "operator"
		sle_operator.SetFocus ( )
	case "serial"
		sle_serial.SetFocus ( )
	case "location"
		sle_location_to.SetFocus ( )
end choose
end event

public subroutine disable_chars ();bChars = False
cb_1.Enabled = False
cb_2.Enabled = False
cb_3.Enabled = False
cb_4.Enabled = False
cb_5.Enabled = False
cb_6.Enabled = False
cb_7.Enabled = False
cb_8.Enabled = False
cb_9.Enabled = False
cb_10.Enabled = False
cb_11.Enabled = False
cb_12.Enabled = False
cb_13.Enabled = False
cb_14.Enabled = False
cb_15.Enabled = False
cb_16.Enabled = False
cb_17.Enabled = False
cb_18.Enabled = False
cb_19.Enabled = False
cb_20.Enabled = False
cb_21.Enabled = False
cb_22.Enabled = False
cb_23.Enabled = False
cb_24.Enabled = False
cb_31.Enabled = False
cb_32.Enabled = False
cb_40.Enabled = False
cb_41.Enabled = False
If is_field = "serial" Then cb_43.Enabled = False
cb_55.Enabled = False


end subroutine

public subroutine enable_chars ();bChars = True

cb_1.Enabled = True
cb_2.Enabled = True
cb_3.Enabled = True
cb_4.Enabled = True
cb_5.Enabled = True
cb_6.Enabled = True
cb_7.Enabled = True
cb_8.Enabled = True
cb_9.Enabled = True
cb_10.Enabled = True
cb_11.Enabled = True
cb_12.Enabled = True
cb_13.Enabled = True
cb_14.Enabled = True
cb_15.Enabled = True
cb_16.Enabled = True
cb_17.Enabled = True
cb_18.Enabled = True
cb_19.Enabled = True
cb_20.Enabled = True
cb_21.Enabled = True
cb_22.Enabled = True
cb_23.Enabled = True
cb_24.Enabled = True
cb_31.Enabled = True
cb_32.Enabled = True
cb_40.Enabled = True
cb_41.Enabled = True
cb_43.Enabled = True
cb_55.Enabled = True

end subroutine

public subroutine enable_numbers ();bNumbers = True
cb_25.Enabled = True
cb_26.Enabled = True
cb_27.Enabled = True
cb_28.Enabled = True
cb_29.Enabled = True
cb_33.Enabled = True
cb_34.Enabled = True
cb_35.Enabled = True
cb_36.Enabled = True
cb_39.Enabled = True

end subroutine

public subroutine wf_key_pressed (string ccharacter);String szSerial
String szPreviousText
String	s_Temp

wf_hide_message ( )

/*  Initialize Variables  */


IF ib_Notes THEN
	u_generic_it_note.mle_note.Text = u_generic_it_note.mle_note.Text + cCharacter
ELSEIF ib_Password THEN
	u_audit_trail.sle_operator_password.Text = u_audit_trail.sle_operator_password.Text + cCharacter
ELSE
	Choose Case is_Field
		Case "operator"
			sle_operator.Text = sle_operator.Text + cCharacter
			sle_operator.SetFocus ( )
		Case "location"
			sle_location_to.Text = sle_location_to.Text + cCharacter
			szPreviousText = sle_location_to.Text
			sle_location_to.SetFocus ( )
			lb_list.uf_find_item ( sle_location_to.Text )
		Case "serial"
			sle_serial.Text = sle_serial.Text + cCharacter
			sle_serial.SetFocus ( )
	End Choose
END IF
end subroutine

public subroutine wf_setup_screen ();/*  Declare Variables  */

String 	szNull
String	cPopLocations
Int		iTabSeq

SetNull ( szNull )


SELECT populate_locations
  INTO :cPopLocations
  FROM parameters  ;

If cPopLocations = 'Y' Then bPopulateLocations = True


/*  Main  */

if isvalid ( stparm ) then &
	sle_serial.Text = stParm.Value2

sle_operator.SetFocus ( )


end subroutine

public subroutine wf_transfer_update_object ();//	Declare variables
Int	iRtnCode
Int	iLoop

String	szVendor
String	szShipper
String	szCost
String	szPlant
string	ls_notes
string	ls_custom2

Dec	dCost

//	Grab all of the part info
lRow = dw_object.GetRow ( )
If lRow < 1 Then Return

lSerial = f_get_value ( Long ( f_serial_validate(sle_serial.Text )))
szPart = f_get_string_value ( dw_object.GetItemString ( 1, "Part" ) )
szLot = f_get_string_value ( dw_object.GetItemString ( 1, "Lot" ) )
szStatus = f_get_string_value ( dw_object.GetItemString ( 1, "Status" ) )
dQuantity = f_get_value ( dw_object.GetItemNumber ( 1, "Quantity" ) )
dWeight = f_get_value ( dw_object.GetItemNumber ( 1, "weight" ) )
dPrice = f_get_value ( dw_object.GetItemNumber ( 1, "cost" ) )
szPoNumber = f_get_String_value ( dw_object.GetItemString ( 1, "po_number" ) )
szUnit = f_get_string_value ( dw_object.GetItemString ( 1, "unit_measure" ) )
szLocation = f_get_string_value ( dw_object.GetItemString ( 1, "location" ) )
ls_notes = mle_notes.text
ls_custom2 = ddlb_finishedpart.text

If rb_1.Checked = True Then
	szNewLoc = f_get_string_value ( sle_location_to.Text ) 
Else
	szNewLoc = wf_location_of_super_object ( Long ( sle_location_to.Text ) )
End if

dToday = Today ( )
tTime = now ( )
dDateTime = DateTime ( Today ( ), Now ( ) )
	
SELECT location.plant  
  INTO :szPlant  
  FROM location  
 WHERE location.code = :szNewLoc   ;

SELECT audit_trail.vendor,   
       audit_trail.shipper
  INTO :szVendor,   
       :szShipper
  FROM audit_trail  
 WHERE ( audit_trail.serial = :lSerial ) AND  
       ( audit_trail.type = 'R' )   ;

//	Update Object File

If bWriteParent Then

	dw_object.SetItem ( lRow, "parent_serial", lParent )

Elseif bZeroParent Then

	dw_object.SetItem ( lRow, "parent_serial", 0 )

End if

dw_object.SetItem ( lRow, "last_date", dToday )
dw_object.SetItem ( lRow, "last_time", tTime )
dw_object.SetItem ( lRow, "location", szNewLoc )
dw_object.SetItem ( lRow, "plant", szPlant )
dw_object.SetItem ( lRow, "operator", szOperator )
dw_object.SetItem ( lRow, "note", ls_notes )
dw_object.SetItem ( lRow, "custom2", ls_custom2 )

iRtnCode = dw_object.Update ( )

If iRtnCode <> 1 Then

	ROLLBACK ;
	f_beep ( 5 )
	sle_serial.Text = ""

Else 

	//	Create audit trail

	SELECT	part_online.on_hand  
	INTO	:dOnHand  
	FROM	part_online  
	WHERE	part_online.part = :szPart   ;
	
	dOnHand = f_get_value ( dOnHand )

	If Not f_create_audit_trail ( lSerial, "T", szLocation, szNewLoc, szVendor, szShipper, szPlant, "", "", "", "", "" ) Then

		f_beep ( 5 )
		sle_serial.Text = ""
		Return

	Else
		COMMIT ;
		f_beep ( 1 )
		wf_show_message ( )
		sle_serial.Text = ""
		Return

	End if

End if

end subroutine

public subroutine wf_transfer_update_objects ();//	Declare variables

Int	iRtnCode
Int	iLoop

String	ls_location
String	szVendor
String	szShipper
String	szCost
String	szPlant

long	ll_rowcount
Dec	dCost

ll_rowcount = dw_misc.RowCount ( )

if ll_rowcount > 0 then 
	ls_location = sle_location_to.text

	update	object
	set	location = :ls_location
	where	serial = :lserial;
	
	If sqlca.sqlcode > 0 Then
		ROLLBACK ;
	else	
		commit;
	end if 	
	
	//	Grab all of the part info
	For lRow = 1 to ll_rowcount
	
		lSerial = f_get_value ( dw_misc.GetItemNumber ( lRow, "serial" ) )
		szPart = f_get_string_value ( dw_misc.GetItemString ( lRow, "Part" ) )
		szLot = f_get_string_value ( dw_misc.GetItemString ( lRow, "Lot" ) )
		szStatus = f_get_string_value ( dw_misc.GetItemString ( lRow, "Status" ) )
		dQuantity = f_get_value ( dw_misc.GetItemNumber ( lRow, "Quantity" ) )
		dWeight = f_get_value ( dw_misc.GetItemNumber ( lRow, "weight" ) )
		dPrice = f_get_value ( dw_misc.GetItemNumber ( lRow, "cost" ) )
		szPoNumber = f_get_String_value ( dw_misc.GetItemString ( lRow, "po_number" ) )
		szUnit = f_get_string_value ( dw_misc.GetItemString ( lRow, "unit_measure" ) )
		szLocation = f_get_string_value ( dw_misc.GetItemString ( lRow, "location" ) )
		szNewLoc   = f_get_string_value ( sle_location_to.Text )
	
		dToday = Today ( )
		tTime = now ( )
		dDateTime = DateTime ( Today ( ), Now ( ) )
	
		SELECT location.plant  
		  INTO :szPlant  
		  FROM location  
		 WHERE location.code = :szNewLoc   ;
	
		//	Update Object File
		If bWriteParent Then
			dw_misc.SetItem ( lRow, "parent_serial", lParent )
		Elseif bZeroParent Then
			dw_misc.SetItem ( lRow, "parent_serial", 0 )
		End if
	
		dw_misc.SetItem ( lRow, "plant", szPlant )
		dw_misc.SetItem ( lRow, "location", szNewLoc )
		dw_misc.SetItem ( lRow, "last_date", dToday )
		dw_misc.SetItem ( lRow, "last_time", tTime )
		dw_misc.SetItem ( lRow, "operator", szOperator )
		iRtnCode = dw_misc.Update ( )
	
		If iRtnCode <> 1 Then
	
			ROLLBACK ;
			f_beep ( 5 )
			sle_serial.Text = ""
		
		Else 
			//	Create audit trail
	
			SELECT audit_trail.vendor,   
			       audit_trail.shipper
			  INTO :szVendor,   
			       :szShipper
			  FROM audit_trail  
			 WHERE ( audit_trail.serial = :lSerial ) AND  
			       ( audit_trail.type = 'R' )   ;
		
			szCost = f_get_string_value ( String ( dCost ) )
	
			If Not f_create_audit_trail ( lSerial, "T", szLocation, szNewLoc, szVendor, szShipper, szPlant, "", "", "", "", "" ) Then
	
				f_beep ( 5 )
				sle_serial.Text = ""
				Return
		
			Else
		
				COMMIT ;
				f_beep ( 1 )
				wf_show_message ( )
				sle_serial.Text = ""
		
			End if
		
		End if
		
	Next	
else
	ls_location = sle_location_to.text

	update	object
	set	location = :ls_location
	where	serial = :lserial;
	
	If sqlca.sqlcode < 0 Then
		ROLLBACK ;
	else	
		commit;
		update	object
		set	location = :ls_location
		where	parent_serial = :lserial;
	
		if sqlca.sqlcode > 0 then 
			commit ;
		else
			rollback ;
		end if 	
	end if 	
end if 	
end subroutine

public subroutine wf_enable_screen ();cb_1.Enabled = True
cb_2.Enabled = True
cb_3.Enabled = True
cb_4.Enabled = True
cb_5.Enabled = True
cb_6.Enabled = True
cb_7.Enabled = True
cb_8.Enabled = True
cb_9.Enabled = True
cb_10.Enabled = True
cb_11.Enabled = True
cb_12.Enabled = True
cb_13.Enabled = True
cb_14.Enabled = True
cb_15.Enabled = True
cb_16.Enabled = True
cb_17.Enabled = True
cb_18.Enabled = True
cb_19.Enabled = True
cb_20.Enabled = True
cb_21.Enabled = True
cb_22.Enabled = True
cb_23.Enabled = True
cb_24.Enabled = True
cb_31.Enabled = True
cb_32.Enabled = True
cb_40.Enabled = True
cb_41.Enabled = True
cb_25.Enabled = True
cb_26.Enabled = True
cb_27.Enabled = True
cb_28.Enabled = True
cb_29.Enabled = True
cb_33.Enabled = True
cb_34.Enabled = True
cb_35.Enabled = True
cb_36.Enabled = True
cb_39.Enabled = True
cb_42.Enabled = True
cb_44.Enabled = True
IF rb_2.Checked THEN
	cb_47.Enabled = True
	cb_46.Enabled = TRUE
END IF
cb_48.Enabled = True
cb_43.Enabled = True
cb_30.Enabled = True
cb_37.Enabled = True
cb_38.Enabled = True
cb_55.Enabled = True
cb_57.Enabled = True
sle_operator.Enabled = True
dw_misc.Enabled = True
sle_location_to.Enabled = True
sle_serial.Enabled = True
bNoKey = False
end subroutine

public subroutine wf_disable_screen ();bNoKey = True
cb_1.Enabled = False
cb_2.Enabled = False
cb_3.Enabled = False
cb_4.Enabled = False
cb_5.Enabled = False
cb_6.Enabled = False
cb_7.Enabled = False
cb_8.Enabled = False
cb_9.Enabled = False
cb_10.Enabled = False
cb_11.Enabled = False
cb_12.Enabled = False
cb_13.Enabled = False
cb_14.Enabled = False
cb_15.Enabled = False
cb_16.Enabled = False
cb_17.Enabled = False
cb_18.Enabled = False
cb_19.Enabled = False
cb_20.Enabled = False
cb_21.Enabled = False
cb_22.Enabled = False
cb_23.Enabled = False
cb_24.Enabled = False
cb_31.Enabled = False
cb_32.Enabled = False
cb_40.Enabled = False
cb_41.Enabled = False
cb_25.Enabled = False
cb_26.Enabled = False
cb_27.Enabled = False
cb_28.Enabled = False
cb_29.Enabled = False
cb_33.Enabled = False
cb_34.Enabled = False
cb_35.Enabled = False
cb_36.Enabled = False
cb_39.Enabled = False
cb_42.Enabled = False
cb_44.Enabled = False
cb_47.Enabled = False
cb_48.Enabled = False
cb_43.Enabled = False
cb_30.Enabled = False
cb_37.Enabled = False
cb_38.Enabled = False
cb_55.Enabled = False
cb_57.Enabled = False
sle_operator.Enabled = False
dw_misc.Enabled = False
sle_location_to.Enabled = False
sle_serial.Enabled = False

end subroutine

public subroutine wf_show_transfer_help ();//wf_disable_screen ( )
//
//cb_50.Show ( )
//cb_51.Show ( )
//lb_2.Show ( )
end subroutine

public subroutine wf_hide_transfer_help ();//wf_enable_screen ( )
//cb_50.Hide ( )
//cb_51.Hide ( )
//lb_2.Hide ( )
end subroutine

public subroutine wf_reset_colors ();//gb_location_to.TextColor = f_get_color_value ( "darkred" )
//rb_1.TextColor = f_get_color_value ( "darkred" )
//rb_2.TextColor = f_get_color_value ( "darkred" )
//gb_operator.TextColor = f_get_color_value ( "darkred" )
//gb_serial_number.TextColor = f_get_color_value ( "darkred" )
//
gb_location_to.TextColor = f_get_color_value ( "black" )
rb_1.TextColor = f_get_color_value ( "black" )
rb_2.TextColor = f_get_color_value ( "black" )
gb_operator.TextColor = f_get_color_value ( "black" )
gb_serial_number.TextColor = f_get_color_value ( "black" )


end subroutine

public subroutine wf_change_color_focus ();wf_reset_colors ( )
//choose case is_field
//	case "location"
//		rb_1.TextColor = f_get_color_value ( "blue" )
//		rb_2.TextColor = f_get_color_value ( "blue" )
//	case "operator"
//		gb_operator.TextColor = f_get_color_value ( "blue" )
//	case "serial"
//		gb_serial_number.TextColor = f_get_color_value ( "blue" )
//end choose
//
choose case is_field
	case "location"
		rb_1.TextColor = f_get_color_value ( "black" )
		rb_2.TextColor = f_get_color_value ( "black" )
	case "operator"
		gb_operator.TextColor = f_get_color_value ( "black" )
	case "serial"
		gb_serial_number.TextColor = f_get_color_value ( "black" )
end choose

end subroutine

public function string wf_get_character ();If KeyDown ( keyA! ) Then
	Return "A"
Elseif KeyDown ( keyB! ) Then
	Return "B"
Elseif KeyDown ( keyC! ) Then
	Return "C"
Elseif KeyDown ( keyD! ) Then
	Return "D"
Elseif KeyDown ( keyE! ) Then
	Return "E"
Elseif KeyDown ( keyF! ) Then
	Return "F"
Elseif KeyDown ( keyG! ) Then
	Return "G"
Elseif KeyDown ( keyH! ) Then
	Return "H"
Elseif KeyDown ( keyI! ) Then
	Return "I"
Elseif KeyDown ( keyJ! ) Then
	Return "J"
Elseif KeyDown ( keyK! ) Then
	Return "K"
Elseif KeyDown ( keyL! ) Then
	Return "L"
Elseif KeyDown ( keyM! ) Then
	Return "M"
Elseif KeyDown ( keyN! ) Then
	Return "N"
Elseif KeyDown ( keyO! ) Then
	Return "O"
Elseif KeyDown ( keyP! ) Then
	Return "P"
Elseif KeyDown ( keyQ! ) Then
	Return "Q"
Elseif KeyDown ( keyR! ) Then
	Return "R"
Elseif KeyDown ( keyS! ) Then
	Return "S"
Elseif KeyDown ( keyT! ) Then
	Return "T"
Elseif KeyDown ( keyU! ) Then
	Return "U"
Elseif KeyDown ( keyV! ) Then
	Return "V"
Elseif KeyDown ( keyW! ) Then
	Return "W"
Elseif KeyDown ( keyX! ) Then
	Return "X"
Elseif KeyDown ( keyY! ) Then
	Return "Y"
Elseif KeyDown ( keyZ! ) Then
	Return "Z"
Elseif KeyDown ( key0! ) Then
	Return "0"
Elseif KeyDown ( key1! ) Then
	Return "1"
Elseif KeyDown ( key2! ) Then
	Return "2"
Elseif KeyDown ( key3! ) Then
	Return "3"
Elseif KeyDown ( key4! ) Then
	Return "4"
Elseif KeyDown ( key5! ) Then
	Return "5"
Elseif KeyDown ( key6! ) Then
	Return "6"
Elseif KeyDown ( key7! ) Then
	Return "7"
Elseif KeyDown ( key8! ) Then
	Return "8"
Elseif KeyDown ( key9! ) Then
	Return "9"
Elseif KeyDown ( keyDash! ) Then
	Return "_"
Elseif KeyDown ( keyNumPad0! ) Then
	Return "0"
Elseif KeyDown ( keyNumPad1! ) Then
	Return "1"
Elseif KeyDown ( keyNumPad2! ) Then
	Return "2"
Elseif KeyDown ( keyNumPad3! ) Then
	Return "3"
Elseif KeyDown ( keyNumPad4! ) Then
	Return "4"
Elseif KeyDown ( keyNumPad5! ) Then
	Return "5"
Elseif KeyDown ( keyNumPad6! ) Then
	Return "6"
Elseif KeyDown ( keyNumPad7! ) Then
	Return "7"
Elseif KeyDown ( keyNumPad8! ) Then
	Return "8"
Elseif KeyDown ( keyNumPad9! ) Then
	Return "9"
End if

Return ""

end function

public function boolean wf_valid_key ();If KeyDown ( keyA! ) Or &
   KeyDown ( keyB! ) Or &
   KeyDown ( keyC! ) Or &
   KeyDown ( keyD! ) Or &
   KeyDown ( keyE! ) Or &
   KeyDown ( keyF! ) Or &
   KeyDown ( keyG! ) Or &
   KeyDown ( keyH! ) Or &
   KeyDown ( keyI! ) Or &
   KeyDown ( keyJ! ) Or &
   KeyDown ( keyK! ) Or &
   KeyDown ( keyL! ) Or &
   KeyDown ( keyM! ) Or &
   KeyDown ( keyN! ) Or &
   KeyDown ( keyO! ) Or &
   KeyDown ( keyP! ) Or &
   KeyDown ( keyQ! ) Or &
   KeyDown ( keyR! ) Or &
   KeyDown ( keyS! ) Or &
   KeyDown ( keyT! ) Or &
   KeyDown ( keyU! ) Or &
   KeyDown ( keyV! ) Or &
   KeyDown ( keyW! ) Or &
   KeyDown ( keyX! ) Or &
   KeyDown ( keyY! ) Or &
   KeyDown ( keyZ! ) Or &
   KeyDown ( key0! ) Or &
   KeyDown ( key1! ) Or &
   KeyDown ( key2! ) Or &
   KeyDown ( key3! ) Or &
   KeyDown ( key4! ) Or &
   KeyDown ( key5! ) Or &
   KeyDown ( key6! ) Or &
   KeyDown ( key7! ) Or &
   KeyDown ( key8! ) Or &
   KeyDown ( key9! ) Or &
   KeyDown ( keyDash! ) Or &
   KeyDown ( keyNumPad0! ) Or &
   KeyDown ( keyNumPad1! ) Or &
   KeyDown ( keyNumPad2! ) Or &
   KeyDown ( keyNumPad3! ) Or &
   KeyDown ( keyNumPad4! ) Or &
   KeyDown ( keyNumPad5! ) Or &
   KeyDown ( keyNumPad6! ) Or &
   KeyDown ( keyNumPad7! ) Or &
   KeyDown ( keyNumPad8! ) Or &
   KeyDown ( keyNumPad9! ) Then

	Return True

End if

Return False
end function

public subroutine wf_show_message ();bMessage = True
Timer ( .25, This )
end subroutine

public subroutine wf_hide_message ();sle_status.Hide ( )
Timer ( 0 )
bMessage = False
end subroutine

public function boolean wf_update_onhand (long ll_serial, string ls_mode);String	ls_Part
Dec		ld_Std_qty

  SELECT object.part,   
         object.std_quantity
    INTO :ls_Part,   
         :ld_Std_qty  
    FROM object  
   WHERE object.serial = :ll_Serial   ;

f_update_onhand ( ls_Part, ld_Std_qty, ls_mode + "*" )

Return True
end function

public subroutine wf_disable_except_buttons ();cb_42.Enabled = False
cb_44.Enabled = False
cb_46.Enabled = False
cb_47.Enabled = False
cb_48.Enabled = False
cb_38.Enabled = False
sle_operator.Enabled = False
dw_misc.Enabled = False
sle_location_to.Enabled = False
sle_serial.Enabled = False

end subroutine

public subroutine wf_enable_except_buttons ();cb_42.Enabled = TRUE
cb_44.Enabled = TRUE
IF rb_2.Checked THEN
	cb_46.Enabled = TRUE
	cb_47.Enabled = TRUE
END IF
cb_48.Enabled = TRUE
cb_38.Enabled = TRUE
sle_operator.Enabled = TRUE
dw_misc.Enabled = TRUE
sle_location_to.Enabled = TRUE
sle_serial.Enabled = TRUE

end subroutine

public function integer wf_print_pallet_label (long al_serial);st_generic_structure	lstr_parm

lstr_Parm.Value1  = sle_location_to.text
lstr_parm.value11 = "Label" 
lstr_parm.value12 = "PALLET" 

OpenWithParm ( w_report_view, lstr_parm )

return 1
end function

public function string wf_location_of_super_object (long alserial);String ls_location

//DECLARE get_location_of_super_object CURSOR FOR  
//SELECT	object.location  
//FROM	object  
//WHERE	object.parent_serial = :alSerial   ;
//
//Open get_location_of_super_object ;
//
//Fetch get_location_of_super_object into :ls_location ;
//
//Close get_location_of_super_object ;
//
//ls_location = f_get_string_value ( ls_location )
//
//Return ls_location
//

select	location
into	:ls_location
from	object
where	serial = :alSerial;

Return ls_location

end function

public subroutine wf_getfp ();string	ls_part

DECLARE Part_cur CURSOR FOR
SELECT	part
FROM	part
WHERE	type = 'F' and class <> 'O';

open	part_cur;

fetch	part_cur into :ls_part;

do while sqlca.sqlcode = 0 
	ddlb_finishedpart.additem(ls_part)
	fetch	part_cur into :ls_part;
loop
close	part_cur;

end subroutine

event disable_numbers;bNumbers = False
cb_25.Enabled = False
cb_26.Enabled = False
cb_27.Enabled = False
cb_28.Enabled = False
cb_29.Enabled = False
cb_33.Enabled = False
cb_34.Enabled = False
cb_35.Enabled = False
cb_36.Enabled = False
cb_39.Enabled = False

end event

event open;/*  Initialize Variables  */

bChars = True
bNumbers = True

stParm        = Message.PowerObjectParm

if isvalid ( stparm ) then
	lSerialParm   = Long ( stParm.Value2 )
	If stParm.Value2 = "0" Then stParm.Value2 = ""
	szWorkOrder   = stParm.Value5
end if
 
dtToday = DateTime ( Today ( ), Now ( ) )

/*  Determine type of transaction and prime the dataobject of dw_1  */

dw_unit_list.SetTransObject ( sqlca )

dw_limit_locs.SetTransObject ( sqlca )
dw_limit_locs.Retrieve ( 'T' )

wf_setup_screen ( )

wf_getfp()
end event

event timer;If bMessage Then
	If sle_status.Visible = True Then
		sle_status.Visible = False
	Else
		sle_status.Visible = True
	End if
End if

end event

on w_transfer.create
this.cb_49=create cb_49
this.cb_45=create cb_45
this.ddlb_finishedpart=create ddlb_finishedpart
this.gb_1=create gb_1
this.em_1=create em_1
this.st_2=create st_2
this.sle_location_to=create sle_location_to
this.dw_misc=create dw_misc
this.dw_limit_locs=create dw_limit_locs
this.lb_1=create lb_1
this.sle_status=create sle_status
this.st_1=create st_1
this.cb_57=create cb_57
this.lb_unit_list=create lb_unit_list
this.dw_unit_list=create dw_unit_list
this.cb_55=create cb_55
this.cb_48=create cb_48
this.dw_object=create dw_object
this.rb_2=create rb_2
this.rb_1=create rb_1
this.sle_operator=create sle_operator
this.sle_serial=create sle_serial
this.cb_47=create cb_47
this.cb_46=create cb_46
this.cb_44=create cb_44
this.cb_42=create cb_42
this.dw_1=create dw_1
this.cb_41=create cb_41
this.cb_43=create cb_43
this.cb_40=create cb_40
this.cb_39=create cb_39
this.cb_38=create cb_38
this.cb_37=create cb_37
this.cb_36=create cb_36
this.cb_35=create cb_35
this.cb_34=create cb_34
this.cb_33=create cb_33
this.cb_32=create cb_32
this.cb_31=create cb_31
this.cb_30=create cb_30
this.cb_29=create cb_29
this.cb_28=create cb_28
this.cb_27=create cb_27
this.cb_26=create cb_26
this.cb_25=create cb_25
this.cb_24=create cb_24
this.cb_23=create cb_23
this.cb_22=create cb_22
this.cb_21=create cb_21
this.cb_20=create cb_20
this.cb_19=create cb_19
this.cb_18=create cb_18
this.cb_17=create cb_17
this.cb_16=create cb_16
this.cb_15=create cb_15
this.cb_14=create cb_14
this.cb_13=create cb_13
this.cb_12=create cb_12
this.cb_11=create cb_11
this.cb_10=create cb_10
this.cb_9=create cb_9
this.cb_8=create cb_8
this.cb_7=create cb_7
this.cb_6=create cb_6
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.lb_2=create lb_2
this.sle_title=create sle_title
this.gb_dwbox=create gb_dwbox
this.gb_serial_number=create gb_serial_number
this.gb_operator=create gb_operator
this.gb_location_to=create gb_location_to
this.cb_50=create cb_50
this.lb_list=create lb_list
this.mle_notes=create mle_notes
this.Control[]={this.cb_49,&
this.cb_45,&
this.ddlb_finishedpart,&
this.gb_1,&
this.em_1,&
this.st_2,&
this.sle_location_to,&
this.dw_misc,&
this.dw_limit_locs,&
this.lb_1,&
this.sle_status,&
this.st_1,&
this.cb_57,&
this.lb_unit_list,&
this.dw_unit_list,&
this.cb_55,&
this.cb_48,&
this.dw_object,&
this.rb_2,&
this.rb_1,&
this.sle_operator,&
this.sle_serial,&
this.cb_47,&
this.cb_46,&
this.cb_44,&
this.cb_42,&
this.dw_1,&
this.cb_41,&
this.cb_43,&
this.cb_40,&
this.cb_39,&
this.cb_38,&
this.cb_37,&
this.cb_36,&
this.cb_35,&
this.cb_34,&
this.cb_33,&
this.cb_32,&
this.cb_31,&
this.cb_30,&
this.cb_29,&
this.cb_28,&
this.cb_27,&
this.cb_26,&
this.cb_25,&
this.cb_24,&
this.cb_23,&
this.cb_22,&
this.cb_21,&
this.cb_20,&
this.cb_19,&
this.cb_18,&
this.cb_17,&
this.cb_16,&
this.cb_15,&
this.cb_14,&
this.cb_13,&
this.cb_12,&
this.cb_11,&
this.cb_10,&
this.cb_9,&
this.cb_8,&
this.cb_7,&
this.cb_6,&
this.cb_5,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1,&
this.lb_2,&
this.sle_title,&
this.gb_dwbox,&
this.gb_serial_number,&
this.gb_operator,&
this.gb_location_to,&
this.cb_50,&
this.lb_list,&
this.mle_notes}
end on

on w_transfer.destroy
destroy(this.cb_49)
destroy(this.cb_45)
destroy(this.ddlb_finishedpart)
destroy(this.gb_1)
destroy(this.em_1)
destroy(this.st_2)
destroy(this.sle_location_to)
destroy(this.dw_misc)
destroy(this.dw_limit_locs)
destroy(this.lb_1)
destroy(this.sle_status)
destroy(this.st_1)
destroy(this.cb_57)
destroy(this.lb_unit_list)
destroy(this.dw_unit_list)
destroy(this.cb_55)
destroy(this.cb_48)
destroy(this.dw_object)
destroy(this.rb_2)
destroy(this.rb_1)
destroy(this.sle_operator)
destroy(this.sle_serial)
destroy(this.cb_47)
destroy(this.cb_46)
destroy(this.cb_44)
destroy(this.cb_42)
destroy(this.dw_1)
destroy(this.cb_41)
destroy(this.cb_43)
destroy(this.cb_40)
destroy(this.cb_39)
destroy(this.cb_38)
destroy(this.cb_37)
destroy(this.cb_36)
destroy(this.cb_35)
destroy(this.cb_34)
destroy(this.cb_33)
destroy(this.cb_32)
destroy(this.cb_31)
destroy(this.cb_30)
destroy(this.cb_29)
destroy(this.cb_28)
destroy(this.cb_27)
destroy(this.cb_26)
destroy(this.cb_25)
destroy(this.cb_24)
destroy(this.cb_23)
destroy(this.cb_22)
destroy(this.cb_21)
destroy(this.cb_20)
destroy(this.cb_19)
destroy(this.cb_18)
destroy(this.cb_17)
destroy(this.cb_16)
destroy(this.cb_15)
destroy(this.cb_14)
destroy(this.cb_13)
destroy(this.cb_12)
destroy(this.cb_11)
destroy(this.cb_10)
destroy(this.cb_9)
destroy(this.cb_8)
destroy(this.cb_7)
destroy(this.cb_6)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.lb_2)
destroy(this.sle_title)
destroy(this.gb_dwbox)
destroy(this.gb_serial_number)
destroy(this.gb_operator)
destroy(this.gb_location_to)
destroy(this.cb_50)
destroy(this.lb_list)
destroy(this.mle_notes)
end on

type cb_49 from commandbutton within w_transfer
int X=1207
int Y=1984
int Width=343
int Height=144
int TabOrder=50
string Text="FAIL"
int TextSize=-10
int Weight=400
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;uint lui_NumDevs, l_mode
string ls_file
l_mode = 0
ls_file = string("c:\monitor4\Fail.wav")
lui_NumDevs = WaveOutGetNumDevs()
IF lui_NumDevs > 0 THEN
SndPlaySoundA(ls_file, l_mode)
END IF
end event

type cb_45 from commandbutton within w_transfer
int X=471
int Y=1968
int Width=343
int Height=144
int TabOrder=40
string Text="BEEP 8"
int TextSize=-10
int Weight=400
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;beep (8)
end event

type ddlb_finishedpart from dropdownlistbox within w_transfer
event ue_key pbm_keyup
event ue_validate pbm_custom01
int X=1051
int Y=256
int Width=864
int Height=444
int TabOrder=30
BorderStyle BorderStyle=StyleLowered!
boolean VScrollBar=true
boolean AllowEdit=true
long TextColor=33554432
int TextSize=-16
int Weight=400
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event ue_key;boolean	l_b_shift

if KeyDown ( keyShift! ) Then l_b_shift = TRUE
if key = keyTab! or key = keyEnter! then
	if l_b_shift then
		ib_back = TRUE
		TriggerEvent ( "ue_validate" )
	else
		ib_forward = TRUE
		TriggerEvent ( "ue_validate" )
	end if
end if

end event

event ue_validate;//	Main block
If ib_forward Then
	ib_forward = FALSE

	mle_notes.SetFocus ( )

Elseif ib_back then
	
	ib_back = FALSE

	sle_serial.SetFocus ( )

End if
end event

event getfocus;igo_Last = GetFocus ( )
is_Field = "fpart"
wf_change_color_focus ( )

end event

type gb_1 from groupbox within w_transfer
int X=1024
int Y=704
int Width=1390
int Height=432
boolean Visible=false
string Text="Notes"
BorderStyle BorderStyle=StyleLowered!
long TextColor=33554432
long BackColor=77897888
int TextSize=-10
int Weight=400
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type em_1 from editmask within w_transfer
int X=594
int Y=976
int Width=247
int Height=84
Alignment Alignment=Right!
string Mask="0"
long TextColor=33554432
long BackColor=79741120
int TextSize=-12
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_2 from statictext within w_transfer
int X=366
int Y=976
int Width=247
int Height=84
boolean Enabled=false
string Text="Counter:"
boolean FocusRectangle=false
long TextColor=33554432
long BackColor=67108864
int TextSize=-10
int Weight=400
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type sle_location_to from singlelineedit within w_transfer
event ue_validate ( )
event ue_key pbm_keyup
int X=73
int Y=516
int Width=731
int Height=128
BorderStyle BorderStyle=StyleLowered!
boolean AutoHScroll=false
TextCase TextCase=Upper!
long TextColor=33554432
long BackColor=16777215
int TextSize=-16
int Weight=400
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event ue_validate;Boolean 	lb_CheckLocation
String 	ls_Temp
String	ls_LotMode
String	ls_LimitLocs

Int iRtnCode

If ib_forward Then
	ib_forward = FALSE
	If rb_2.Checked Then
		If Left ( Text, 1 ) = 'S' Then
			Text = Right ( Text, Len ( Text ) - 1 )
		Elseif Not IsNumber ( Left ( Text, 1 ) ) Then
			f_beep ( 5 )
			Text = ""
			MessageBox ( "Error", "Invalid serial number!  Please enter a valid one.", StopSign! )
			SetFocus ( )
			Return
		End if
		dw_misc.Retrieve ( Long ( Text ) )
		//sle_serial.SetFocus ( )
		il_counter = 0 
		em_1.text = string(il_counter)		
		Return
	Else
		ls_Temp = Text
		If dw_limit_locs.RowCount ( ) > 0 Then // check whether locations are limited
			SELECT	code  
			INTO	:ls_Temp  
			FROM	location,   
				location_limits  
			WHERE	( code = location_code ) and  
				( location_code = :ls_Temp ) AND  
				( trans_code = 'T' ) ;
//				and ( type = 'MC' ) ; // Commented as they should be able to transfer to a storage location
		Else
			SELECT	code  
			INTO	:ls_Temp  
			FROM	location  
			WHERE	( code = :ls_Temp ) ;
//				AND ( type = 'MC' ) ; // Commented as they should be able to transfer to a storage location
		End if
		If SQLCA.SQLCode <> 0 Then
			f_beep ( 5 )
	
			If Not bPopulateLocations Then
				iRtnCode = MessageBox ( "Error", "Invalid location! Would you like to use drop down list?", Question!, YesNo!, 1 )
				If iRtnCode = 1 Then
					bPopulateLocations = True
					if rb_1.Checked then
						if lb_list.uf_setup ( "location", "code", x, y, height, 1150, TextSize, width, '', '', lb_unit_list, dw_limit_locs ) > 0 then
							lb_list.Show ( )
						end if
					else
						if lb_list.uf_setup ( "object", "serial", x, y, height, 1150, TextSize, width, 'type', 'S', lb_unit_list, dw_limit_locs ) > 0 then
							lb_list.Show ( )
						end if
					end if
				End if
			Else
				MessageBox ( "Error", "Invalid location!  Please select a valid one from list.", StopSign! )
			End if
			Text = ""
			SetFocus ( )
			Return
		else
			il_counter = 0 
			em_1.text = string(il_counter)					
		End if
	End if 
	//sle_serial.SetFocus ( )
	ddlb_finishedpart.setfocus()
Elseif ib_back then
	ib_back = FALSE
	sle_operator.SetFocus ( )
End if
end event

event ue_key;boolean	l_b_shift

if KeyDown ( keyShift! ) Then l_b_shift = TRUE
if bPopulateLocations Then 
	if key = keyTab! or key = keyEnter! then
		if l_b_shift then
			ib_back = TRUE
			TriggerEvent ( "ue_validate" )
		else
			Text = lb_list.uf_get_current_item ( Text )
			lb_list.Hide ( )
			ib_forward = TRUE
			TriggerEvent ( "ue_validate" )
		end if
	else
		lb_list.uf_find_item ( Text )
	end if
Else
	if key = keytab! or key = keyenter! then
		if l_b_shift then
			ib_back = TRUE
			TriggerEvent ( "ue_validate" )
		else
			ib_forward = TRUE
			TriggerEvent ( "ue_validate" )
		end if
	end if
End if

end event

event getfocus;If Not bAction And bMessage Then wf_hide_message ( )
If Not bChars Then Enable_chars ( )
If Not bNumbers Then Enable_numbers ( )
igo_last = GetFocus ( )
is_Field = "location"
wf_change_color_focus ( )
lb_list.Hide ( )
If bPopulateLocations Then 
	if rb_1.Checked then
		if lb_list.uf_setup ( "location", "code", x, y, height, 1150, TextSize, width, '', '', lb_unit_list, dw_limit_locs ) > 0 then
			lb_list.Show ( )
		end if
	else
		if lb_list.uf_setup ( "object", "serial", x, y, height, 1150, TextSize, width, 'type', 'S', lb_unit_list, dw_limit_locs ) > 0 then
			lb_list.Show ( )
		end if
	end if
End if
end event

type dw_misc from datawindow within w_transfer
event clicked pbm_dwnlbuttonclk
event getfocus pbm_dwnsetfocus
event itemchanged pbm_dwnitemchange
event ue_set_focus pbm_custom01
int X=1061
int Y=256
int Width=1317
int Height=428
int TabOrder=20
boolean Visible=false
string DataObject="d_objects_within_super_object"
boolean Border=false
boolean HScrollBar=true
boolean VScrollBar=true
boolean HSplitScroll=true
end type

event getfocus;If bMessage Then wf_hide_message ( )

end event

event constructor;SetTransObject ( sqlca )
end event

type dw_limit_locs from datawindow within w_transfer
int X=1353
int Y=1984
int Width=293
int Height=224
boolean Visible=false
string DataObject="d_limit_locs"
boolean LiveScroll=true
end type

type lb_1 from listbox within w_transfer
int X=366
int Y=1984
int Width=293
int Height=224
boolean Visible=false
BorderStyle BorderStyle=StyleLowered!
boolean VScrollBar=true
long TextColor=33554432
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type sle_status from statictext within w_transfer
int X=855
int Y=12
int Width=658
int Height=112
boolean Visible=false
boolean Enabled=false
string Text="Successful"
Alignment Alignment=Center!
boolean FocusRectangle=false
long TextColor=65280
long BackColor=77897888
int TextSize=-20
int Weight=700
string FaceName="MS Sans Serif"
boolean Italic=true
boolean Underline=true
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_1 from statictext within w_transfer
int X=1737
int Y=12
int Width=1179
int Height=144
boolean Enabled=false
string Text="[Enter Button] / [Tab Key]-Next Field             [Back Button] / [<Shift>Tab]-Previous Field "
Alignment Alignment=Center!
boolean FocusRectangle=false
long TextColor=33554432
long BackColor=77897888
int TextSize=-8
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type cb_57 from commandbutton within w_transfer
int X=2194
int Y=1728
int Width=311
int Height=192
string Text="Back"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;SingleLineEdit		sle_Current
DropDownListBox	ddlb_Current
CommandButton		cb_Current

If bMessage Then wf_hide_message ( )

IF ib_Notes THEN
	u_generic_it_note.mle_note.Text = Left ( u_generic_it_note.mle_note.Text, Len ( u_generic_it_note.mle_note.Text ) - 1 )
ELSEIF ib_Password THEN
	u_audit_trail.sle_operator_password.Text = Left ( u_audit_trail.sle_operator_password.Text, Len ( u_audit_trail.sle_operator_password.Text ) - 1 )
ELSE
	ib_Forward = FALSE
	ib_Back = TRUE
	CHOOSE CASE TypeOf ( igo_Last )
		CASE DropDownListBox!
			lb_list.Hide ( )
			ddlb_Current = igo_Last
			ddlb_Current.PostEvent ( "ue_validate" )
		CASE SingleLineEdit!
			sle_Current = igo_Last
			sle_Current.PostEvent ( "ue_validate" )
		CASE CommandButton!
			cb_Current = igo_Last
			cb_Current.PostEvent ( "ue_validate" )
	END CHOOSE
END IF	

end event

type lb_unit_list from listbox within w_transfer
int X=1682
int Y=1984
int Width=293
int Height=224
boolean Visible=false
BorderStyle BorderStyle=StyleLowered!
boolean VScrollBar=true
long TextColor=33554432
int TextSize=-16
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type dw_unit_list from datawindow within w_transfer
int X=1024
int Y=1984
int Width=293
int Height=224
boolean Visible=false
string DataObject="d_unit_conversion_list_per_part"
boolean LiveScroll=true
end type

type cb_55 from commandbutton within w_transfer
int X=1573
int Y=1728
int Width=311
int Height=192
string Text="Space"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( " " )
end on

type cb_48 from commandbutton within w_transfer
event button_clicked pbm_custom01
int X=2450
int Y=480
int Width=475
int Height=160
string Text="Transfer"
int TextSize=-12
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;SetPointer ( HourGlass! )

bAction = True

wf_disable_screen ( )

//sle_serial.TriggerEvent ( modified! ) // was referencing a non existing event

cb_30.TriggerEvent ( Clicked! ) // changed it to enter key clicked event (ie cb_30/clicked!)

wf_enable_screen ( )

bAction = False

is_Notes = ""
end event

event getfocus;is_field = "cb48"
end event

type dw_object from datawindow within w_transfer
int X=695
int Y=1984
int Width=293
int Height=224
boolean Visible=false
string DataObject="d_object_data"
boolean LiveScroll=true
end type

type rb_2 from radiobutton within w_transfer
int X=439
int Y=448
int Width=462
int Height=64
string Text="Super Object"
BorderStyle BorderStyle=StyleLowered!
long TextColor=33554432
long BackColor=77897888
int TextSize=-10
int Weight=400
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;SetPointer ( HourGlass! )

rb_1.Checked = False

bPopulateLocations = True

gb_dwbox.Show ( )
dw_misc.Show ( )

cb_46.enabled = TRUE
cb_47.enabled = TRUE

sle_location_to.SetFocus ( )
end event

type rb_1 from radiobutton within w_transfer
int Y=448
int Width=439
int Height=64
string Text="Location"
BorderStyle BorderStyle=StyleLowered!
boolean Checked=true
long TextColor=33554432
long BackColor=77897888
int TextSize=-10
int Weight=400
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;SetPointer ( HourGlass! )

rb_2.Checked = False

gb_dwbox.Hide ( )
dw_misc.Hide ( )

cb_46.enabled = FALSE
cb_47.enabled = FALSE

sle_location_to.SetFocus ( )		

end event

type sle_operator from singlelineedit within w_transfer
event ue_validate ( )
event ue_key pbm_keyup
int X=73
int Y=256
int Width=731
int Height=128
BorderStyle BorderStyle=StyleLowered!
boolean AutoHScroll=false
boolean PassWord=true
int Limit=5
TextCase TextCase=Upper!
long TextColor=33554432
long BackColor=16777215
int TextSize=-16
int Weight=400
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event ue_validate;String	cNumberOfMode
String	cQtyMode
String	cUnitMode

szOperator = ""

If ib_forward Then

	ib_forward = FALSE
	
	SELECT employee.operator_code  
	  INTO :szOperator  
	  FROM employee  
	 WHERE employee.password = :Text   ;
	
	szOperator = f_get_string_value ( szOperator )
	
	If SQLCA.SQLCode = 0 Then
	
		gb_operator.Text = "Operator - " + szOperator

		sle_location_to.SetFocus ( )

	Else

		f_beep ( 5 )
		gb_operator.Text = "Operator -"
		MessageBox ( "Error", "A valid operator is required to continue!", StopSign! )
		Text = ""
		SetFocus ( )
		Return
	
	End if

Elseif ib_back then
	
	ib_back = FALSE

	SetFocus ( )
	
End if

end event

event ue_key;boolean	l_b_shift

if KeyDown ( keyShift! ) Then l_b_shift = TRUE
if key = keyTab! or key = keyEnter! then
	if l_b_shift then
		ib_back = TRUE
		TriggerEvent ( "ue_validate" )
	else
		ib_forward = TRUE
		TriggerEvent ( "ue_validate" )
	end if
end if

end event

event getfocus;If Not bAction And bMessage Then wf_hide_message ( )

If Not bChars Then Enable_chars ( )
If Not bNumbers Then Enable_numbers ( )
lb_list.Hide ( )
igo_Last = GetFocus ( )
is_Field = "operator"
wf_change_color_focus ( )

end event

type sle_serial from singlelineedit within w_transfer
event ue_validate ( )
event ue_key pbm_keyup
int X=73
int Y=768
int Width=731
int Height=124
BorderStyle BorderStyle=StyleLowered!
boolean AutoHScroll=false
long TextColor=33554432
long BackColor=16777215
int TextSize=-16
int Weight=400
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event ue_validate;//	Declare Variables

String	szOriginalUnit
String	cTempStatus
String	cNewStatus
String	szTempPackaging
String	ls_CurrentUserDefinedStatus
String	ls_DefectCode
String	ls_Part
String	ls_Machine
string	ls_label
string	ls_partclass
 
Long	lTemp
Long	lTempShipper

Int	iRtnCode
Int	iLoop

string	ls_temp
string	ls_data

st_generic_structure	lstr_parm

//	Main block
If ib_forward Then
	ib_forward = FALSE

	//	Validate serial
	lSerial = f_get_value ( Long ( f_serial_validate(Text ) ) )
	If lSerial < 1 Then 
		f_beep ( 5 )
		MessageBox ( "Error", "Invalid serial number!  Please enter a valid one.", StopSign! )
		SetFocus ( )
		Return
	End if
	
	SELECT	object.serial,
		object.shipper,
		object.status,
		isNULL(part.class, 'M')
	INTO	:lTemp,
		:lTempShipper,
		:cTempStatus,
		:ls_partclass
	FROM	object,
			part
	WHERE	object.part *= part.part and
				object.serial = :lSerial;
		
	If SQLCA.SQLCode <> 0 Then
		f_beep ( 5 )
		MessageBox ( "Error", "Invalid serial number!  Please enter a valid one.", StopSign! )
		Text = ""
		SetFocus ( )
		Return
	Elseif f_get_value ( lTempShipper ) > 0 Then
		f_beep ( 5 )
		MessageBox ( "Error", "You cannot perform this transaction on a staged object!", StopSign! )
		Text = ""
		SetFocus ( )
		Return
	End if
	
	
	If  ls_partclass =  "I"  Then
		f_beep ( 0 )
		MessageBox ( "Error", "Part Classification must be P or M to do a Transfer", StopSign! )
		Text = ""
		SetFocus ( )
		Return
	Elseif ls_partclass = "O" Then
		f_beep ( 0 )
		MessageBox ( "Error", "Part Classification must be P or M to do a Transfer", StopSign! )
		Text = ""
		SetFocus ( )
		Return
	Elseif ls_partclass = "N" Then
		f_beep ( 0 )
		MessageBox ( "Error", "Part Classification must be P or M to do a Transfer", StopSign! )
		Text = ""
		SetFocus ( )
		Return		
	End if
	
	
	//	Check for operator 
	If szOperator = "" Then
		f_beep ( 5 )
		MessageBox ( "Error", "A valid operator is required to continue!", StopSign! )
		sle_operator.SetFocus ( )
		Return
	End if
	
	


	If sle_location_to.Text = "" Then
		f_beep ( 5 )
		If rb_1.Checked Then			
			iRtnCode = MessageBox ( "Error", "Invalid location! Would you like to use drop down list?", Question!, YesNo!, 1 )
			sle_location_to.Text = ""
			If iRtnCode = 1 Then
				bPopulateLocations = True
			End if
			sle_location_to.SetFocus ( )
			Return
		Else
			MessageBox ( "Error", "Invalid super object!  Please enter a valid one.", StopSign! )
			sle_location_to.Text = ""
			sle_location_to.SetFocus ( )
			Return
		End if
	else
		if rb_1.checked then 
			ls_Temp = sle_location_to.Text
			ls_data = ''
			If dw_limit_locs.RowCount ( ) > 0 Then // check whether locations are limited
				SELECT	code  
				INTO	:ls_data
				FROM	location,   
					location_limits  
				WHERE	( code = location_code ) and  
					( location_code = :ls_Temp ) AND  
					( trans_code = 'T' );
			Else
				SELECT	code,
					label_on_transfer
				INTO	:ls_data,
					:ls_label
				FROM	location  
				WHERE	( code = :ls_Temp );
			End if
			If SQLCA.SQLCode <> 0 Then
				f_beep ( 2 )
				iRtnCode = MessageBox ( "Error", "Invalid location! Would you like to use drop down list?", Question!, YesNo!, 1 )
				sle_location_to.Text = ""
				If iRtnCode = 1 Then
					bPopulateLocations = True
				End if
				sle_location_to.SetFocus ( )
				Return
		
			End if
		end if 	
	end if 	

	dw_object.SetTransObject ( sqlca )
	dw_object.Retrieve ( lSerial )
			
	//	Figure out From and To Locations
	cObjectType = f_get_string_value ( dw_object.GetItemString ( 1, "type" ) )
	lParent = f_get_value ( dw_object.GetItemNumber ( 1, "parent_serial" ) )
			
	szNewLoc     = f_get_string_value ( sle_location_to.Text )
	bSuper       = False
	bZeroParent  = False
	bNoCheck     = False
	bWriteParent = False

	If cObjectType = "S" Then	  // Object is a super one

		// Super Object can only be transfered to a location and not another super object.
		
		If rb_2.Checked = True Then     
		
			f_beep ( 5 )
			MessageBox ( "Error", "You cannot transfer a super object to another super object!", StopSign! )
			Text = ""
			SetFocus ( )
			Return
			
		End if
		
		szLocation = wf_location_of_super_object ( lSerial )

		bSuper = True

	Else   // Just a normal object
	
		szLocation = f_get_string_value ( dw_object.GetItemString ( 1, "Location" ) )
	
		If lParent > 0 Then     //  Object is attached to a super object

			//	Object attached to a Super-object -> location
			If rb_1.Checked Then  

				szLocation = wf_location_of_super_object ( lSerial )
				szMessage = "You cannot transfer to the same location!"
				bZeroParent = True
			
			//	Object attached to a Super-object -> Super-object
			Else        //  Normal object

				szLocation = String ( lParent )
				szMessage = "You cannot transfer an object " + &
								"to the same Super Object!"
				bWriteParent = True
	  
			End if
	
		//	Object
		Else
			
			//	Object -> Location
			If rb_1.Checked Then

				szMessage = "You cannot transfer to the same location!"

			//	Object -> Super-object
			Else
				bNoCheck = True
				bWriteParent = True
			End if
					
		End if

	End if

	If Not bNoCheck Then

		If szLocation = szNewLoc Then

			f_beep ( 5 )
			MessageBox ( "Error", szMessage, StopSign! )
			Text = ''	
			SetFocus ( )
			Return

		End if

	End if

	If bSuper Then

		dw_misc.SetTransObject ( sqlca )
		dw_misc.Retrieve ( lSerial )
		wf_transfer_update_objects ( )
		il_counter ++		
		em_1.text = string(il_counter)
		SetFocus ( )

	Else

		lParent = Long ( sle_location_to.Text )
		dwObject = dw_object
		wf_transfer_update_object ( )
		il_counter ++
		em_1.text = string(il_counter)
		SetFocus ( )

	End if
	
	if isnull(ls_label,'N') = 'Y' then
		lstr_parm.value1 = String ( lSerial )
		f_print_label ( lstr_parm )
	end if

	wf_show_message ( )

	If rb_2.Checked Then &
		dw_misc.Retrieve ( lParent )	

	SetFocus ( )

Elseif ib_back then
	
	ib_back = FALSE

	mle_notes.SetFocus ( )

End if
end event

event ue_key;boolean	l_b_shift

if KeyDown ( keyShift! ) Then l_b_shift = TRUE
if key = keyTab! or key = keyEnter! then
	if l_b_shift then
		ib_back = TRUE
		TriggerEvent ( "ue_validate" )
	else
		ib_forward = TRUE
		TriggerEvent ( "ue_validate" )
	end if
end if

end event

event getfocus;If Not bAction And bMessage Then wf_hide_message ( )
If bChars Then disable_chars ( )
If Not bNumbers Then Enable_numbers ( )
lb_list.Hide ( )
igo_Last = GetFocus ( )
is_Field = "serial"
wf_change_color_focus ( )

end event

type cb_47 from commandbutton within w_transfer
int X=2450
int Y=800
int Width=475
int Height=160
boolean Enabled=false
string Text="New Pallet"
int TextSize=-12
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;Long	li_error

OpenWithParm ( w_pallet, szoperator )
il_PalletSerial = Message.DoubleParm
if il_PalletSerial < 0 then
	li_error = -1
else
	li_error = il_PalletSerial
end if

IF li_error = -1 THEN
	MessageBox ( "Error", "Unable to create a new pallet!", StopSign! )
ELSEIF li_error > 0 THEN
	sle_location_to.Text = String ( il_palletserial )
	dw_misc.Retrieve ( il_palletserial )
	sle_serial.SetFocus ( )
END IF

end event

type cb_46 from commandbutton within w_transfer
int X=2450
int Y=960
int Width=475
int Height=160
boolean Enabled=false
string Text="Pallet Label"
int TextSize=-12
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;st_generic_structure	lstr_parm

lstr_Parm.Value1  = sle_location_to.text
lstr_parm.value11 = "Label" 
lstr_parm.value12 = "PALLET" 

OpenWithParm ( w_report_view, lstr_parm )

return 1

end event

type cb_44 from commandbutton within w_transfer
int X=2450
int Y=640
int Width=475
int Height=160
string Text="Help"
int TextSize=-12
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;st_generic_structure	str_Parm
Long	lNewSerial

If bMessage Then wf_hide_message ( )

wf_show_transfer_help ( )

end event

type cb_42 from commandbutton within w_transfer
int X=2450
int Y=320
int Width=475
int Height=160
string Text="Audit Trail"
int TextSize=-12
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;str_audit_trail	str_Parm

If bMessage Then wf_hide_message ( )

SetPointer ( HourGlass! )

bAuditTrail = True

wf_disable_screen ( )

str_Parm.adt_Today = dtToday
str_Parm.as_TransactionType = "TR"
str_Parm.as_Machine = ''

OpenUserObjectWithParm ( u_audit_trail, str_Parm, 55, 150 )
u_audit_trail.BringToTop = TRUE

end event

type dw_1 from datawindow within w_transfer
int X=37
int Y=1984
int Width=293
int Height=224
boolean Visible=false
boolean LiveScroll=true
end type

type cb_41 from commandbutton within w_transfer
int X=1317
int Y=1728
int Width=256
int Height=192
string Text="_"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "_" )
end on

type cb_43 from commandbutton within w_transfer
int X=293
int Y=1728
int Width=256
int Height=192
string Text="."
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "." )
end on

type cb_40 from commandbutton within w_transfer
int X=549
int Y=1728
int Width=256
int Height=192
string Text="-"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "-" )
end on

type cb_39 from commandbutton within w_transfer
int X=37
int Y=1728
int Width=256
int Height=192
string Text="0"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "0" )
end on

type cb_38 from commandbutton within w_transfer
int X=2450
int Y=160
int Width=475
int Height=160
string Text="Exit"
int TextSize=-12
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;IF is_Transaction > '' THEN
	IF MessageBox ( "Exit", "Are you sure you want to exit?", Question!, YesNo!, 2 ) = 1 THEN
		Halt
	END IF
ELSE
	Close ( Parent )
END IF

end event

on getfocus;//bExit = True
end on

type cb_37 from commandbutton within w_transfer
int X=1883
int Y=1728
int Width=311
int Height=192
string Text="Clear"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;If bMessage Then wf_hide_message ( )

IF ib_Password THEN
	u_audit_trail.sle_operator_password.Text = ""
ELSEIF ib_Notes THEN
	u_generic_it_note.mle_note.Text = ""
ELSE
	CHOOSE CASE is_Field
		CASE "location"
			sle_location_to.Text = ""
			sle_location_to.SetFocus ( )
		CASE "operator"
			sle_operator.Text = ""
			sle_operator.SetFocus ( )
		CASE "serial"
			sle_serial.Text = ""
			sle_serial.SetFocus ( )
	END CHOOSE
END IF 
end event

type cb_36 from commandbutton within w_transfer
int X=549
int Y=1152
int Width=256
int Height=192
string Text="9"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "9" )
end on

type cb_35 from commandbutton within w_transfer
int X=293
int Y=1152
int Width=256
int Height=192
string Text="8"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "8" )
end on

type cb_34 from commandbutton within w_transfer
int X=37
int Y=1152
int Width=256
int Height=192
string Text="7"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "7" )
end on

type cb_33 from commandbutton within w_transfer
int X=549
int Y=1344
int Width=256
int Height=192
string Text="6"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "6" )
end on

type cb_32 from commandbutton within w_transfer
int X=805
int Y=1728
int Width=256
int Height=192
string Text="Y"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "Y" )
end on

type cb_31 from commandbutton within w_transfer
int X=1061
int Y=1728
int Width=256
int Height=192
string Text="Z"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "Z" )
end on

type cb_30 from commandbutton within w_transfer
int X=2505
int Y=1728
int Width=347
int Height=192
string Text="Enter"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;DropDownListBox	ddlb_Current
SingleLineEdit		sle_Current
CommandButton		cb_Current

If bMessage Then wf_hide_message ( )

ib_Back = FALSE
ib_Forward = TRUE

CHOOSE CASE TypeOf ( igo_Last )
	CASE DropDownListBox!
		ib_enter = TRUE
		ddlb_Current = igo_Last
		ddlb_Current.PostEvent ( "ue_validate" )
	CASE SingleLineEdit!
		sle_Current = igo_Last
		sle_Current.PostEvent ( "ue_validate" )
		if lb_list.Visible then
			sle_current.Text = lb_list.uf_get_current_item ( sle_current.Text )
			lb_list.Hide ( )
		end if
	CASE CommandButton!
		cb_48.TriggerEvent ( clicked! )
END CHOOSE

end event

type cb_29 from commandbutton within w_transfer
int X=37
int Y=1536
int Width=256
int Height=192
string Text="1"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "1" )
end on

type cb_28 from commandbutton within w_transfer
int X=293
int Y=1536
int Width=256
int Height=192
string Text="2"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "2" )
end on

type cb_27 from commandbutton within w_transfer
int X=549
int Y=1536
int Width=256
int Height=192
string Text="3"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "3" )
end on

type cb_26 from commandbutton within w_transfer
int X=37
int Y=1344
int Width=256
int Height=192
string Text="4"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "4" )
end on

type cb_25 from commandbutton within w_transfer
int X=293
int Y=1344
int Width=256
int Height=192
string Text="5"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "5" )
end on

type cb_24 from commandbutton within w_transfer
int X=805
int Y=1536
int Width=256
int Height=192
string Text="Q"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "Q" )
end on

type cb_23 from commandbutton within w_transfer
int X=1061
int Y=1536
int Width=256
int Height=192
string Text="R"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "R" )
end on

type cb_22 from commandbutton within w_transfer
int X=1317
int Y=1536
int Width=256
int Height=192
string Text="S"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "S" )
end on

type cb_21 from commandbutton within w_transfer
int X=1573
int Y=1536
int Width=256
int Height=192
string Text="T"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "T" )
end on

type cb_20 from commandbutton within w_transfer
int X=1829
int Y=1536
int Width=256
int Height=192
string Text="U"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "U" )
end on

type cb_19 from commandbutton within w_transfer
int X=2085
int Y=1536
int Width=256
int Height=192
string Text="V"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "V" )
end on

type cb_18 from commandbutton within w_transfer
int X=2341
int Y=1536
int Width=256
int Height=192
string Text="W"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "W" )
end on

type cb_17 from commandbutton within w_transfer
int X=2597
int Y=1536
int Width=256
int Height=192
string Text="X"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "X" )
end on

type cb_16 from commandbutton within w_transfer
int X=805
int Y=1344
int Width=256
int Height=192
string Text="I"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "I" )
end on

type cb_15 from commandbutton within w_transfer
int X=1061
int Y=1344
int Width=256
int Height=192
string Text="J"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "J" )
end on

type cb_14 from commandbutton within w_transfer
int X=1317
int Y=1344
int Width=256
int Height=192
string Text="K"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "K" )
end on

type cb_13 from commandbutton within w_transfer
int X=1573
int Y=1344
int Width=256
int Height=192
string Text="L"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "L" )
end on

type cb_12 from commandbutton within w_transfer
int X=1829
int Y=1344
int Width=256
int Height=192
string Text="M"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "M" )
end on

type cb_11 from commandbutton within w_transfer
int X=2085
int Y=1344
int Width=256
int Height=192
string Text="N"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "N" )
end on

type cb_10 from commandbutton within w_transfer
int X=2341
int Y=1344
int Width=256
int Height=192
string Text="O"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "O" )
end on

type cb_9 from commandbutton within w_transfer
int X=2597
int Y=1344
int Width=256
int Height=192
string Text="P"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "P" )
end on

type cb_8 from commandbutton within w_transfer
int X=2597
int Y=1152
int Width=256
int Height=192
string Text="H"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "H" )
end on

type cb_7 from commandbutton within w_transfer
int X=2341
int Y=1152
int Width=256
int Height=192
string Text="G"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "G" )
end on

type cb_6 from commandbutton within w_transfer
int X=2085
int Y=1152
int Width=256
int Height=192
string Text="F"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "F" )
end on

type cb_5 from commandbutton within w_transfer
int X=1829
int Y=1152
int Width=256
int Height=192
string Text="E"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "E" )
end on

type cb_4 from commandbutton within w_transfer
int X=1573
int Y=1152
int Width=256
int Height=192
string Text="D"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "D" )
end on

type cb_3 from commandbutton within w_transfer
int X=1317
int Y=1152
int Width=256
int Height=192
string Text="C"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "C" )
end on

type cb_2 from commandbutton within w_transfer
int X=1061
int Y=1152
int Width=256
int Height=192
string Text="B"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "B" )
end on

type cb_1 from commandbutton within w_transfer
int X=805
int Y=1152
int Width=256
int Height=192
string Text="A"
int TextSize=-14
int Weight=700
string FaceName="MS Sans Serif"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;wf_key_pressed ( "A" )
end on

type lb_2 from listbox within w_transfer
int X=110
int Y=2656
int Width=1829
int Height=1312
boolean Visible=false
boolean VScrollBar=true
boolean Sorted=false
long TextColor=33554432
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
string Item[]={"Help on functionality of Transfer",&
"===========================================",&
"1.  Input operator password.",&
"2.  See appropriate description below.",&
"3.  Input serial number to transfer.",&
"-----------------------------------------------------------------------------------",&
"Object -> Location",&
"  Choose location button and location.",&
"-----------------------------------------------------------------------------------",&
"Object -> Super Object",&
"  Choose super object button and serial number.",&
"-----------------------------------------------------------------------------------",&
"Object Attatched to Super Object -> Another Super Object",&
"  Choose super object button and serial number.",&
"-----------------------------------------------------------------------------------",&
"Object Attatched to Super Object -> Location",&
"  Choose location button and location.",&
"-----------------------------------------------------------------------------------",&
"Super Object -> Location",&
"  Choose location button and location."}
end type

type sle_title from statictext within w_transfer
int Width=2926
int Height=160
boolean Enabled=false
boolean Border=true
BorderStyle BorderStyle=StyleLowered!
string Text="Transfer"
boolean FocusRectangle=false
long TextColor=33554432
long BackColor=77897888
int TextSize=-20
int Weight=700
string FaceName="MS Sans Serif"
boolean Italic=true
boolean Underline=true
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type gb_dwbox from groupbox within w_transfer
int X=1024
int Y=192
int Width=1390
int Height=504
int TabOrder=10
boolean Visible=false
BorderStyle BorderStyle=StyleLowered!
long TextColor=33554432
long BackColor=77897888
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type gb_serial_number from groupbox within w_transfer
int X=37
int Y=704
int Width=805
int Height=224
string Text="Serial Number"
BorderStyle BorderStyle=StyleLowered!
long TextColor=33554432
long BackColor=77897888
int TextSize=-10
int Weight=400
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type gb_operator from groupbox within w_transfer
int X=37
int Y=192
int Width=805
int Height=224
string Text="Operator - "
BorderStyle BorderStyle=StyleLowered!
long TextColor=33554432
long BackColor=77897888
int TextSize=-10
int Weight=400
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type gb_location_to from groupbox within w_transfer
int X=37
int Y=448
int Width=805
int Height=224
BorderStyle BorderStyle=StyleLowered!
long TextColor=128
long BackColor=77897888
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type cb_50 from commandbutton within w_transfer
int X=73
int Y=2624
int Width=1902
int Height=1536
boolean Visible=false
boolean Enabled=false
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type lb_list from u_it_list_box within w_transfer
int X=1390
int Y=1120
int TabOrder=0
boolean Visible=false
end type

type mle_notes from multilineedit within w_transfer
event ue_validate pbm_custom01
event ue_key pbm_keyup
int X=1056
int Y=516
int Width=1335
int Height=344
boolean BringToTop=true
BorderStyle BorderStyle=StyleLowered!
long TextColor=33554432
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event ue_validate;//	Main block
If ib_forward Then
	ib_forward = FALSE

	sle_serial.SetFocus ( )

Elseif ib_back then
	
	ib_back = FALSE

	ddlb_finishedpart.SetFocus ( )

End if
end event

event ue_key;boolean	l_b_shift

if KeyDown ( keyShift! ) Then l_b_shift = TRUE
if key = keyTab! or key = keyEnter! then
	if l_b_shift then
		ib_back = TRUE
		TriggerEvent ( "ue_validate" )
	else
		ib_forward = TRUE
		TriggerEvent ( "ue_validate" )
	end if
end if

end event

