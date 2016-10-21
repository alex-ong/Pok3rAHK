#CommentFlag //
#InstallKeybdHook

// Author: Jarvis Prestidge - Modified to US layout by Alex Ong
// Description: Simulates my preferred keyboard layout, similiar to that of the Pok3r 60% keyboard
// on any keyboard without programmable keys. i.e. my laptop ^^

// <COMPILER: v1.1.22.00>


// =========================
// Pok3r Layout Marcos
// =========================


#Persistent
SetCapsLockState, AlwaysOff

//=====================Make Capslock behave like a function key==============
Capslock::
return

// Make Win Key + Capslock work like Capslock
Capslock & Tab::SendInput {Blind}{Capslock}



//==========================Arrow Keys =======================================
// Capslock + jkli (left, down, up, right)

Capslock & j::Send {Blind}{Left DownTemp}
Capslock & j up::Send {Blind}{Left Up}

Capslock & k::Send {Blind}{Down DownTemp}
Capslock & k up::Send {Blind}{Down Up}

Capslock & i::Send {Blind}{Up DownTemp}
Capslock & i up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}

//==========================WASD Arrow Keys ==================================
// Capslock + w (left, down, up, right)

Capslock & a::Send {Blind}{Left DownTemp}
Capslock & a up::Send {Blind}{Left Up}

Capslock & s::Send {Blind}{Down DownTemp}
Capslock & s up::Send {Blind}{Down Up}

Capslock & w::Send {Blind}{Up DownTemp}
Capslock & w up::Send {Blind}{Up Up}

Capslock & d::Send {Blind}{Right DownTemp}
Capslock & d up::Send {Blind}{Right Up}


//======================= Navigation Keys ====================================
// Capslock + uohy (pgdown, pgup, home, end)

Capslock & h::SendInput {Blind}{Home Down}
Capslock & h up::SendInput {Blind}{Home Up}

Capslock & n::SendInput {Blind}{End Down}
Capslock & n up::SendInput {Blind}{End Up}

Capslock & u::SendInput {Blind}{PgUp Down}
Capslock & u up::SendInput {Blind}{PgUp Up}

Capslock & o::SendInput {Blind}{PgDn Down}
Capslock & o up::SendInput {Blind}{PgDn Up}

//=============================First row=====================================

// Escape key, 
`::SendInput {Blind}{Escape}
` up::SendInput {Blind}{Escape Up}

//Hack fix for ctrl+shift+escape in windows.
^+`::SendInput {Blind}{Ctrl}{Shift}{Escape}

// Grave/Tilde. Note that ` symbol is an escape character
Capslock & `:: SendInput {Blind}{`` Down} 
Capslock & ` up:: SendInput {Blind}{`` Up} 

// Capslock + number keys equal function keys (F1-F10)
Capslock & 1::SendInput {Blind}{F1 Down}
Capslock & 1 up::SendInput {Blind}{F1 Up}
Capslock & 2::SendInput {Blind}{F2 Down}
Capslock & 2 up::SendInput {Blind}{F2 Up}
Capslock & 3::SendInput {Blind}{F3 Down}
Capslock & 3 up::SendInput {Blind}{F3 Up}
Capslock & 4::SendInput {Blind}{F4 Down}
Capslock & 4 up::SendInput {Blind}{F4 Up}
Capslock & 5::SendInput {Blind}{F5 Down}
Capslock & 5 up::SendInput {Blind}{F5 Up}
Capslock & 6::SendInput {Blind}{F6 Down}
Capslock & 6 up::SendInput {Blind}{F6 Up}
Capslock & 7::SendInput {Blind}{F7 Down}
Capslock & 7 up::SendInput {Blind}{F7 Up}
Capslock & 8::SendInput {Blind}{F8 Down}
Capslock & 8 up::SendInput {Blind}{F8 Up}
Capslock & 9::SendInput {Blind}{F9 Down}
Capslock & 9 up::SendInput {Blind}{F9 Up}
Capslock & 0::SendInput {Blind}{F10 Down}
Capslock & 0 up::SendInput {Blind}{F10 Up}
Capslock & -::SendInput {Blind}{F11 Down}
Capslock & - up:: SendInput {Blind}{F11 Up}
Capslock & =::SendInput {Blind}{F12 Down}
Capslock & = up:: SendInput {Blind}{F12 Up}

// Make Capslock & Backspace equivalent to delete
Capslock & BS::SendInput {Del Down}
Capslock & BS up::SendInput {Del Up}

//=============================Misc Keys=====================================
//(PrtSc,Scrlk,Pause, Insert, Delete)
Capslock & p:: SendInput {Blind}{PrintScreen}
Capslock & [:: SendInput {Blind}{Scrolllock}
Capslock & ]:: SendInput {Blind}{Pause}
Capslock & ;:: SendInput {Blind}{Insert}
//Capslock & `':: SendInput {Blind}{Insert}

