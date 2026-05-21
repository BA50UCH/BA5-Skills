#Requires AutoHotkey v2.0
global toggle := false
global recoil := 5

F6:: {
    global toggle
    toggle := !toggle
    SoundBeep(toggle ? 750 : 400, 150)
}

F7:: {
    global recoil
    recoil := 3
    SoundBeep(600, 100)
}
F8:: {
    global recoil
    recoil := 5
    SoundBeep(700, 100)
}
F9:: {
    global recoil
    recoil := 7
    SoundBeep(800, 100)
}

~LButton:: {
    global toggle, recoil
    if toggle {
        while GetKeyState("LButton", "P") {
            DllCall("mouse_event", "UInt", 0x0001, "Int", 0, "Int", recoil, "UInt", 0, "Int", 0)
            Sleep(10)
        }
    }
}