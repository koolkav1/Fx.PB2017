HA$PBExportHeader$u_browser.sru
forward
global type u_browser from u_base
end type
type cb_home from commandbutton within u_browser
end type
type st_address from statictext within u_browser
end type
type cb_refresh from commandbutton within u_browser
end type
type cb_forward from commandbutton within u_browser
end type
type cb_back from commandbutton within u_browser
end type
type ole_browser from olecustomcontrol within u_browser
end type
end forward

global type u_browser from u_base
integer width = 1975
integer height = 1472
long backcolor = 1073741824
event navigationend ( string newurl )
event resized ( )
cb_home cb_home
st_address st_address
cb_refresh cb_refresh
cb_forward cb_forward
cb_back cb_back
ole_browser ole_browser
end type
global u_browser u_browser

forward prototypes
public subroutine goforward ()
public subroutine refresh ()
public subroutine navigate (string url)
public subroutine goback ()
end prototypes

public subroutine goforward ();
ole_browser.object.GoForward()

end subroutine

public subroutine refresh ();
ole_browser.object.Refresh()

end subroutine

public subroutine navigate (string url);
ole_browser.object.Navigate(url)

end subroutine

public subroutine goback ();
ole_browser.object.GoBack()

end subroutine

on u_browser.create
int iCurrent
call super::create
this.cb_home=create cb_home
this.st_address=create st_address
this.cb_refresh=create cb_refresh
this.cb_forward=create cb_forward
this.cb_back=create cb_back
this.ole_browser=create ole_browser
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_home
this.Control[iCurrent+2]=this.st_address
this.Control[iCurrent+3]=this.cb_refresh
this.Control[iCurrent+4]=this.cb_forward
this.Control[iCurrent+5]=this.cb_back
this.Control[iCurrent+6]=this.ole_browser
end on

on u_browser.destroy
call super::destroy
destroy(this.cb_home)
destroy(this.st_address)
destroy(this.cb_refresh)
destroy(this.cb_forward)
destroy(this.cb_back)
destroy(this.ole_browser)
end on

event constructor;call super::constructor;
of_SetResize(true)
inv_Resize.of_SetOrigSize(ole_browser.X + ole_browser.Width, ole_browser.Y + ole_browser.Height)
inv_Resize.of_Register(ole_browser, 0, 0, 100, 100)
inv_Resize.of_Register(st_address, 0, 0, 100, 0)

end event

event resize;call super::resize;
post event resized()

end event

type cb_home from commandbutton within u_browser
integer x = 439
integer width = 247
integer height = 112
integer taborder = 20
integer textsize = -14
integer weight = 400
fontcharset fontcharset = symbol!
fontpitch fontpitch = variable!
string facename = "Wingdings"
string text = "$$HEX1$$ff00$$ENDHEX$$"
boolean flatstyle = true
end type

event clicked;
Navigate("www.google.com")

end event

type st_address from statictext within u_browser
integer x = 878
integer y = 12
integer width = 1029
integer height = 84
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 134217745
long backcolor = 134217750
string text = "none"
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type cb_refresh from commandbutton within u_browser
integer x = 658
integer width = 206
integer height = 112
integer taborder = 20
integer textsize = -14
integer weight = 400
fontcharset fontcharset = symbol!
fontpitch fontpitch = variable!
string facename = "Wingdings"
string text = "$$HEX1$$c600$$ENDHEX$$"
boolean flatstyle = true
end type

event clicked;
ole_browser.object.Refresh()

end event

type cb_forward from commandbutton within u_browser
integer x = 219
integer width = 206
integer height = 112
integer taborder = 20
integer textsize = -14
integer weight = 400
fontcharset fontcharset = symbol!
fontpitch fontpitch = variable!
string facename = "Wingdings"
string text = "$$HEX1$$f000$$ENDHEX$$"
boolean flatstyle = true
end type

event clicked;
ole_browser.object.GoForward()

end event

type cb_back from commandbutton within u_browser
integer width = 206
integer height = 112
integer taborder = 10
integer textsize = -14
integer weight = 400
fontcharset fontcharset = symbol!
fontpitch fontpitch = variable!
string facename = "Wingdings"
string text = "$$HEX1$$ef00$$ENDHEX$$"
boolean flatstyle = true
end type

event clicked;
ole_browser.object.GoBack()

end event

type ole_browser from olecustomcontrol within u_browser
event statustextchange ( string text )
event progresschange ( long progress,  long progressmax )
event commandstatechange ( long command,  boolean enable )
event downloadbegin ( )
event downloadcomplete ( )
event titlechange ( string text )
event propertychange ( string szproperty )
event beforenavigate2 ( oleobject pdisp,  any url,  any flags,  any targetframename,  any postdata,  any headers,  ref boolean cancel )
event newwindow2 ( ref oleobject ppdisp,  ref boolean cancel )
event navigatecomplete2 ( oleobject pdisp,  any url )
event documentcomplete ( oleobject pdisp,  any url )
event onquit ( )
event onvisible ( boolean ocx_visible )
event ontoolbar ( boolean toolbar )
event onmenubar ( boolean menubar )
event onstatusbar ( boolean statusbar )
event onfullscreen ( boolean fullscreen )
event ontheatermode ( boolean theatermode )
event windowsetresizable ( boolean resizable )
event windowsetleft ( long left )
event windowsettop ( long top )
event windowsetwidth ( long ocx_width )
event windowsetheight ( long ocx_height )
event windowclosing ( boolean ischildwindow,  ref boolean cancel )
event clienttohostwindow ( ref long cx,  ref long cy )
event setsecurelockicon ( long securelockicon )
event filedownload ( boolean activedocument,  ref boolean cancel )
event navigateerror ( oleobject pdisp,  any url,  any frame,  any statuscode,  ref boolean cancel )
event printtemplateinstantiation ( oleobject pdisp )
event printtemplateteardown ( oleobject pdisp )
event updatepagestatus ( oleobject pdisp,  any npage,  any fdone )
event privacyimpactedstatechange ( boolean bimpacted )
event setphishingfilterstatus ( long phishingfilterstatus )
event newprocess ( long lcauseflag,  oleobject pwb2,  ref boolean cancel )
event redirectxdomainblocked ( oleobject pdisp,  any starturl,  any redirecturl,  any frame,  any statuscode )
integer y = 116
integer width = 1915
integer height = 1304
integer taborder = 10
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
string binarykey = "u_browser.udo"
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
end type

event navigatecomplete2(oleobject pdisp, any url);
st_address.Text = String(url)

end event

event error;
action = ExceptionIgnore!

end event


Start of PowerBuilder Binary Data Section : Do NOT Edit
0Fu_browser.bin 
2900000a00e011cfd0e11ab1a1000000000000000000000000000000000003003e0009fffe000000060000000000000000000000010000000100000000000010000000000200000001fffffffe0000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdfffffffefffffffefffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff006f00520074006f004500200074006e00790072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050016ffffffffffffffff00000001000000000000000000000000000000000000000000000000000000005022a47001cd990b00000003000001800000000000500003004f0042005800430054005300450052004d0041000000000000000000000000000000000000000000000000000000000000000000000000000000000102001affffffff00000002ffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c00000000004200500043004f00530058004f00540041005200450047000000000000000000000000000000000000000000000000000000000000000000000000000000000001001affffffffffffffff000000038856f96111d0340ac0006ba9a205d74f000000005022a47001cd990b5022a47001cd990b000000000000000000000000004f00430054004e004e00450053005400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001020012ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000030000009c000000000000000100000002fffffffe0000000400000005fffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
26ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000004c00002b4e000021b10000000000000000000000000000000000000000000000000000004c0000000000000000000000010057d0e011cf3573000869ae62122e2b00000008000000000000004c0002140100000000000000c0460000000000008000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004c00002b4e000021b10000000000000000000000000000000000000000000000000000004c0000000000000000000000010057d0e011cf3573000869ae62122e2b00000008000000000000004c0002140100000000000000c0460000000000008000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1Fu_browser.bin 
End of PowerBuilder Binary Data Section : No Source Expected After This Point
