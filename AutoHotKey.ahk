#SingleInstance force
#Persistent
FileEncoding, UTF-8

; init submodules 
; capslock_init()
windowmanager_init()
hotstringhelper_init()
hotstrings_init()
mouse_init()

; Auto Reloader
SetTimer,CheckIfAutoReloadNeeded,500
Return

CheckIfAutoReloadNeeded:
FileGetAttrib, attribs, %A_ScriptFullPath%
IfInString, attribs, A
{
    FileSetAttrib, -A, %A_ScriptFullPath%
    Reload
}
Return
