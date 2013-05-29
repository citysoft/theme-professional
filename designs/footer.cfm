  </div><!--- closes imageSlideContainer --->
  <!-- /END -->
</div><!--- closes hmContentContainer --->
<!-- /END -->
<!-- FOOTER CONTAINER -->
<div class="footerContainer">
  <!-- QUOTES CONTAINER -->
  <div class="quotesContainer">
	<cfset varChapters = application.apiv1.sectionsapi.getContentSection("What Our Chapters Say")>
	<cfoutput>
		<cfif isDefined("varChapters.query.content")>#varChapters.query.content#</cfif>
	</cfoutput>
    <h2 class="quotesBoxTitle">What Our Clients Say</h2>
    <div class="quoteImg"><img src="../_data/n_0001/images/quotes.png" width="129" height="112" /></div>
    <div class="clientQuotes">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis urna vel mauris interdum consequat. Quisque augue tortor, lacinia ut pulvinar ut, sollicitudin ut tortor. Fusce eget nisi at enim ultricies cursus. Nunc sit amet nisl ante. Pellentesque vitae metus purus. Mauris dum. <br />
      <strong>- felis ac feugiat pulvinar</strong> </div>
    <br style="clear:both" />
  </div>
  <!-- /END -->
  <div class="footer_HighlightboxContainer">
  	<!-- Meta Spotlight 1 -->
	<cfset varms1 = application.apiv1.sectionsapi.getContentSection("Meta Spotlight 1")>
	<cfoutput>
		<cfif isDefined("varms1.query.content")>#varms1.query.content#</cfif>
	</cfoutput>
  	<!-- Meta Spotlight 2 -->
	<cfset varms2 = application.apiv1.sectionsapi.getContentSection("Meta Spotlight 2")>
	<cfoutput>
		<cfif isDefined("varms2.query.content")>#varms2.query.content#</cfif>
	</cfoutput>
  	<!-- Meta Spotlight 3 -->	
	<cfset varms3 = application.apiv1.sectionsapi.getContentSection("Meta Spotlight 3")>
	<cfoutput>
		<cfif isDefined("varms3.query.content")>#varms3.query.content#</cfif>
	</cfoutput>
  	<!-- Meta Spotlight 4 -->	
	<cfset varms4 = application.apiv1.sectionsapi.getContentSection("Meta Spotlight 4")>
	<cfoutput>
		<cfif isDefined("varms4.query.content")>#varms4.query.content#</cfif>
	</cfoutput>
    <br style="clear:both" />
  </div>
  <div class="footer_SocialContainer">
    <hr width="100%" size="1" noshade="noshade" color="#2e6281" />
    <a href="#"><img src="../_data/n_0001/images/icn_facebook.png" width="30" height="31" /></a><a href="#"><img src="../_data/n_0001/images/icn_twitter.png" width="30" height="31" hspace="2" /></a><a href="#"><img src="../_data/n_0001/images/icn_rss.png" width="30" height="31" hspace="2" /></a><a href="#"><img src="../_data/n_0001/images/icn_youtube.png" width="30" height="31" hspace="2" /></a> </div>
</div>
<!-- /END -->
<!-- FOOTER CONTAINER -->
<div class="copyrightContainer">
  <div class="copyright_content">lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis urna vel mauris interdum consequat. </div>
</div>
<!-- /END -->
</body>
</html>
