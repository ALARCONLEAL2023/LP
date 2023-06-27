On error resume next

'It add zones and sets its behaviour.  
'Value Data: Enter the value of the zone you want to assign.
'1 = Intranet Zone
'2 = Trusted Sites Zone
'3 = Internet Zone
'4 = Restricted Sites Zone
'Parameters:-
'Returns: -

'========================================= VARS ================================================

Set Arg = WScript.Arguments
Set shell = CreateObject("WScript.Shell")

'========================================= MAIN ================================================

shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\techint.net\http", 1, "REG_DWORD"
shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\techint.net\https", 1, "REG_DWORD"
'shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\techint.net\file", 1, "REG_DWORD"

shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\tnsautoca.net\http", 1, "REG_DWORD"
shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\tnsautoca.net\https", 1, "REG_DWORD"
'shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\tnsautoca.net\file", 1, "REG_DWORD"

shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\tenaris.com\adfs\https", 3, "REG_DWORD"

shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\tamsa.techint.net\mail\https", 3, "REG_DWORD"

shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\tenaris.net\sip-tower-mx\http", 3, "REG_DWORD"
shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\tenaris.net\idm\https", 3, "REG_DWORD"



