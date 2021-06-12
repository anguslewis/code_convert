********************************************************************************
* CODE CONVERSION PROGRAM
********************************************************************************


* Written by Angus Lewis
* Inspried and syntactically based on the kountry package
* Please send problems or improvements to angu.j.lewis@gmail.com

* Version:
* 1.0
* Version date:
* July 27th 2020

program define code_convert
version 16.0

syntax varname(max=1), from(passthru) to(passthru) [marker(passthru) geo(passthru)]

set more off

* save variable
local var = "`varlist'"

* save what was typed inside from()
tokenize `from', parse("()")
macro shift
macro shift
local fromdata `1'

* save what was typed inside to()
if "`to'" != "" {
  tokenize `to', parse("()")
  macro shift
  macro shift
  local todata `1'
}
else {
  local todata iso3c
}

* save path to code_convert crosswalk locations
local path = "`c(sysdir_plus)'c"


********************************************************************************
* OPTION CHECKS
********************************************************************************


* make sure "MARKER" is not defined if option marker is specified
if "`marker'"!="" {
  capture confirm variable `marker'
  if !_rc {
    di
    di in red "{hline 62}"
    di in white "`marker' " in red "already exists."
    di in red "Rename or drop the current " in white "`marker' " in red "or choose a different marker name."
    di in red "{hline 62}"
    exit 110
  }
}
* make sure to and from options are valid
local file_names : dir "`path'" files "*.ado"
foreach option in to from {
  local `option'_test=0
  foreach file of local file_names {
    if "code_convert_``option'data'.ado" == "`file'" local `option'_test = 1
  }
  if "``option'data'"=="iso3c" local `option'_test = 1
}
* correct for country_long option
if "`fromdata'"=="country_long" local from_test = 1
local test = `from_test' + `to_test'
if `test'<2 {
  di in red "{hline 58}"
  di "`test'"
  foreach option in to from {
    if ``option'_test'==0 di in red "Incorrect `option'() option."
  }
  di in red "{hline 58}"
  exit 198
}
* make sure to and from options are different
if "`fromdata'"=="`todata'" {
  di in red "{hline 58}"
  di in red "to() and from() options must be different."
  di in red "{hline 58}"
  exit 198
}


********************************************************************************
* PROCESS CONVERSION FROM LONG COUNTRY NAMES
********************************************************************************






********************************************************************************
* PROCESS FROM OPTION
********************************************************************************


* convert to iso3c if not already iso3c
tempvar _temp_iso3c
tempname crosswalk
* process country long options
if "`fromdata'"=="country_long" {
  qui gen `_temp_iso3c'=""
  code_convert_country_long , from_cl(`var') to_cl(`_temp_iso3c')
}
* process code convert option
else if "`fromdata'"!="iso3c" {
  qui gen `_temp_iso3c'=""
  file open `crosswalk' using "`path'/code_convert_`fromdata'.ado", read
  * read line, separate iso3c code from other code, run replace
  file read `crosswalk' line
  while r(eof)==0 {
    local cou_iso3c = substr("`line'",1,3)
    local cou_from = substr("`line'",5,.)
    qui replace `_temp_iso3c' = "`cou_iso3c'" if `var' == "`cou_from'"
    file read `crosswalk' line
  }
  file close `crosswalk'
}
* otherwise variable supplied is already iso3c
else qui gen `_temp_iso3c'= `var'


********************************************************************************
* PROCESS TO OPTION
********************************************************************************


* process to option: convert from iso3c to specific format
tempname crosswalk
if "`todata'"!="iso3c" {
  qui gen `todata'_country_code = ""
  file open `crosswalk' using "`path'/code_convert_`todata'.ado", read
  * read line, separate iso3c code from other code, run replace
  file read `crosswalk' line
  while r(eof)==0 {
    local cou_iso3c = substr("`line'",1,3)
    local cou_to = substr("`line'",5,.)
    qui replace `todata'_country_code = "`cou_to'" if `_temp_iso3c' == "`cou_iso3c'"
    file read `crosswalk' line
  }
  file close `crosswalk'
}
else qui gen `todata'_country_code = `_temp_iso3c'


********************************************************************************
* TABULATE UNCONVERTED CODES
********************************************************************************

qui levelsof `var' if `todata'_country_code=="" , clean local(unconverted)
if "`unconverted'"!="" {
  di "{hline 58}"
  di "The following codes were not converted."
  di "{hline 58}"
  tab `var' if `todata'_country_code==""
}


end
