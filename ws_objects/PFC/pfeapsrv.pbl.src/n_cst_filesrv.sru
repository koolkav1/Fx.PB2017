﻿$PBExportHeader$n_cst_filesrv.sru
$PBExportComments$Extension File handler service
forward
global type n_cst_filesrv from pfc_n_cst_filesrv
end type
end forward

global type n_cst_filesrv from pfc_n_cst_filesrv
end type
global n_cst_filesrv n_cst_filesrv

on n_cst_filesrv.create
triggerevent( this, "constructor" )
end on

on n_cst_filesrv.destroy
triggerevent( this, "destructor" )
end on

