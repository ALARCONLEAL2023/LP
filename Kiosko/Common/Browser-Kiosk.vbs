On error resume next

'It opens a defined URL and browser in kiosk mode.
'Parameters:
'    1 - URL (str): Url to open with the browser selected.
'Returns: -

'========================================= VARS ================================================

Set Arg = WScript.Arguments
Set shell = CreateObject("WScript.Shell")

'========================================= MAIN ================================================

URL = Arg(0)

shell.run "iexplore.exe -k "+URL

set Arg = Nothing