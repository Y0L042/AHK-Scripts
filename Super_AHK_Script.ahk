#Requires AutoHotkey v2.0

; #region General Hotkeys
; Hotkey "F13", Debug_General_HotkeyTest
; Hotkey "!Space", General_PlayPauseBackgroundMedia   ;General_AltTabPausePlay

Hotkey "#F9", General_PlayPauseBackgroundMedia
Hotkey "F21", General_PlayPauseBackgroundMedia

Hotkey "F19", General_Forward
Hotkey "F22", General_Backward


; #endregion General Hotkeys
  
; #region DemoRegion
; #endregion DemoRegion
 
; #region General Functions 
General_PlayPauseBackgroundMedia(ThisHotKey)
{
    SendEvent "{Media_Play_Pause}"
}


DEPRECIATED_General_AltTabPausePlay(ThisHotKey)                                                                 
{
    SetKeyDelay(150)
    AltTabFunc(ThisHotKey)                                 
    SendInput "{Pause}"    
    AltTabFunc(ThisHotKey)    
}   

General_Forward(ThisHotKey)         
{
    SendInput "{Browser_Forward}" 
}

General_Backward(ThisHotKey)
{
    SendInput "{Browser_Back}"
}

General_DisableKey(ThisHotkey)
{
    return
}



General_AdditionalFunctionKeys(ThisHotKey)
{


}



Debug_General_HotkeyTest(ThisHotkey)
{
    MsgBox("This hotkey:   " ThisHotkey , "Hello World!")
}

; #endregion General Functions




; #region VSCode Hotkeys
HotIfWinactive "ahk_exe Code.exe" ; START "ahk_exe Code.exe"

Hotkey "#F9", General_PlayPauseBackgroundMedia
Hotkey "F21", General_PlayPauseBackgroundMedia

Hotkey "#F2", VSCode_Insert_Class_Boilerplate_Template
Hotkey "F14", VSCode_Insert_Class_Boilerplate_Template

HotIfWinactive ; START "ahk_exe Code.exe"
; #endregion VSCode Hotkeys



; #region VSCode Functions
VSCode_Insert_Class_Boilerplate_Template(ThisHotKey)
{
    old_clip := ClipboardAll()  ; Save all clipboard content
    A_Clipboard := 
    "
    (
        #region Boilerplate  
        public partial class CLASSNAME
        {
        
        }
        #endregion Boilerplate
        
        
        
        #region Private Variables
        public partial class CLASSNAME
        {
        
        }
        #endregion Private Variables
        
        
        
        #region Public Variables
        public partial class CLASSNAME
        {
            
        }
        #endregion Public Variables
        
        
        
        #region Private Methods
        public partial class CLASSNAME
        {
            
        }
        #endregion Private Methods
        
        
        
        #region Public Methods
        public partial class CLASSNAME
        {
            
        }
        #endregion Public Methods
        
        
        
        #region Utility Methods
        public partial class CLASSNAME
        {
            
        }
        #endregion Utility Methods



    )"

    Send "^v"
    Sleep 500  ; Wait a bit for Ctrl+V to be processed
    A_Clipboard := old_clip  ; Restore previous clipboard content

    ; Loop 12
    ; {
    ;     SendInput "{Del}"
    ; }
}
; #endregion VSCode Functions



; #region Blender Hotkeys
HotIfWinactive "ahk_exe blender.exe" ; START "ahk_exe blender.exe"

Hotkey "F13", Blender_QuickFavouritesMenu
Hotkey "F15", General_PlayPauseBackgroundMedia
Hotkey "F16", Blender_FocusOnActiveObject
Hotkey "F19", Blender_SelectAll_and_KeyFrame

HotIfWinactive ; END "ahk_exe blender.exe"

; #endregion Blender Hotkeys


; #region Blender Functions
Blender_SelectCollection_and_KeyFrame(ThisHotkey)
{
    ; Blender Keyframe  Hotkey: Shift F1

    ; SetKeyDelay(50)
    SendInput "+g"
    SendInput "c"
    SendInput "i"
    SendInput "+F1"
    SendInput "!a"  
}


Blender_SelectAll_and_KeyFrame(ThisHotKey)
{
    ; Blender Keyframe  Hotkey: Shift F1

    ; SendMode "Event"
    ; SetKeyDelay(50)
    SendInput "a"
    SendInput "i"
    SendInput "+F1"
    SendInput "!a"
}

Blender_FocusOnActiveObject(ThisHotkey)
{
    SendInput "{NumpadDot}"
}

Blender_QuickFavouritesMenu(ThisHotkey)
{
    SendInput "q"
}

; #endregion Blender Functions




; #region Utility Functions
AltTabFunc(ThisHotKey)
{
    SetKeyDelay(150)                            
    Send "{LAlt down}"
    Send "{Tab}"
    Send "{LAlt up}"  
}

; #endregion Utility Functions