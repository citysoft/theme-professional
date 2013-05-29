<!--- 
Theme: 	Professional
File: 	header.cfm
Notes: 	This is a sample header file.  The header file file is generally called from head.cfm after the call to init.cfm.
--->
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
				<title>MY ORGANIZATION | <cfif isHomepage>HOME PAGE TITLE<cfelse>#attributes.pagetitle#</cfif></title>
				#getMetaTags()#
			</cfoutput>
		<!--- Add style sheets as necessary. --->
		<cfoutput>
			<link rel="stylesheet" href="../_data/#vNodeFolder#/styles/main.css" type="text/css" media="screen" />
			<cfif isHomepage>
				<link rel="stylesheet" href="../_data/#vNodeFolder#/styles/home.css" type="text/css" media="screen" />			
			</cfif>
		</cfoutput>
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
    
	<!--- Open <body> tag --->
	<body >
		<!-- HEAD META -->
		<div class="metaBannerContain">
  		<div class="metaBannerContent">
			<a href="/join">Join</a> |    
				<cfif isDefined("client.userid") and client.userid NEQ 0>
					<cfoutput><a href="/index.cfm?fuseaction=home.editUserProfile">#request.editProfileTitle#</a></cfoutput> |
					<!--<li class="member" style="border-right:0px"> --><a href="/index.cfm?fuseaction=home.Logout&nodeID=1">Logout</a> |<!--</li> -->
					<cfif isDefined("client.issuperuser") and client.issuperuser EQ 1>
						<!--<li class="member" style="border-right:0px"> --><a href="/admin">Admin</a><!--</li> -->
					</cfif>
				<cfelse>
					<!--<li class="member" style="border-right:0px"> --><a href="/login">Login</a><!--</li> -->
				</cfif> | <a href="/subscribe">Subscribe</a>
		</div>	
		</div>
		<!-- /END -->
		<!-- HEADER-->
		<div class="headerContain">
	  		<!--- Logo --->
			<div class="logoContain">
		    	<img src="../_data/n_0001/images/logo.png" width="173" height="51" /><br />
		    	<h1 class="taglineTitle"> Mission statement or tagline</h1>
	  		</div>
			<!--- Search --->
	  		<div class="searchContain">
				<script language="JavaScript" type="text/javascript">
					// Disable this button and submit form and display message if they are supplied
					function disableButton (oMyButton, oMyForm, sMessage)
					{
						//alert(typeof(sMessage));
						if (typeof(sMessage)!='undefined')
						{
							document.getElementById(sMessage).style.visibility='visible';
						}
						oMyButton.disabled=true;
						if (typeof(oMyForm)=='object') // If a form is supplied, then submit it
						{
							oMyForm.submit();
						}
					}
				
					function stopRKey(evt) {
					  var evt = (evt) ? evt : ((event) ? event : null);
					  var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
					  if ((evt.keyCode == 13) && (node.type=="text"))  {return false;}
					}
				
					document.onkeypress = stopRKey;
				</script>
				
				<cfparam name="tdClass" default="publicHeader" >
				<cfparam name="inNavBar" default="0" />
				<cfparam name="form.searchanyofwords" default=""/>
				
				<cfinclude template="../../../act_nodehandeler.cfm" />
			
				<div id="searchwidget">
				<cfoutput>
					<form name="simpleSearchForm" id="simpleSearchForm" action="#request.self#?fuseaction=simplesearch2.processarguments2" method="post">
						<input type="text" name="searchanyofwords" value="#FORM.searchanyofwords#" size="15" maxlength="100" class="appInputText" />
						<input type="button" value="Search" class="appInputButton" onclick="disableButton(this, document.getElementById('simpleSearchForm'), 'processMsg');" /><br />
						<span id="processMsg" style="color:ff0000;font-weight:bold;font-size:11px;visibility:hidden;">Searching...  May Take A Few Moments</span>
						<script language="JavaScript" type="text/javascript">
							document.getElementById('processMsg').style.visibility='hidden';
						</script>
					</form>
				</cfoutput>
				</div>
				<!-- End Search Widget -->
			</div><!-- End Search Contain -->
 			<!-- Start Email Subscription Widget-->
			<cfoutput>
			<div id="emailsubscription">
			    <cfif client.userid lte 0>
					<form name="newsletter" method="post" action="/index.cfm?fuseaction=email.subscribe">
						<input type="text" class="textfield" value="Email" onfocus="if(this.value==this.defaultValue) this.value='';" onblur="if(this.value=='') this.value = 'Email';" maxlength="50"  name="email_post">
				        <input type="text" class="textfield"  value="Zip Code" size="11px" onfocus="if(this.value==this.defaultValue) this.value='';" onblur="if(this.value=='') this.value = 'Zip Code';" maxlength="10"  name="postalcode">
				        <input type="hidden" value="1" name="EmailRecipientListIDs">
				        <input type="submit" class="button" value="Join Our Email List" name="submit">
					</form>
					<p class="emailsubscriptionfoot"><a href="/index.cfm?pageId=xxx">Optional message / link here</a></p>
				<cfelse>
			    	<a href="/index.cfm?fuseaction=email.subscribe" title="Manage my subscriptions">My Subscriptions</a>
					<p class="emailsubscriptionfoot"><a href="/index.cfm?pageId=xxx">Optional message / link here</a></p>
			    </cfif>
			</div>
			</cfoutput>
			<!-- End Email Subscription Widget -->
		</div>
		<!-- /END -->
		<!-- NAV -->
		<div id="mainNavBackg">
		<!--- START: Navigation.  Navigation is defined within a <ul><li> structure and uses the "nav" id 
			  which is defined in the css file.  --->
			<ul id="nav" class="drop" style="border-right:0px; ">
				<!--- The topmenu_show variable is used in the menu widget to determine which version
					  (public or password protected) of the menu will be displayed. --->
				<cfif not isDefined("client.userID") or client.userId lte 0>
					<cfset topmenu_show="public">
                <cfelse>
					<cfset topmenu_show="roleid">
				</cfif>
				<!--- Include main navigation file.  This will in turn include a cached navigation
				file that, in conjunction with the id defined above and the .css file, will define 
				the navigation (e.g. a drop down menu structure). --->
				<li><a href="/">Home</a></li>
				<cfinclude template="../../../_includes/design/menu.cfm">
				<!--- Optional: Add login and admin links to menu. --->
				<!---
				<cfif isDefined("client.userid") and client.userid NEQ 0>
					<li class="member" style="border-right:0px"><a href="/index.cfm?fuseaction=home.Logout&nodeID=1">Logout</a></li>
					<cfif isDefined("client.issuperuser") and client.issuperuser EQ 1>
						<li class="member" style="border-right:0px"><a href="/admin">Admin</a></li>
					</cfif>
				<cfelse>
					<li class="member" style="border-right:0px"><a href="/index.cfm?pageId=482">Member Login</a></li>
				</cfif>--->
			</ul>
			<!--- END: Navigation --->
		</div>
		<!-- /END -->
		<!-- CONTENT -->
		<div class="hmContentContainer"><!--- Closed in footer --->
		<div class="imageSlideContainer"><!--- Closed in footer --->
		<cfif isHomepage>
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
				
			<div class="group" id="home-slideshow">
			
			<!-- "previous slide" button -->
			<a class="home-slide-backward">back</a>
			
			<!-- container for the slides -->
				<div class="home-slide-images">
			<!-- first slide -->
			
			<cfset slide1 = application.apiv1.sectionsapi.getContentSection("Slide 1")>
			<cfoutput>
			<cfif isDefined("slide1.query.content")>#slide1.query.content#</cfif>
			</cfoutput>
			
			<!-- second slide -->
			<cfset slide2 = application.apiv1.sectionsapi.getContentSection("Slide 2")>
			<cfoutput>
			<cfif isDefined("slide2.query.content")>#slide2.query.content#</cfif>
			</cfoutput>
			
			<!-- third slide -->
			<cfset slide3 = application.apiv1.sectionsapi.getContentSection("Slide 3")>
			<cfoutput>
			<cfif isDefined("slide3.query.content")>#slide3.query.content#</cfif>
			</cfoutput>
			
			<!-- fourth slide -->
			<cfset slide4 = application.apiv1.sectionsapi.getContentSection("Slide 4")>
			<cfoutput>
			<cfif isDefined("slide4.query.content")>#slide4.query.content#</cfif>
			</cfoutput>
			
		    </div>

			<!-- "next slide" button -->
			<a class="home-slide-forward">forward</a>
			
			<!-- the tabs -->
			<div class="home-slide-tabs"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
			
			    <br style="clear:both" />
			</div>
		
		</cfif>
	
		<cfif isHomepage>
			<br style="clear:both" />
			<div class="highlightboxContainer">
				<!-- Content Spotlight 1 -->
				<cfset contentspotlight1 = application.apiv1.sectionsapi.getContentSection("Content Spotlight 1")>
				<cfoutput>
					<cfif isDefined("contentspotlight1.query.content")>#contentspotlight1.query.content#</cfif>
				</cfoutput>
				<!-- Content Spotlight 2 -->
				<cfset contentspotlight2 = application.apiv1.sectionsapi.getContentSection("Content Spotlight 2")>
				<cfoutput>
					<cfif isDefined("contentspotlight2.query.content")>#contentspotlight2.query.content#</cfif>
				</cfoutput>
				<!-- Content Spotlight 3 -->
				<cfset contentspotlight3 = application.apiv1.sectionsapi.getContentSection("Content Spotlight 3")>
				<cfoutput>
					<cfif isDefined("contentspotlight3.query.content")>#contentspotlight3.query.content#</cfif>
				</cfoutput>
			</div>
		</cfif>
