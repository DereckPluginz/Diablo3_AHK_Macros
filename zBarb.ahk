#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------
; ----------------------------------------

; ----- my edit, script, begins below

; total is three labels and one hotkey F1

warCry_b1:
Send, {q}
return

TShout_b3:
Send, {3}
return



~LAlt Up:: return

#MaxThreadsPerHotkey 2
F1::
toggle := !toggle 
GoSub, warCry_b1
GoSub, TShout_b3
SetTimer, warCry_b1, 1
SetTimer, TShout_b3, 1000
if !(toggle) {
SetTimer, warCry_b1, Off
SetTimer, TShout_b3, Off
}
return

; my edit, script, ends above -----
