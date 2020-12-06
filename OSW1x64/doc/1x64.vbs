#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	do
		crt.Screen.Send chr(13) & "switch write 12" & chr(13)
		crt.Screen.WaitForString ">", 2
		crt.Sleep 2000
	loop
End Sub
