#SingleInstance, Force

settitlematchmode,3 ;this affects IfWinNotActive, 2= partial window match, 3=title must match exactly
keyList := []
keyList.insert(["3",500,0])  ;object = key,interval,nextInterval=0
keyList.insert(["Q",100,0])
toggle := false
return

~T::
	toggle := false
	settimer,auto,off
return

F6::
	toggle := true
	;loop % keyList.MaxIndex()
	;	keyList[a_index][3] := a_tickcount + keyList[a_index][2] ;reset nextinterval to default interval
	settimer,auto,10
return

auto:
	if (WinActive("Diablo III") && toggle) {
		loop % keyList.MaxIndex() { ;loop through our array of keys
			if (a_tickcount > keyList[a_index][3]) { ;if enough time has passed since last press do something
				keyList[a_index][3] := a_tickcount + keyList[a_index][2] ;set next interval
				key := keyList[a_index][1]
				send {%key% down}
				sleep 50
				send {%key% up}
      
			}
		}
	}
return
