﻿$PBExportHeader$n_cst_dwcache.sru
$PBExportComments$Extension DataWindow Caching service
forward
global type n_cst_dwcache from pfc_n_cst_dwcache
end type
end forward

global type n_cst_dwcache from pfc_n_cst_dwcache
end type
global n_cst_dwcache n_cst_dwcache

on n_cst_dwcache.create
triggerevent( this, "constructor" )
end on

on n_cst_dwcache.destroy
triggerevent( this, "destructor" )
end on

