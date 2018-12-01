﻿$PBExportHeader$n_cst_shippingtrans_qualityalert.sru
forward
global type n_cst_shippingtrans_qualityalert from n_cst_fxtrans
end type
end forward

global type n_cst_shippingtrans_qualityalert from n_cst_fxtrans
end type
global n_cst_shippingtrans_qualityalert n_cst_shippingtrans_qualityalert

type variables

public constant long OBJECTSTATUS_IGNORE = -2
public constant long OBJECTSTATUS_LOST = -1
public constant long OBJECTSTATUS_UNKNOWN = 0
public constant long OBJECTSTATUS_FOUND = 1
public constant long OBJECTSTATUS_FOUNDADJ = 2
public constant long OBJECTSTATUS_FOUNDREL = 3
public constant long OBJECTSTATUS_FOUNDADJREL = 4
public constant long OBJECTSTATUS_RECOVER = 5

end variables

forward prototypes
public function integer setpartalert (string partcode, boolean flag)
end prototypes

public function integer setpartalert (string partcode, boolean flag);
//	Read the parameters.
datetime tranDT ; setNull (tranDT)
long	sqlResult, procResult
string	sqlError

//	Attempt to set part alert flag.
int enabledFlagValue = 0
if	flag then enabledFlagValue = 1

declare SetPartAlert procedure for dbo.usp_SQA_SetPartAlert
	@User = :User
,	@PartCode = :partCode
,	@EnabledFlag = :enabledFlagValue
,	@TranDT = :tranDT output
,	@Result =:procResult output using TransObject  ;

execute SetPartAlert  ;
sqlResult = TransObject.SQLCode

if	sqlResult <> 0 then
	sqlError = TransObject.SQLErrText
	TransObject.of_Rollback()
	MessageBox(monsys.msg_Title, "Failed on execute, unable to set part alert flag:  {" + String(sqlResult) + "," + String(procResult) + "} " + sqlError)
	return FAILURE
end if

//	Get the result of the stored procedure.
fetch
	SetPartAlert
into
	:tranDT
,	:procResult  ;

if	procResult <> 0 or TransObject.SQLCode <> 0 then
	sqlError = TransObject.SQLErrText
	TransObject.of_Rollback()
	MessageBox(monsys.msg_Title, "Failed on result, unable to set part alert flag:  {" + String(sqlResult) + "," + String(procResult) + "} " + sqlError)
	return FAILURE
end if

//	Close procedure.
close SetPartAlert   ;

//	Return.
return SUCCESS

end function

on n_cst_shippingtrans_qualityalert.create
call super::create
end on

on n_cst_shippingtrans_qualityalert.destroy
call super::destroy
end on

