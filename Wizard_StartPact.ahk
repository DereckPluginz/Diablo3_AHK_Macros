SendMode, Input

setmousedelay, -1
setbatchlines, -1
setcontroldelay, -1

toggle := f6

*f6::
    if (!toggle)
    {
        toggle := !toggle
        SetTimer, routine, -0
    }
    else
    {
        SetTimer, routine, Off
        toggle := !toggle
    }
    return

routine:
    if (!toggle)
    {
        return
    }
    Send, {Blind}2 ; Wave of Force key
    start := A_TickCount
    while (A_TickCount - start < 180)
    {
        if (!toggle)
        {
            return
        }
        Sleep, 1
    }
    Send, {Blind}{LButton down} ; Electrocute key
    start := A_TickCount
    while (A_TickCount - start < 1450)
    {
        if (!toggle)
        {
            Send, {Blind}{LButton up} ; Electrocute key
            return
        }
        Sleep, 1
    }
    Send, {Blind}{LButton up} ; Electrocute key
    start := A_TickCount
    while (A_TickCount - start < 50)
    {
        if (!toggle)
        {
            return
        }
        Sleep, 1
    }
    Send, {Blind}1 ; Meteor key
    start := A_TickCount
    while (A_TickCount - start < 180)
    {
        if (!toggle)
        {
            return
        }
        Sleep, 1
    }
    Send, {Blind}{LButton down} ; Electrocute key
    start := A_TickCount
    while (A_TickCount - start < 800)
    {
        if (!toggle)
        {
            Send, {Blind}{LButton up} ; Electrocute key
            return
        }
        Sleep, 1
    }
    Send, {Blind}{RButton down} ; Disintegrate key
    start := A_TickCount
    while (A_TickCount - start < 500)
    {
        if (!toggle)
        {
            Send, {Blind}{LButton up} ; Electrocute key
            Send, {Blind}{RButton up} ; Disintegrate key
            return
        }
        Sleep, 1
    }
    Send, {Blind}{LButton up} ; Electrocute key
    Send, {Blind}{RButton up} ; Disintegrate key
    GoSub, routine
    return