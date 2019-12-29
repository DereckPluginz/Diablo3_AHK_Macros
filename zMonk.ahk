#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------
; ----------------------------------------

; ----- my edit, script, begins below

; total is three labels and one hotkey F1

Blind_b1:
Send, {2}
return

epiphany_b2:
Send, {3}
return

Mantra_b3:
Send, {q}
return

~LAlt Up:: return

#MaxThreadsPerHotkey 3
F1::
toggle := !toggle 
GoSub, Blind_b1
GoSub, epiphany_b2
GoSub, Mantra_b3
SetTimer, Blind_b1, 1000
SetTimer, epiphany_b2, 1000
SetTimer, Mantra_b3, 1000
if !(toggle) {
SetTimer, Blind_b1, Off
SetTimer, epiphany_b2, Off
SetTimer, Mantra_b3, Off
}
return

; my edit, script, ends above -----