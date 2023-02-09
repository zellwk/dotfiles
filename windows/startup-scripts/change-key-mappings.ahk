; This file by Alan J. Hogan
; https://alanhogan.com/tips/swap-left-alt-and-ctrl-keys-in-windows
; Switches the left Control and Alt keys.
; Modified by Zell Liew to set Right Alt key as Control

; Makes left modifiers behave like MacOS
LAlt::LControl 
LWin::LAlt
LControl::LWin                    

; Mirror shortcuts for changing text insertion points on Mac
RAlt:: Control
AppsKey::Control 

; Set RAlt + Left as Home 
RAlt & Left:: 
If GetKeyState("Shift")
  Send, +{Home} 
else 
  Send, {Home}
Return

; Set RAlt + Right as End 
RAlt & Right:: 
If GetKeyState("Shift")
  Send, +{End} 
else 
  Send, {End}
Return

; Replaces F11 and F12 with Pgup and Pgdown 
; They're more useful than full-screening stuff. 
F11::Pgup 
F12::PgDn
F10::F11 ; Replaces full screen (F11)