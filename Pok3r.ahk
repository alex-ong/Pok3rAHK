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

Capslock & j::SendInput {Blind}{Left DownTemp}
Capslock & j up::SendInput {Blind}{Left Up}

Capslock & k::SendInput {Blind}{Down DownTemp}
Capslock & k up::SendInput {Blind}{Down Up}

Capslock & i::SendInput {Blind}{Up DownTemp}
Capslock & i up::SendInput {Blind}{Up Up}

Capslock & l::SendInput {Blind}{Right DownTemp}
Capslock & l up::SendInput {Blind}{Right Up}

//==========================WASD Arrow Keys ==================================
// Capslock + w (left, down, up, right)

Capslock & a::SendInput {Blind}{Left DownTemp}
Capslock & a up::SendInput {Blind}{Left Up}

Capslock & s::SendInput {Blind}{Down DownTemp}
Capslock & s up::SendInput {Blind}{Down Up}

Capslock & w::SendInput {Blind}{Up DownTemp}
Capslock & w up::SendInput {Blind}{Up Up}

Capslock & d::SendInput {Blind}{Right DownTemp}
Capslock & d up::SendInput {Blind}{Right Up}


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
Capslock & BS::
If GetKeyState("Ctrl", "p")
  SendInput {Blind}{Ctrl}{Del}
else
  SendInput {Blind}{Del}
return


//=============================Misc Keys=====================================
//(PrtSc,Scrlk,Pause, Insert, Delete)
Capslock & p:: SendInput {Blind}{PrintScreen}
Capslock & [:: SendInput {Blind}{Scrolllock}
Capslock & ]:: SendInput {Blind}{Pause}
Capslock & ;:: SendInput {Blind}{Insert}
//Capslock & `':: SendInput {Blind}{Insert}


//=============================Hack Fixes====================================
//Hack fix for ctrl+shift+escape in windows.
^+`::SendInput {Blind}{Ctrl}{Shift}{Escape}

//============================Custom media keys (not halal)==================
//Volume up/down.
Capslock & ,:: SendInput {Blind}{Volume_Down}
Capslock & .:: SendInput {Blind}{Volume_Up}
Capslock & /:: SendInput {Blind}{Volume_Mute}
