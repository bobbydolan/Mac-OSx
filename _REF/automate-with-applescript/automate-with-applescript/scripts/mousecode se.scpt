set delayOne to 0.2
set pageDelay to 2


set coordinateName to the text returned of (display dialog "Name of Coordinate Marker?" default answer "")

do shell script "eval $(/usr/libexec/path_helper -s);  cliclick p:. | cut -d ',' -f2 |  tr -d \"\\n\" | pbcopy"
set yCoordinate to the clipboard
delay delayOne



do shell script "eval $(/usr/libexec/path_helper -s);  cliclick p:. | cut -d ',' -f1 |  tr -d \"\\n\" | pbcopy"
set xCoordinate to the clipboard
delay delayOne


set the clipboard to "
set " & coordinateName & "X to " & xCoordinate & "
set " & coordinateName & "Y to " & yCoordinate & "

do shell script \"eval $(/usr/libexec/path_helper -s); cliclick c:\" & " & coordinateName & "X & \",\" & " & coordinateName & "Y
delay delayOne"




delay delayOne

tell application "Script Editor" to activate
delay delayOne

tell application "System Events"
	keystroke "v" using command down
	delay delayOne
	delay delayOne
	delay delayOne

	key code 36
	delay delayOne

	key code 36
	delay delayOne

end tell
