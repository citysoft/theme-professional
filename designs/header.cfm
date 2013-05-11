<!--- 
This is a sample header file.  The header file file is generally called from head.cfm after the call to init.cfm.
The things that happen in this file are generally:
- cache stuff for home page?
- doc type declaration
- <html> tag
- <head> tag
- link to stylesheets
- open <body> tag
- include top menu file
- include CE design components if any are being used (or custom versions of these features, such as a login box)
- set div for overall container (e.g. <div id="container">)
- set div for overall content container (e.g. <div id="contentContainer">)
- set div for main content container (e.g. <div id="mainContent">)

--->

<!--- Use the following code if you want to run a cached home page --->
<!---
<cfif isdefined('pageid') AND pageid eq 4 AND isdefined('ishomepage') and ishomepage and not isdefined('url.ccache')>
	<cflocation url="/index.cfm?ccache=1">
</cfif>--->

<!--- Run code such as the following if you want to do any custom re-directs --->
<!---
<cfif isDefined("client.userID") and client.userId gt 0>
	<cfquery datasource="#request.dsn#" name="getexpiredcheck">
		select count(userid) as val from users where userid=<cfqueryparam value="#client.userID#" cfsqltype="CF_SQL_INTEGER"> and roleid=2
		</cfquery>
		<cfif getexpiredcheck.val EQ 0 AND isdefined("pageid") AND pageID NEQ 506 AND isAncestor(501) NEQ 0>
			<cflocation url="/index.cfm?pageID=506">
				</cfif>
</cfif>--->
<!--- DOCTYPE declaration - example provided --->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--- Add <html> tag --->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<!--- Add <head> section --->
	<head>
		<!--- Add any <meta> tags as necessary --->
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<!--- Add Title and Meta Tags --->
			<cfoutput>
				<title>MY ORGANIZATION | 					<cfif isHomepage>HOME PAGE TITLE					<cfelse>#attributes.pagetitle#					</cfif></title>
				#getMetaTags()#
			</cfoutput>
		<!--- Add style sheets as necessary. --->
       
		<link rel="stylesheet" href="../_data/n_0011/styles/sample1.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="../_data/n_0011/styles/cs_theme1.css" type="text/css" media="screen" />
		<!--[if IE 6]>
			<style type="text/css" media="screen">
				#mainContent #support {width: 497px;}
				#memberLogin form {width: 256px;}
			</style>
		<![endif]-->
		<!--[if IE 7]>
			<style type="text/css" media="screen">
				#memberLogin form {width: 256px;}
				ul#nav li:hover ul {top: 26px;}
				ul#nav ul li {width: 160px; margin-top: -4px;}
			</style>
		<![endif]-->
        
         <script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"></script>
        
	</head>
    
	<!--- Open <body> tag 
	<body >--->
		<!--- Open first container <div> - this is closed in footer file. --->
		<!---<div id="container"> -->
			<!--- START: Header section / div.  This is optional but is often used to define the area above
			the drop down menu navigation in many sites. 
			<div id="header">
				<a id="logo" href="/index.cfm?" title="MY ORGANIZATION | MY TAG LINE.">
					<cfoutput>
					<img src="/_data/#vNodeFolder#/images/logo.gif" border="0" alt="MY ORGANIZATION | MY TAG LINE."  />
					</cfoutput>
				</a>
				<!--- Example of adding a components (e.g. welcome message).  
				These can be custom or from CE base code--->
				<cfif isDefined("client.userID") and client.userId gt 0>
				<div id="memberName">
					<cfquery name="getUserFullName" datasource="#request.dsn#">
						SELECT fname 
						FROM users 
						WHERE userID = <cfqueryparam value="#client.userID#" cfsqltype="CF_SQL_INTEGER">
					</cfquery>
					Welcome Back, <cfoutput>#getUserFullName.Fname#</cfoutput>
				</div>
				</cfif>
				<p id="tagline">MY TAG LINE</p>
			</div>--->
			<!--- END: Header section / div --->
			<!--- Example of including login widget.  Path will vary depending on whether header file is in global 
			or node folders 
			<cfinclude template="../includes/loginwidget.cfm">
			OR
			<cfinclude template="../../global/includes/loginwidget.cfm"> --->

			<div id="sidebarContent">
			
			<!--- START: content container. This is closed in the footer file. --->
			<div id="contentContainer">
				<!--- START: Main content container. This is closed in the footer file. --->
				<div id="mainContent">

				<!--- If you want to set additional css ids for particular channels, 
				one way to do it would be with code such as the following --->
				<!---
				<cfif isdefined("fuseaction") and fuseaction contains "Calendar.eventDetail"><span id="calendar_detail">
				<cfelseif isdefined("fuseaction") and fuseaction contains "Calendar."><span id="calendar"></cfif>

				<cfif (isdefined("fuseaction") and fuseaction contains "Calendar.") or (isdefined("pageid") and pageid eq "473")><h1>Calendar</h1>
				<cfelseif (isdefined("fuseaction") and fuseaction contains "ContactSearch.") or (isdefined("pageid") and pageid eq "498")><h1>Member Directory</h1>
				<cfelseif (isdefined("fuseaction") and fuseaction contains "Store.") or (isdefined("pageid") and pageid eq "496")><h1>Store</h1>
				<cfelseif (isdefined("fuseaction") and fuseaction contains "Member.") or (isdefined("pageid") and pageid eq "500")><h1>My Membership</h1>
				<cfelseif isdefined("pageid") and pageid eq "497"><h1>Online Donation</h1></cfif>--->
			<!-- End Design Header File -->--->
			
			
			<!-- HEAD META -->
<div class="metaBannerContain">
  <div class="metaBannerContent"><a href="/admin/index.cfm?">login</a></div>
</div>
<!-- /END -->
<!-- HEADER-->
<div class="headerContain">
  <div class="logoContain"><br />
    <br />
    <br />
    <img src="../_data/n_0011/images/logo.png" width="173" height="51" /><br />
    <h1 class="taglineTitle"> Mission statement or tagline</h1>
  </div>
  <div class="searchContain">
    <!-- start: search box 
  <div class="cst_searchBox">
    <form action="#" id="search_box">
      <div class="search_wrapper">
        <input type="text" id="search" name="search" placeholder="Search" />
        <button type="submit" class="search_btn"><img src="images/btn_search_go.png" title="Search" /></button>
      </div>
    </form>
    
  </div>-->
    <!-- end: search box-->
    <br />
    <br />
    <br />
    Newsletter Sign-up Here </div>
</div>
<!-- /END -->
<!-- NAV -->
<div id="mainNavBackg">


<!--- START: Navigation.  Navigation is defined within a <ul><li> structure and uses the "nav" id 
			which is defined in the css file.  --->
			<ul id="nav" class="drop" style="border-right:0px; ">
					<!--- The following variables are used in the navigation to manage which pages are 
					allowed in the navigation (e.g. password protected pages would typicallly not be allowed 
					in the navigation for a non-logged in user, unless you were trying to tease the restricted
					content).  These variables can also be set to "private" and NULL (ie not defined at all) --->
					<cfif not isDefined("client.userID") or client.userId lte 0>
						<cfset navvariant="public">
						<cfset topmenu_show="public">
                    <cfelse>
						<cfset navvariant="roleid">
						<cfset topmenu_show="roleid">
					</cfif>
					<!--- Include main navigation file.  This will in turn include a cached navigation
					file that, in conjunction with the id defined above and the .css file, will define 
					the navigation (e.g. a drop down menu structure). --->
					<cfinclude template="../../../_includes/design/menu.cfm">

					<!--- Example of adding a design file "component" (e.g. login related links).
					These can be custom or from pre-built CE base code components. --->
					<cfif isDefined("client.userid") and client.userid NEQ 0>
							<li class="member" style="border-right:0px"><a href="/index.cfm?fuseaction=home.Logout&nodeID=1">Logout</a></li>
						<cfif isDefined("client.issuperuser") and client.issuperuser EQ 1>
							<li class="member" style="border-right:0px"><a href="/admin">Admin</a></li>
						</cfif>
						<!--- <li class="member"><a href="index.cfm?pageId=500">My Membership</a>
													<ul>
														<li><a href="index.cfm?pageId=524">My Subscriptions</a></li>
														<li><a href="index.cfm?pageId=525">My Profile</a></li>
													</ul>
												</li> --->
					<cfelse>
						<li class="member" style="border-right:0px"><a href="/index.cfm?pageId=482">Member Login</a></li>
					</cfif>
			</ul>
			<!--- END: Navigation --->


</div>
<!-- /END -->
<!-- CONTENT -->
<div class="hmContentContainer">

<div class="imageSlideContainer">
    <!-- START HOME PAGE SLIDER -->
    <script language="JavaScript">

$(function() {

$(".home-slide-tabs").tabs(".home-slide-images > div", {

	// enable "cross-fading" effect
	effect: 'fade',
	fadeOutSpeed: "slow",

	// start from the beginning after the last tab
	rotate: true

// use the slideshow plugin. It accepts its own configuration
}).slideshow( {next: '.home-slide-forward', prev:'.home-slide-backward', interval: 9000, autoplay: true, clickable: false } );


});

</script>
   
