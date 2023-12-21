#Requires AutoHotkey v2.0


Hotkey "F19", Forward
Hotkey "F22", Backward



Forward(ThisHotKey)
{
    Send "Browser_Forward"
}

Backward(ThisHotKey)
{
    Send "Browser_Back"
}