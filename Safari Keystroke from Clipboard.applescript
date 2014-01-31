tell application "Safari"
	activate
end tell

set backspace to ASCII character 8

get the clipboard
set keystrokeString to (replacement of return by tab for the result)
set keystrokeString to (replacement of linefeed by tab for the result)
set keystrokeString to (replacement of tab by tab & backspace for the result)

tell application "System Events"
	keystroke keystrokeString as text
end tell

on replacement of oldDelim by newDelim for sourceString
	set oldTIDs to text item delimiters of AppleScript
	set text item delimiters of AppleScript to oldDelim
	set strtoks to text items of sourceString
	set text item delimiters of AppleScript to newDelim
	set joinedString to strtoks as string
	set text item delimiters of AppleScript to oldTIDs
	joinedString
end replacement
