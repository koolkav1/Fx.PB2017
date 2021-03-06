﻿$PBExportHeader$n_cst_dwsrv_linkdwsearch.sru
forward
global type n_cst_dwsrv_linkdwsearch from n_cst_dwsrv
end type
type os_columns from structure within n_cst_dwsrv_linkdwsearch
end type
end forward

type os_columns from structure
	string		s_columnname
	string		s_editstyle
	dwobject		dwo_object
	datawindow		dw_object
end type

global type n_cst_dwsrv_linkdwsearch from n_cst_dwsrv
event pfc_editchanged ( ref long al_row,  ref dwobject adwo_obj,  ref string as_data )
event pfc_itemfocuschanged ( long al_row,  ref dwobject adwo_object )
event pfc_getfocus ( )
end type
global n_cst_dwsrv_linkdwsearch n_cst_dwsrv_linkdwsearch

type variables
Protected:
integer                 	ii_currentindex
boolean		ib_performsearch=False
string		is_textprev

Private:
os_columns	istr_columns[]

end variables

forward prototypes
public function integer of_removecolumn (string as_column)
public function integer of_getcolumn (ref string as_columns[])
protected function integer of_searchitem (string as_column)
protected function integer of_DeleteItem (integer ai_index)
public function integer of_getregistered (ref string as_columns[])
public function boolean of_isregistered (string as_column)
public function integer of_unregister (string as_column)
public function integer of_unregister ()
public function integer of_getregisterable (ref string as_allcolumns[])
public function integer of_getinfo (ref n_cst_infoattrib anv_infoattrib)
public function integer of_getpropertyinfo (ref n_cst_propertyattrib anv_attrib)
public function integer of_register (string as_column, dwobject adwo_searchin, ref datawindow adw_linked)
end prototypes

event pfc_editchanged;//////////////////////////////////////////////////////////////////////////////
//
//	Event:  		pfc_editchanged
//
//	Arguments:
//	al_row:  	row number
//	adwo_obj:  	DataWindow object passed by reference
//	as_data:  	The current data on the column.  (The search text)
//
//	Returns:   none
//
//	Description:	This event should be mapped to the editchanged
//			   		event of a DataWindow. When is event is "fired", it will use
//						instance variables (set in the pfc_itemfocuschanged) to access
//						items in the instance structure.
//						The instance structure contains information about the dddw and 
//						ddlb columns this service uses.
//
//////////////////////////////////////////////////////////////////////////////
//	
//	Revision History
//
//	Version
//	5.0   Initial version
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////
integer		li_searchtextlen
long			ll_findrow
string		ls_dddw_displaycol
string		ls_foundtext
string		ls_findexp
string		ls_searchcolname
long			ll_dddw_rowcount
long			li_LinkedRow=0
string		ls_displaydata_value
string		ls_searchtext
boolean		lb_matchfound=False

// Check requirements.
if ii_currentindex <= 0 or ii_currentindex > Upperbound ( istr_columns ) then return
If IsNull(adwo_obj) or Not IsValid(adwo_obj) or not isvalid (istr_columns[ii_currentindex].dw_object ) Then Return
if not istr_columns[ii_currentindex].dw_object.RowCount () > 0 then return

// Confirm that the search capabilities are valid for this column.
if ib_performsearch=False or ii_currentindex <= 0 THEN return

// Get information on the column and text.
ls_searchcolname = adwo_obj.Name
ls_searchtext = as_data
li_searchtextlen = Len (ls_searchtext)

// If the user performed a delete operation, do not perform the search.
// If the text entered is the same as the last search, do not perform another search.
If (li_searchtextlen < Len(is_textprev)) or &
	(Lower (ls_searchtext) = Lower (is_textprev)) Then
	// Store the previous text information.
	is_textprev = ''
	Return 
End If

// Store the previous text information.
is_textprev = ls_searchtext

any	la_Data []
la_Data = istr_columns[ii_currentindex].dwo_object.data.primary
Do
	li_LinkedRow	++
	if li_LinkedRow > UpperBound ( la_data ) then exit
	
	ls_displaydata_value = String ( la_Data [li_LinkedRow] )

	// Determine if a match has been found on the ddlb.
	lb_matchfound = ( Lower(ls_searchtext) = Lower( Left(ls_displaydata_value, Len(ls_searchtext))) )
Loop Until lb_matchfound

// Check if a match was found on the ddlb.
If lb_matchfound Then
	// Get the text found by discarding the data value (just keep the display value).
	ls_foundtext = ls_displaydata_value		
End If

// For either dddw or ddlb, check if a match was found.
If lb_matchfound Then
	// Set the text.
	idw_requestor.SetText (ls_foundtext)

	// Determine what to highlight or where to move the cursor..
	if li_searchtextlen = len(ls_foundtext) THEN
		// Move the cursor to the end
		idw_requestor.SelectText (Len (ls_foundtext)+1, 0)
	else
		// Hightlight the portion the user has not actually typed.
		idw_requestor.SelectText (li_searchtextlen + 1, Len (ls_foundtext))
	end if
	
	//	If a dw is linked, scroll to found row and set this row as current.
	if isvalid ( istr_columns[ii_currentindex].dw_object ) then
		istr_columns[ii_currentindex].dw_object.ScrollToRow ( li_LinkedRow )
		istr_columns[ii_currentindex].dw_object.SetRow ( li_LinkedRow )
	end if
end if


end event

event pfc_itemfocuschanged;//////////////////////////////////////////////////////////////////////////////
//
//	Event:  		pfc_itemfocuschanged
//
//	Arguments:
//	al_row:  	row number
//	adwo_obj:  	DataWindow object passed by reference
//	
//
//	Returns:   	none
//
//	Description:	This event is fired from the itemfocuschanged event. 
//						It will set an index based on the loacation of the current
//						column in the array.  Also, it will make sure the column is
//						of type dddw or ddlb and set a flag to indicate so.
//
//////////////////////////////////////////////////////////////////////////////
//	
//	Revision History
//
//	Version
//	5.0   Initial version
// 6.0	Added argument validation.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////

string 	ls_dwcolname
int	li_index

// Initialize values.
ib_performsearch = False
ii_currentindex = 0
is_textprev = ''

// Validate arguments.
If IsNull(adwo_object) or Not IsValid(adwo_object) Then Return
If IsNull(al_row) or al_row <= 0 Then Return

// Get column name.
ls_dwcolname = adwo_object.Name

// Check if column is in the search column array.
li_index = of_SearchItem(ls_dwcolname)
If li_index <= 0 Then Return

//////////////////////////////////////////////////////////////////////////////
// The current column is on the array.
//////////////////////////////////////////////////////////////////////////////

// Store the variable that says OK to perform search.
ib_performsearch = True

// Store the current index.
ii_currentindex = li_index

// Store the previous text information.
is_textprev = idw_requestor.GetText()



end event

event pfc_getfocus();
string 	ls_dwcolname
int	li_index

// Initialize values.
ib_performsearch = False
ii_currentindex = 0
is_textprev = ''

// Validate arguments.
long row
row = idw_requestor.GetRow()
int column
column = idw_requestor.GetColumn()
If IsNull(column) or column <= 0 Then Return
If IsNull(row) or row <= 0 Then Return

// Get column name.
ls_dwcolname = idw_requestor.GetColumnName()

// Check if column is in the search column array.
li_index = of_SearchItem(ls_dwcolname)
If li_index <= 0 Then Return

//////////////////////////////////////////////////////////////////////////////
// The current column is on the array.
//////////////////////////////////////////////////////////////////////////////

// Store the variable that says OK to perform search.
ib_performsearch = True

// Store the current index.
ii_currentindex = li_index

// Store the previous text information.
is_textprev = idw_requestor.GetText()



end event

public function integer of_removecolumn (string as_column);//////////////////////////////////////////////////////////////////////////////
//
//	Function:		of_RemoveColumn
//
//	Access:  		public
//
//	Arguments:  	
//	as_column 		Column to remove from the service.
//
//	Returns:  		Integer
//						 1 succesful operation.
//						 0 if column not found.
//						-1 if an error is encountered.
//
//	Description:  	This function is called to remove a column from the list the
//						services uses.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	5.0   Initial version
// 6.0 	Marked obsolete Replaced by of_UnRegister(...).
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////

// Marked obsolete Replaced by of_UnRegister(...).
Return of_UnRegister(as_column)

end function

public function integer of_getcolumn (ref string as_columns[]);//////////////////////////////////////////////////////////////////////////////
//
//	Function: 		of_GetColumn
//
//	Access:  		public
//
//	Arguments:
//	as_columns[]	Columns names for which the service is providing dropdown 
//						search capabilities. (by reference)
//
//
//	Returns:  		integer
//						The number of entries in the returned array.
//
//	Description:  	This function returns the column names for which the service 
//						is providing dropdown search capabilities.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	5.0   Initial version
// 6.0 	Marked obsolete Replaced by of_GetRegistered(...).
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////

// 6.0 	Marked obsolete Replaced by of_GetRegistered(...).
Return of_GetRegistered(as_columns)
end function

protected function integer of_searchitem (string as_column);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  		of_SearchItem
//
//	Access:  		protected
//
//	Arguments:
//	as_column		column to search for
//
//	Returns:  		integer
//						Index of array where column was found.
//						0 if not found
//						-1 if an error is encountered.
//
//	Description: 	
//	 This function is called to search the instance structure that holds 
//	 column information currently used by this service
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	5.0   Initial version
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////
integer	li_count
integer	li_i

// Check arguments
If IsNull(as_column) Or Len(Trim(as_column))=0 Then Return -1

// Get the size of the array.
li_count = upperbound(istr_columns)

// Check for an empty array.
if li_count <= 0 THEN return 0

// Find column name in array.
for li_i=1 TO li_count
	if istr_columns[li_i].s_columnname = as_column THEN
		// Column name was found.
		return li_i
	end if
next

// Column name not found in array.
return 0
end function

protected function integer of_DeleteItem (integer ai_index);//////////////////////////////////////////////////////////////////////////////
//
//	Function:		of_DeleteItem
//
//	Access:			protected
//
//	Arguments:
//	ai_index			index number 
//
//	Returns:  		Integer
//						1 if it succeeds and -1 if an error occurs.
//
//	Description: 	This function is called to remove a entry from the array.
//
//		*Note: 	Function will also repack the array.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	5.0   Initial version
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////
integer		li_i, li_count
os_columns	lstr_columns[]

// Get the size of the array.
li_count = upperbound(istr_columns)

// Validate the argument.
If IsNull(ai_index) or ai_index <=0 or ai_index > li_count Then Return -1

// Copy from the begining to the entry prior the passed value.
If ai_index >= 2 Then
	For li_i=1 To ai_index -1
		lstr_columns[li_i] = istr_columns[li_i]	
	Next
End If	

// Also copy the rest of the array skipping the passed entry value.
If li_count > ai_index Then
	For li_i = ai_index +1 To li_count
		lstr_columns[li_i -1] = istr_columns[li_i]
	Next	
End If

// Store the new array on the instance variable.
istr_columns = lstr_columns
Return 1
end function

public function integer of_getregistered (ref string as_columns[]);//////////////////////////////////////////////////////////////////////////////
//
//	Function: 		of_GetRegistered
//
//	Access:  		public
//
//	Arguments:
//	as_columns[]	Columns names for which the service is providing dropdown 
//						search capabilities. (by reference)
//
//
//	Returns:  		integer
//						The number of entries in the returned array.
//
//	Description:  	This function returns the column names for which the service 
//						is providing dropdown search capabilities.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	6.0   Initial version - Replaces obsoleted function of_GetColumn(...).
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////

integer 	li_i
integer	li_count
string	ls_empty[]

// Initialize string.
as_columns = ls_empty

// Get the number of entries on the internal array.
li_count = upperbound(istr_columns)
If li_count <=0 Then Return 0

// Loop around all entries and populate array with column names.
For li_i=1 To li_count
	as_columns[li_i] = istr_columns[li_i].s_columnname
Next

Return li_count 
end function

public function boolean of_isregistered (string as_column);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  		of_IsRegistered
//
//	Access:  		public
//
//	Arguments:
//	as_column		Column to test if registered.
//
//	Returns:  		boolean
//	 True if the column is registered.
//	 False if not.
//
//	Description:
//	 Determine if the passed in column is registered.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	6.0   Initial version
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////

integer 			li_count, li_rc
string			ls_editstyle, ls_coltype
string			ls_displayvaluecolumn, ls_displayvaluecoltype
datawindowchild ldwc_obj

// Check arguments
If IsNull(as_column) Or Len(Trim(as_column))=0 Then 
	Return False
End If

If of_SearchItem(as_column) > 0 Then
	Return True
End If

Return False
end function

public function integer of_unregister (string as_column);//////////////////////////////////////////////////////////////////////////////
//
//	Function:		of_Unregister
//
//	Access:  		public
//
//	Arguments:  	
//	as_column 		Column to unregister from the service.
//
//	Returns:  		Integer
//						 1 succesful operation.
//						 0 if column not found.
//						-1 if an error is encountered.
//
//	Description:  	This function is called to unregister a column from the list the
//						services uses.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	6.0   Initial version - Replaces obsoleted function of_RemoveColumn.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////

integer	li_index
 
// Find the column in the array.
li_index = of_SearchItem(as_column)

// Check if column was found.
if not li_index >0 THEN return 0

// Delete the column from the array.
Return of_DeleteItem(li_index)

end function

public function integer of_unregister ();//////////////////////////////////////////////////////////////////////////////
//
//	Function:		of_Unregister
//
//	Access:  		public
//
//	Arguments:  	None
//
//	Returns:  		Integer
//						 1 succesful operation.
//						-1 if an error is encountered.
//
//	Description:  	
//	This function is called to unregister all the columns.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	6.0   Initial version
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////

os_columns	lstr_columns[]

// Unregister all information.
istr_columns = lstr_columns
Return 1
end function

public function integer of_getregisterable (ref string as_allcolumns[]);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  		of_GetRegisterable
//
//	Access:  		public
//
//	Arguments:
//	as_allcolumns[] By Reference.  All columns belonging to the requestor which
//						could be registered.
//
//	Returns:  		Integer
//	 The column count.
//	-1 if an error is encountered.
//
//	Description:
//	 Determines all columns belonging to the requestor which could be registered.
//
//	 *Note: For a dropdowndatawindow column to be of registering it most have a 
//		display value type char.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	6.0   Initial version
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////

integer		li_colcount, li_i, li_count, li_rc
string		ls_editstyle, ls_displayvaluecolumn, ls_displayvaluecoltype
string		ls_colname
datawindowchild ldwc_obj
string		ls_allcolumns[]

// Get the number of columns in the datawindow object
li_colcount = integer(idw_requestor.object.datawindow.Column.Count)

// Loop around all columns looking for dddw or ddlb columns.
For li_i=1 to li_colcount
	//Get-Validate the name and edit style of the column.
	ls_editstyle = idw_requestor.Describe("#"+string(li_i)+".Edit.Style")
	ls_colname = idw_requestor.Describe("#"+string(li_i)+".Name")
	If ls_colname = '!' or ls_editstyle = '!' Then Return -1	

	If ls_editstyle = 'dddw' Then
		// Get the displayvalue column name.
		ls_displayvaluecolumn = idw_requestor.Describe(ls_colname+".dddw.displaycolumn")
		If ls_displayvaluecolumn = '!' Then Return -1

		// Get a reference to the DropDownDatawindow.
		li_rc = idw_requestor.GetChild(ls_colname, ldwc_obj)
		If li_rc<>1 Then Return -1
		
		// If displayvalue column is not of type "Char," skip it.	
		ls_displayvaluecoltype = ldwc_obj.Describe(ls_displayvaluecolumn+".coltype")
		If pos(ls_displayvaluecoltype, "char") >= 1 Then
			// Add entry into array.
			li_count = upperbound(ls_allcolumns)+1
			ls_allcolumns[li_count] = ls_colname
		End If
	ElseIf ls_editstyle = 'ddlb' Then
		// Add entry into array.
		li_count = upperbound(ls_allcolumns)+1
		ls_allcolumns[li_count] = ls_colname		
	End If
Next

as_allcolumns = ls_allcolumns
Return UpperBound(as_allcolumns)

end function

public function integer of_getinfo (ref n_cst_infoattrib anv_infoattrib);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  		of_GetInfo
//
//	Access:   		Public
//
//	Arguments:		
//		anv_infoattrib	(By reference) The Information attributes.
//
//	Returns:  		Integer
//	 1 for success.
//	-1 for error.
//
//	Description:  
//	 Gets the Service Information.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	6.0    Initial version
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////

// Populate Information.
anv_infoattrib.is_name = 'Drop Down Search'
anv_infoattrib.is_description = &
	'Scrolls DropDownDataWindows and DropDownListBoxes automatically, filling '+&
	'in the field, as a match is found.'
	
Return 1
end function

public function integer of_getpropertyinfo (ref n_cst_propertyattrib anv_attrib);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  		of_GetPropertyInfo
//
//	Access:   		Public
//
//	Arguments:		
//		anv_attrib	(By ref.) The Property Information attributes.
//
//	Returns:  		Integer
//	 1 for success.
//	-1 for error.
//
//	Description:  
//	 Gets the Service Property Information.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	6.0    Initial version
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////

n_cst_infoattrib lnv_infoattrib

// Get the first two attributes from the Main Information attributes.
of_GetInfo(lnv_infoattrib)
anv_attrib.is_name = lnv_infoattrib.is_name
anv_attrib.is_description = lnv_infoattrib.is_description

// Set the rest of the attributes.
anv_attrib.is_propertypage = {'u_tabpg_dwproperty_srvdropdownsearch'}
anv_attrib.ib_switchbuttons = True

Return 1
end function

public function integer of_register (string as_column, dwobject adwo_searchin, ref datawindow adw_linked);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  		of_Register
//
//	Access:  		public
//
//	Arguments:
//	as_column		Column to register.
//
//	Returns:  		Integer
//	 1 if the column was registered.
//	 0 if the column was not registered.
//	-1 if an error is encountered.
//
//	Description:
//	 Register a dropdowndatawindow or a dropdownlistboxe column to the dropdown 
//	 search services.
//
//	 *Note: For a dropdowndatawindow column to be added it most have a display
//		value type char.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	6.0   Initial version - Replaces obsoleted function of_AddColumn.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////

integer 			li_count, li_rc
string			ls_editstyle
string			ls_displayvaluecolumn, ls_displayvaluecoltype
datawindowchild ldwc_obj

// Check arguments
If IsNull(as_column) Or Len(Trim(as_column))=0 Or &
	IsNull(idw_requestor) Or Not IsValid(idw_requestor) Or &
	IsNull(adwo_searchin) Or Not IsValid(adwo_searchin) Then Return -1

// Get a reference to the DropDownDatawindow.
// If displayvalue column is not of type "Char," skip it.	
ls_displayvaluecoltype = adwo_searchin.coltype
If pos(ls_displayvaluecoltype, "char") >= 1 Then
	// Add the new entry.				
	li_count = upperbound(istr_columns) +1					
	istr_columns[li_count].s_editstyle	= ls_editstyle		
	istr_columns[li_count].s_columnname	= as_column
	istr_columns[li_count].dwo_object 	= adwo_searchin
	istr_columns[li_count].dw_object 	= adw_linked
	
	Return 1
End If

// The column was not added.
Return 0
end function

on n_cst_dwsrv_linkdwsearch.destroy
call super::destroy
end on

on n_cst_dwsrv_linkdwsearch.create
call super::create
end on

