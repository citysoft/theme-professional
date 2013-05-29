theme-professional
==================

Free CitySoft design theme named Professional

Themes in CE can be in a global folder or in node (or site) specific folders.  Detailed information about this is
available in our Theming Guide.

In the node specific implementation of a theme, the admin creates a theme in the Admin > Settings > Site Settings
screen in CE using the head.cfm and foot.cfm files.  Then the more detailed theme files (e.g. header.cfm,
footer.cfm, etc.) would be located node (or site) specific folders (e.g. /n_0001/designs/, n_0002/designs/
and so forth).

The installation script automates much of the work of deploying a basic site using the theme.  This script is
run after CE has been set up.  It is expected to be run from within an installation of CE.  The script will
set up some blank, generic web pages that can be seen within the navigation menus.  It also sets up a number
of content sections that are used to manage elements of the home page (slides, call out boxes, etc.).
