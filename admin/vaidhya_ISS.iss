; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Vaidhya"
#define MyAppVersion "1.0"
#define MyAppPublisher "Voidex"
#define MyAppURL "karthikr.xyz"
#define MyAppExeName "Vaidhya.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CFEE90E5-D619-4052-A2E8-7E5B8004B11D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\karth\OneDrive\Documents\Licence\LICENCE Vaidhya.txt
InfoBeforeFile=C:\Users\karth\OneDrive\Documents\Licence\Instruction Vaidhya.txt
InfoAfterFile=C:\Users\karth\OneDrive\Documents\Licence\Instruction - last - Vaidhya.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=K:\Vaidhya-A\Vaidhya
OutputBaseFilename=vaidhya_WINDOWS_x64_setup
SetupIconFile=K:\Vaidhya-A\Vaidhya\logo.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "K:\Vaidhya-A\Vaidhya\dist\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "K:\Vaidhya-A\Vaidhya\dist\assets\*"; DestDir: "{app}/assets"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

