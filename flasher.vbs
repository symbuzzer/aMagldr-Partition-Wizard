set objShell=WScript.CreateObject("WScript.Shell")

objShell.Run("mtty1.42.exe")
wscript.Sleep 1000
objShell.AppActivate "Open Port Setting"

if objShell.AppActivate("Open Port Setting") Then
 objShell.SendKeys "USB{ENTER}"
 wscript.Sleep 100
 objShell.Run "taskkill /im mtty1.42.exe",1,true
else
 objShell.AppActivate "Open Port Setting"
 wscript.Sleep 100
 objShell.SendKeys "USB{ENTER}"
 wscript.Sleep 100
 objShell.Run "taskkill /im mtty1.42.exe",1,true
end if

wscript.Sleep 500
objShell.Run "taskkill /im mtty1.42.exe",1,true
objShell.Run("mtty1.42.exe")
wscript.Sleep 1000
objShell.AppActivate "Open Port Setting"

if objShell.AppActivate("Open Port Setting") Then
 objShell.SendKeys "USB{ENTER}"
else
 objShell.AppActivate "Open Port Setting"
 wscript.Sleep 100
 objShell.SendKeys "USB{ENTER}"
end if
wscript.Sleep 500

if objShell.AppActivate("mtty") Then
 wscript.Sleep 100
 objShell.SendKeys "{ENTER}"
 wscript.Sleep 100
 objShell.Run "taskkill /im mtty1.42.exe",1,true
 wscript.Sleep 100
 msgbox("An error occured. Please make sure;"&vbnewline&"-Phone was connected."&vbnewline&"-Mtty specific wince drivers installed."&vbnewline&" "&vbnewline&"If this message frozen, kill mtty1.42.exe from Task Manager."&vbnewline&"For retry, select 'Apply last Partition Config' option from main menu.")
 wscript.quit
end if

if objShell.AppActivate("Multi-Port TTY Version 1.42") Then
 objShell.SendKeys "Sending test command by Ali Beyaz...{ENTER}"
else
 objShell.AppActivate "Multi-Port TTY Version 1.42"
 wscript.Sleep 100
 objShell.SendKeys "Sending test command by Ali Beyaz...{ENTER}"
end if

wscript.Sleep 1000
objShell.AppActivate "Multi-Port TTY Version 1.42"
wscript.Sleep 50
objShell.SendKeys "ad fastformat{ENTER}"
wscript.Sleep 1000
objShell.AppActivate "Multi-Port TTY Version 1.42"
wscript.Sleep 50
objShell.SendKeys "ad addpart misc 8 50 1{ENTER}"
wscript.Sleep 1000
objShell.AppActivate "Multi-Port TTY Version 1.42"
wscript.Sleep 50
objShell.SendKeys "ad addpart boot 20 61 9{ENTER}"
wscript.Sleep 1000
objShell.AppActivate "Multi-Port TTY Version 1.42"
wscript.Sleep 50
objShell.SendKeys "ad addpart system 0388 50 1{ENTER}"
wscript.Sleep 1000
objShell.AppActivate "Multi-Port TTY Version 1.42"
wscript.Sleep 50
objShell.SendKeys "ad addpart cache 28 50 41{ENTER}"
wscript.Sleep 1000
objShell.AppActivate "Multi-Port TTY Version 1.42"
wscript.Sleep 50
objShell.SendKeys "ad addpart userdata 0948 50 41{ENTER}"
wscript.Sleep 1000
objShell.AppActivate "Multi-Port TTY Version 1.42"
wscript.Sleep 50
objShell.SendKeys "Bulls Eye :D -- Rebooting...{ENTER}"
wscript.Sleep 4500
wscript.Sleep 1000
objShell.AppActivate "Multi-Port TTY Version 1.42"
wscript.Sleep 50
objShell.SendKeys "poweroff{ENTER}"
wscript.Sleep 500