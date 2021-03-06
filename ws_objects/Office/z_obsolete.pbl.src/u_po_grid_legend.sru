﻿$PBExportHeader$u_po_grid_legend.sru
$PBExportComments$(mrs) PO grid legend
forward
global type u_po_grid_legend from UserObject
end type
type st_4 from statictext within u_po_grid_legend
end type
type st_3 from statictext within u_po_grid_legend
end type
type st_2 from statictext within u_po_grid_legend
end type
type st_1 from statictext within u_po_grid_legend
end type
type r_1 from rectangle within u_po_grid_legend
end type
type r_2 from rectangle within u_po_grid_legend
end type
type r_3 from rectangle within u_po_grid_legend
end type
type r_4 from rectangle within u_po_grid_legend
end type
end forward

global type u_po_grid_legend from UserObject
int Width=1102
int Height=72
boolean Border=true
long BackColor=78682240
long PictureMaskColor=25166016
long TabBackColor=67108864
st_4 st_4
st_3 st_3
st_2 st_2
st_1 st_1
r_1 r_1
r_2 r_2
r_3 r_3
r_4 r_4
end type
global u_po_grid_legend u_po_grid_legend

on u_po_grid_legend.create
this.st_4=create st_4
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.r_1=create r_1
this.r_2=create r_2
this.r_3=create r_3
this.r_4=create r_4
this.Control[]={this.st_4,&
this.st_3,&
this.st_2,&
this.st_1,&
this.r_1,&
this.r_2,&
this.r_3,&
this.r_4}
end on

on u_po_grid_legend.destroy
destroy(this.st_4)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.r_1)
destroy(this.r_2)
destroy(this.r_3)
destroy(this.r_4)
end on

type st_4 from statictext within u_po_grid_legend
int X=823
int Width=169
int Height=48
boolean Enabled=false
string Text="Balance"
boolean FocusRectangle=false
long BackColor=78682240
int TextSize=-7
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_3 from statictext within u_po_grid_legend
int X=549
int Width=201
int Height=48
boolean Enabled=false
string Text="PO Qty"
boolean FocusRectangle=false
long BackColor=78682240
int TextSize=-7
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_2 from statictext within u_po_grid_legend
int X=293
int Width=183
int Height=48
boolean Enabled=false
string Text="OnHand"
boolean FocusRectangle=false
long BackColor=78682240
int TextSize=-7
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_1 from statictext within u_po_grid_legend
int X=55
int Width=169
int Height=48
boolean Enabled=false
string Text="Demand"
boolean FocusRectangle=false
long BackColor=78682240
int TextSize=-7
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type r_1 from rectangle within u_po_grid_legend
int Width=37
int Height=32
boolean Enabled=false
int LineThickness=4
long FillColor=255
end type

type r_2 from rectangle within u_po_grid_legend
int X=238
int Width=37
int Height=32
boolean Enabled=false
int LineThickness=4
long FillColor=65280
end type

type r_3 from rectangle within u_po_grid_legend
int X=494
int Width=37
int Height=32
boolean Enabled=false
int LineThickness=4
long FillColor=65535
end type

type r_4 from rectangle within u_po_grid_legend
int X=768
int Width=37
int Height=32
boolean Enabled=false
int LineThickness=4
long FillColor=16711680
end type

