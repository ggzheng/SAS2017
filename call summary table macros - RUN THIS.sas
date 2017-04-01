/**********************************************************************************
***********************************************************************************
*** Author: Yuanchao Zheng, M.S., Stanford University
*** Purpose: Create Summary tables
*** OS: Windows 10 Pro 64-bit
*** Software: SAS 9.4

*** Note: 
	There are two SAS macros: Getvars and Table_summary. Getvars computes
	summary statistics for both categorical and continuous variables.
	Table_summary calls Getvars and outputs a summary table.

*** Copyright (C) <2017> <Yuanchao Zheng>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

***********************************************************************************
**********************************************************************************/


*** Include macros in your program. Specify the location.;
*************************************************************************************;
%include "XXX\macro table_summary.sas";  


*** Specify your parameters 
*************************************************************************************;
%let yourdata=;                 /*name of your input data*/
%let output_data=;              /*name of your output data*/

%let formatsfolder=;            /*location of your SAS formats*/          
%let yourfolder=;               /*location of your SAS data set*/ 
       
%let varlist_cat=;              /*list of categorical variables*/
%let varlist_cont=;             /*list of continuous variables*/
%let output_order=;             /*output order of all UNIQUE variables*/

%let decimal_max=;              /*decimal points you need:0,1,2,3*/

%let group_by=;                 /*name of stratification variable*/
%let group_by_missing=;         /*whether or not to remove observations missingness the stratification variable*/          


*** Call the macros 
*************************************************************************************;
%Table_summary;                


