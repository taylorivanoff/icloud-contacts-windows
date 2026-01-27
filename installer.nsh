!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Contacts" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\icloud-contacts" "" "URL:iCloud Contacts"
  WriteRegStr HKCU "Software\Classes\icloud-contacts" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-contacts\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Contacts"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\icloud-contacts"
!macroend
