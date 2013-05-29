<!--- This is a sample head file for use in the Version 2 CE Design Template System.
In a typical implementation, a file like this, named head.cfm, would be uploaded through 
the CE "Site Settings" screen.  It's purpose is to point to the main header file as well as call the page initialization code. 
Alternately, you could have this file be the actual header file rather than point to the main header file.  It depends on
whether you want your header file to be located in the node folder or in the global designs area.  --->
<!--- This include calls the initalization file. Alternately, this include could be put in the header file itself. --->
<cfinclude template="../../../_includes/design/init.cfm">
<!--- This include calls the header file. --->
<cfinclude template="../../#vNodeFolder#/designs/header.cfm">