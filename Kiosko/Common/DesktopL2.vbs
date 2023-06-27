'On error resume next

'It opens a multi-application kiosk.
'Parameters:
'    1 - Links folder name (str): contains the links saved in StartMenu.
'    	 
'========================================= VARS ================================================

Set Arg = WScript.Arguments
Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("scripting.fileSystemObject")
FileDirectory = fso.GetParentFolderName(WScript.ScriptFullName)
user = shell.ExpandEnvironmentStrings("%USERNAME%")
iShowWindow = 1
DontShowWindow = 0
bWaitOnReturn = True

'========================================= FUNCTIONS ================================================

Function UpdateLinks()
'========== Links in start menu are deleted =========

sDeleteFolderCurrentUser = """C:\Users\" + user + "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"""
sDeleteFolderAllUsers = """C:\ProgramData\Microsoft\Windows\Start Menu\Programs"""
shell.Run "cmd /c rmdir /s /q " + sDeleteFolderAllUsers,iShowWindow,bWaitOnReturn
shell.Run "cmd /c rmdir /s /q " + sDeleteFolderCurrentUser,iShowWindow,bWaitOnReturn
shell.Run "cmd /c mkdir " + sDeleteFolderAllUsers,iShowWindow,bWaitOnReturn
shell.Run "cmd /c mkdir " + sDeleteFolderCurrentUser,iShowWindow,bWaitOnReturn

'========== New links are copied to start menu ======

sCmd = "cmd /c robocopy"
sSource = FileDirectory & "\LINKS\" + FolderName
sDestination = """C:\Users\" + user + "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"""
sSwitches = "/E"
shell.Run sCmd & " " & sSource & " " & sDestination & " " & sSwitches,iShowWindow,bWaitOnReturn

End Function


'========================================= MAIN ================================================

'It receives 1 parameter : 1-FolderName
FolderName = Arg(0)

shell.run FileDirectory & "\Zonemap.vbs"
UpdateLinks()
shell.run "explorer.exe",2
wscript.sleep 5000
UpdateLinks()

set Arg = Nothing
