--  In-Range.applescript
--
--  Created by Samuel Souder on 2008-11-13.
--  Copyright (c) 2008 BitLeap, LLC. All rights reserved.
--

on run
	-- disable screensaver password requirement
	do shell script "defaults -currentHost write com.apple.screensaver askForPassword -int 0"
	-- update loginwindow to take that plist change
	do shell script "notif"
	-- turn off the screensaver
	tell application "ScreenSaverEngine" to quit
end run
