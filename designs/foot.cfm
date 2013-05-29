<!--- This is a sample foot file for use in the Version 2 CE Design Template System.
In a typical implementation, a file like this, named foot.cfm, would be uploaded through 
the CE "Site Settings" screen. It's purpose is to point to the main footer file as well as call the page reporting code. 
Alternately, you could have this file be the actual footer file rather than point to the footer file.  It depends on
whether you want your footer file to be located in the node folder or in the global designs area. --->
<!--- This include calls the initalization file. Alternately, this include could be put in the header file itself. --->
<cfinclude template="../../#vNodeFolder#/designs/footer.cfm">
<!--- This include calls the file that manages page view reporting.  Alternately, this include could be in 
the footer file itself. --->
<cfinclude template="../../../_includes/dsp_pageReport.cfm">