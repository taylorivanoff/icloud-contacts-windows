; Startup + icloud-contacts:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Contacts" '"$INSTDIR\iCloud Contacts.exe"'
  WriteRegStr HKCU "Software\Classes\icloud-contacts" "" "URL:iCloud Contacts"
  WriteRegStr HKCU "Software\Classes\icloud-contacts" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-contacts\shell\open\command" "" '"$INSTDIR\iCloud Contacts.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Contacts"
  DeleteRegKey HKCU "Software\Classes\icloud-contacts"
!macroend
