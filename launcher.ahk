#SingleInstance Force
Gui Add, ActiveX, w980 h630 vWB,s.Explorer
WB.Silent := True
WB.Navigate("https://prokitpvp.wixsite.com/clientmenu")
Gui, Add, Button, x460 y650 h40 glaunch, Launch
Gui, Add, Button, x10 y650 ghome, Home
Gui, Add, Button, x948 y650 gcredit, Xd_pro
Gui, Add, Button, x60 y650 gmsg, Live YT Minecraft
Gui, Show,,FirePVP Launcher
&::
send, §
return
!c::
send, /
Sleep, 200
send, gamemode c{Enter}
return
!s::
send, /
Sleep, 200
send, gamemode s{Enter}
return
!a::
send, /
Sleep, 200
send, gamemode a{Enter}
Return
!t::
send, /
Sleep, 200
send, summon tnt{Enter}
return
msg:
WB.Navigate("https://www.youtube.com/channel/UCQvWX73GQygcwXOTSf_VDVg")
return
Launch:
Loop Files, %A_ScriptDir%\Mods\*.exe
    Run %A_LoopFilePath%
Loop Files, %A_ScriptDir%\Mods\*.mcpack
    Run %A_LoopFilePath%
Loop Files, %A_ScriptDir%\Mods\*.ahk
    Run %A_LoopFilePath%
FileCopy, Mods\global_resource_packs.json, Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftpe,
return
credit:
run "https://www.youtube.com/channel/UC9LlBk0_PHZOG6NZEKfrijw"
return
home:
WB.Navigate("https://prokitpvp.wixsite.com/clientmenu")
return
GuiClose:
Exitapp
Return
