; This file by Alan J. Hogan
; https://alanhogan.com/tips/swap-left-alt-and-ctrl-keys-in-windows
; Switches the left Control and Alt keys.
; Modified by Zell Liew to set Right Alt key as Control

; Makes left modifiers behave like MacOS
LAlt::LControl 
LWin::LAlt
LControl::LWin                    

; Make right modifiers behave like MacOS too
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
