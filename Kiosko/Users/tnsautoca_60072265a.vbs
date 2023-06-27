On error resume next

'=============================================== VARS ===============================================
dontShowWindow = 0 	
bWaitOnReturn = True		

Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

FileDirectory = fso.GetParentFolderName(WScript.ScriptFullName)
ParentFileDirectory = fso.GetParentFolderName(FileDirectory)

PinLinks_path = ParentFileDirectory & "\Common\DesktopL2.vbs APP_CAB_MPM_CYCLET_DESKTOP"

'=============================================== MAIN ===============================================

'shell.run PinLinks_path,dontShowWindow,bWaitOnReturn

shell.run "explorer.exe"

mensaje=MsgBox("COFI LP KIOSK!",305,"Primer ejemplo")
wscript.echo(Mensaje)











