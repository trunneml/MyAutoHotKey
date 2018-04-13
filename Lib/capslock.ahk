;
; This file makes my ms sculpt keyboard feel more like my
; ergo-dox keyboard (layout).
;

capslock_init()
{
  return
}

; CapsLock as ESC
CapsLock::Send {ESC}

; (partly) Restore function of SC027 -- this is ; in US and ö in DE
SC027::Send {SC027}

; Vim movement
CapsLock & H::Send {Left}
CapsLock & J::Send {Down}
CapsLock & K::Send {Up}
CapsLock & L::Send {Right}
SC027 & H::Send {Left}
SC027 & J::Send {Down}
SC027 & K::Send {Up}
SC027 & L::Send {Right}

; Above vim arrow keys
CapsLock & SC015::Send {Home}   ; SC015 is y in US and z in DE
CapsLock & U::Send {PgDn}
CapsLock & I::Send {PgUp}
CapsLock & O::Send {End}
SC027 & SC015::Send {Home}      ; SC015 is y in US and z in DE
SC027 & U::Send {PgDn}
SC027 & I::Send {PgUp}
SC027 & O::Send {End}

; Lefthand Enter and Backspace
CapsLock & Space::Send {Enter}
CapsLock & LAlt::Send {Blind}{BS}

; Windows 10 VDesktop-Navigation
CapsLock & WheelDown::Send {Blind}#^{Right}
CapsLock & WheelUp::Send {Blind}#^{Left}
#WheelDown::Send {Blind}#^{Right}
#WheelUp::Send {Blind}#^{Left}
