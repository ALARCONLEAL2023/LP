On error resume next

'=============================================== VARS ===============================================
dontShowWindow = 0 	
bWaitOnReturn = True		

Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

FileDirectory = fso.GetParentFolderName(WScript.ScriptFullName)
ParentFileDirectory = fso.GetParentFolderName(FileDirectory)

'PinLinks_path = ParentFileDirectory & "\Common\PinLinks.vbs folderName"
Kiosk_path = ParentFileDirectory & "\Common\Browser-Kiosk.vbs http://tnacawvd101.tnsautoca.techint.net/Citrix/StoreWeb"

'=============================================== MAIN ===============================================

shell.run Kiosk_path,dontShowWindow,bWaitOnReturn