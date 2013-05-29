<!--- This script installs the content sections into CE for use by the slide show
	  in the Professinoal template --->
<!--- URL to run script:
http://www.domain.com/_data/n_0001/scripts/professionalInstallScript.cfm?testmode=0&sections=1&pages=1&showerrors=1 
change testmode from 1 to 0 to run it. --->
<cfparam name="url.testmode" type="boolean" default="true">
<cfparam name="url.sections" type="boolean" default="false">
<cfparam name="url.pages" type="boolean" default="false">
<cfif url.testmode>
	TEST MODE ONLY - NO INSERTS INTO CE DB<br>
</cfif>
<!--- Install Slide Content Channels --->
<font size=5>Install Professional Theme Content Channels</font><br>
<br>

<!--- Create a query and set its contents. --->
<cfset sectioninstallquery = QueryNew( "sectiontitle, sectioncontent" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div>
			<h1 class='screen-reader-text'>
				text here</h1>
			<p class='screen-reader-text'>
				text here</p>
			<table bgcolor='##e6eaed' border='0' cellpadding='0' cellspacing='0' width='909'>
				<tbody>
					<tr>
						<td height='340' valign='top' width='538'>
							<img height='340' src='../_data/n_0001/images/main_img1.jpg' width='538' /></td>
						<td height='340' valign='top' width='371'>
							<table border='0' cellpadding='0' cellspacing='0' width='330'>
								<tbody>
									<tr>
										<td width='15'>
											&nbsp;</td>
										<td>
											<br />
											<br />
											<br />
											<h1 class='hmSliderBoxTitle'>
												Main Feat. Content Slide...</h1>
											<p class='hm_imageSlider_txt'>
												Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis urna vel mauris interdum consequat. tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis urna vel mauris interdum consequat. tortor. Donec sagittis urna vel mauris interdum consequat. tortor.<br />
												<a href='##'>More</a></p>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		</div>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div>
			<h1 class='screen-reader-text'>
				text here</h1>
			<p class='screen-reader-text'>
				text here</p>
			<a href='##' title=''><img height='340' src='../_data/n_0001/images/hm_slide_temp2.jpg' width='909' /></a></div>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 3" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div>
			<h1 class='screen-reader-text'>
				text here</h1>
			<p class='screen-reader-text'>
				text here</p>
			<a href='##' title=''><img height='340' src='../_data/n_0001/images/hm_slide_temp3.jpg' width='909' /></a></div>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 4" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div>
			<h1 class='screen-reader-text'>
				text here</h1>
			<p class='screen-reader-text'>
				text here</p>
			<a href='##' title=''><img height='340' src='../_data/n_0001/images/hm_slide_temp4.jpg' width='909' /></a></div>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Spotlight 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='hm_highlightbox'>
		<img height='108' src='../_data/n_0001/images/highlightbox_pic1.jpg' width='287' />
		<h2 class='hmHighlightBoxTitle'>
			Content Spotlight 1</h2>
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac massa elit, nec sagittis eros. Maecenas massa neque, hendrerit id fringilla vel, interdum quis tellus. Duis ac massa elit, nec sagittis eros. <a href='##'>More</a></div>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Spotlight 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='hm_highlightbox'>
		<img height='108' src='../_data/n_0001/images/highlightbox_pic2.jpg' width='287' />
		<h2 class='hmHighlightBoxTitle'>
			Content Spotlight 2</h2>
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac massa elit, nec sagittis eros. Maecenas massa neque, hendrerit id fringilla vel, interdum quis tellus. Duis ac massa elit, nec sagittis eros. <a href='##'>More</a></div>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Spotlight 3" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='hm_highlightbox'>
		<img height='108' src='../_data/n_0001/images/highlightbox_pic3.jpg' width='287' />
		<h2 class='hmHighlightBoxTitle'>
			Content Spotlight 3</h2>
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac massa elit, nec sagittis eros. Maecenas massa neque, hendrerit id fringilla vel, interdum quis tellus. Duis ac massa elit, nec sagittis eros. <a href='##'>More</a></div>
</div>" ) />
		
		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Meta Spotlight 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='footer_highlightbox'>
      <h4 class='metaHighlightBoxTitle'>Meta Spotlight 1</h4>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac massa elit, nec sagittis eros. Maecenas massa neque, hendrerit id fringilla vel, interdum quis tellus. <a href='##'>More</a><br />
    </div>" ) />		

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Meta Spotlight 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='footer_highlightbox'>
      <h4 class='metaHighlightBoxTitle'>Meta Spotlight 2</h4>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac massa elit, nec sagittis eros. Maecenas massa neque, hendrerit id fringilla vel, interdum quis tellus. <a href='##'>More</a></div>" ) />		

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Meta Spotlight 3" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='footer_highlightbox'>
      <h4 class='metaHighlightBoxTitle'>Meta Spotlight 3</h4>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac massa elit, nec sagittis eros. Maecenas massa neque, hendrerit id fringilla vel, interdum quis tellus. <a href='##'>More</a></div>" ) />		

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Meta Spotlight 4" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='footer_highlightbox'>
      <h4 class='metaHighlightBoxTitle'>Meta Spotlight 4</h4>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac massa elit, nec sagittis eros. Maecenas massa neque, hendrerit id fringilla vel, interdum quis tellus. <a href='##'>More</a></div>" ) />		

		<!---<cfset QueryAddRow( installquery ) />
		<cfset QuerySetCell( installquery, "sectiontitle", "" ) />
		<cfset QuerySetCell( installquery, "sectioncontent", "" ) />--->

<cfoutput query="sectioninstallquery">

	<!--- Checks for existance of page so that duplicates are not accidentally imported. --->
	<cfquery name="dupecheck" datasource="#request.dsn#">
		SELECT title
		FROM contentT
		WHERE title = <cfqueryparam value="#sectioninstallquery.sectiontitle#" cfsqltype="CF_SQL_VARCHAR">
	</cfquery>

	<cfif NOT dupecheck.recordcount>
	<!--- write to db --->
		<cfif NOT url.testmode and url.sections EQ 1>
			<cfquery name="insertcontentchannels" datasource="#request.dsn#">
				INSERT INTO contentT (
					title
					,content
					,createdate
					)
				VALUES (
					<cfqueryparam value="#sectioninstallquery.sectiontitle#" cfsqltype="CF_SQL_VARCHAR">
					,<cfqueryparam value="#sectioninstallquery.sectioncontent#" cfsqltype="CF_SQL_VARCHAR">
					,#CreateODBCDateTime(now())#
					)
			</cfquery>
		</cfif>
	</cfif>
</cfoutput>

<!--- Create a query and set its contents. --->
<cfset pageinstallquery = QueryNew( "pagetitle, pagenavtitle, pagecontent" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "About" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "About" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "About Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Services" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Services" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Services Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "News" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "News" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "News Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Events" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Events" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Events Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Resources" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Resources" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Resources Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Programs" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Programs" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Programs Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Join" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Join" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Join Page Content" ) />

	<!--- Get Page Template --->
	<cfquery name="getpagetemplateid" datasource="#request.dsn#">
		SELECT pagetemplateid
		FROM pagetemplate
		WHERE name = <cfqueryparam value="div_c1" cfsqltype="CF_SQL_VARCHAR">
	</cfquery>

<cfif CGI.REMOTE_ADDR EQ "24.5.71.152">
	<cfdump var="#pageinstallquery#" label=""/>
</cfif>

<!--- Insert to the Destination DB --->
<cfoutput query="pageinstallquery">

	<!--- Checks for existance of page so that duplicates are not accidentally imported. --->
	<cfquery name="dupecheck" datasource="#request.dsn#">
		SELECT pagetitle
		FROM page
		WHERE pagetitle = <cfqueryparam value="#pageinstallquery.pagetitle#" cfsqltype="CF_SQL_VARCHAR">
	</cfquery>

	<cfif NOT dupecheck.recordcount>
	<!--- Insert page info --->
		<cfif NOT url.testmode and url.pages EQ 1>
			<cfquery name="insertpage" datasource="#request.dsn#">
				INSERT INTO page(
					parentpageID,
					pagetemplateid,	
					nodeid,
					pageTitle,
					pageNavTitle,
					approvallevel,
					CreatorUserID,
					CreateDate
					)
				Values(
					4
					,<cfqueryparam value="#getpagetemplateid.pagetemplateid#" cfsqltype="CF_SQL_VARCHAR">
					,1
					,<cfqueryparam value="#pageinstallquery.pagetitle#" cfsqltype="CF_SQL_VARCHAR">
					,<cfqueryparam value="#pageinstallquery.pagenavtitle#" cfsqltype="CF_SQL_VARCHAR">
					,4
					,4295
					,#CreateODBCDateTime(now())#
					)
				SELECT @@IDENTITY pageID
			</cfquery>
			
			<!--- Insert page content --->
			<cfquery name="insertpagecontent" datasource="#request.dsn#">			
				INSERT INTO PageContent
					(
					PageID,
					HTMLContent,
					TemplatePosition,
					CreatorUserID,
					CreateDate,
					ApplicationPK
					)
				VALUES 
					(
					<cfqueryparam value="#insertpage.pageid#" cfsqltype="CF_SQL_INTEGER">
					,<cfqueryparam value="#pageinstallquery.pagecontent#" cfsqltype="CF_SQL_VARCHAR">
					,'c1'
					,4295
					,#CreateODBCDateTime(now())#
					,0
					)
			</cfquery>
		</cfif>
	</cfif>
</cfoutput>
DONE!
