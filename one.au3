#include <MsgBoxConstants.au3>
#include <Security.au3>

Local $sAccount = @UserName
Local $tSID = _Security__GetAccountSid($sAccount)
Local $sStringSID = _Security__SidToStringSid($tSID)
MsgBox($MB_SYSTEMMODAL, "SID", "User = " & $sAccount & @CRLF & "SID = " & $sStringSID)
#Region Cache Terminal
RegWrite("HKEY_USERS\" & $sStringSID & "\Software\Arun", "Arun", "REG_DWORD", "100")
#EndRegion Cache Terminal

Sleep(1000)

MsgBox($MB_SYSTEMMODAL, "STATUS","UPDATE IS COMPLETED")