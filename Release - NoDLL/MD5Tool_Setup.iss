; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MD5チェックツール"
#define MyAppVersion GetFileVersion("MD5チェックツール.exe")
#define MyAppPublisher "Copyright (C) かさ 2006 - 2015"
#define MyAppURL "http://www7a.biglobe.ne.jp/~kasachan/MD5Tool.html"
#define MyAppExeName "MD5チェックツール.exe"
[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8DA59541-E0DF-4564-B4E5-4813B29F69E9}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppCopyright={#MyAppPublisher}
AppPublisher=かさ
AppPublisherURL="http://www7a.biglobe.ne.jp/~kasachan/"
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=C:\Users\にゃん子\Documents\Visual Studio 2012\Projects\MD5チェックツール\Release - NoDLL
OutputBaseFilename=MD5Tool_2_0_28__Setup
UninstallDisplayIcon={app}\{#MyAppExeName}
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes
MinVersion=0,5.0

[Languages]
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags:
Name: "sendtoicon"; Description: "送るメニューに登録する(&S)"; GroupDescription: "{cm:AdditionalIcons}"; Flags:

[Files]
Source: {#MyAppExeName}; DestDir: "{app}"; Flags: ignoreversionSource: "ReadMe.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "FileList.md5"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\ReadMe"; Filename: "{app}\ReadMe.txt"
Name: "{group}\{#MyAppName} のアンインストール"; Filename: "{uninstallexe}"

Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{sendto}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: sendtoicon
                                         
[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
Filename: "{app}\ReadMe.txt"; Description: "ReadMe を表示する"; Flags: postinstall shellexec skipifsilent unchecked

[Registry]
;//WinXP用
Root: "HKCR"; Subkey: ".md5"; ValueType: string; ValueData: "md5file"; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "md5file"; ValueType: string; ValueData: "MD5 ファイル"; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "md5file"; ValueType: string; ValueName: "AlwaysShowExt"; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "md5file\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},1"; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "md5file\shell"; ValueType: string; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "md5file\shell\open"; ValueType: string; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "md5file\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "md5file\shell\追記モードで開く"; ValueType: string; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "md5file\shell\追記モードで開く\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" /a ""%1"""; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "md5file\shell\edit"; ValueType: string; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "md5file\shell\edit\command"; ValueType: string; ValueData: """{sys}\notepad.exe"" ""%1"""; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "*\shell\MD5チェックツールで開く"; ValueType: string; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "*\shell\MD5チェックツールで開く\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "Directory\shell\MD5チェックツールで開く"; ValueType: string; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "Directory\shell\MD5チェックツールで開く\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "Drive\shell\MD5チェックツールで開く"; ValueType: string; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0
Root: "HKCR"; Subkey: "Drive\shell\MD5チェックツールで開く\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey; OnlyBelowVersion: 0,6.0

;//WinVista・7用
Root: "HKCU"; Subkey: "Software\Classes\.md5"; ValueType: string; ValueData: "md5file"; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\md5file"; ValueType: string; ValueData: "MD5 ファイル"; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\md5file"; ValueType: string; ValueName: "AlwaysShowExt"; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\md5file\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},1"; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\md5file\shell"; ValueType: string; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\md5file\shell\open"; ValueType: string; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\md5file\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\md5file\shell\追記モードで開く"; ValueType: string; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\md5file\shell\追記モードで開く\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" /a ""%1"""; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\md5file\shell\edit"; ValueType: string; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\md5file\shell\edit\command"; ValueType: string; ValueData: """{sys}\notepad.exe"" ""%1"""; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\*\shell\MD5チェックツールで開く"; ValueType: string; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\*\shell\MD5チェックツールで開く\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\Directory\shell\MD5チェックツールで開く"; ValueType: string; Flags: uninsdeletekey; MinVersion: 0, 6.0
Root: "HKCU"; Subkey: "Software\Classes\Directory\shell\MD5チェックツールで開く\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\Drive\shell\MD5チェックツールで開く"; ValueType: string; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: "HKCU"; Subkey: "Software\Classes\Drive\shell\MD5チェックツールで開く\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey; MinVersion: 0,6.0

[LangOptions]
LanguageID=$0411

[Code]
const
  SHCNE_ASSOCCHANGED = $08000000;
  SHCNF_IDLIST = $00000000;

procedure SHChangeNotify(wEventID: integer; uFlags: cardinal; dwItem1, dwItem2: cardinal);
external 'SHChangeNotify@shell32.dll stdcall';

procedure SendChangeNotification;
begin
  SHChangeNotify(SHCNE_ASSOCCHANGED, SHCNF_IDLIST, 0, 0);
end;

/////////////////////////////////////////////////////////////////////
function GetUninstallString(): String;
var
  sUnInstPath: String;
  sUnInstallString: String;
begin
  sUnInstPath := ExpandConstant('Software\Microsoft\Windows\CurrentVersion\Uninstall\{#emit SetupSetting("AppId")}_is1');
  sUnInstallString := '';
  if not RegQueryStringValue(HKLM, sUnInstPath, 'UninstallString', sUnInstallString) then
    RegQueryStringValue(HKCU, sUnInstPath, 'UninstallString', sUnInstallString);
  Result := sUnInstallString;
end;


/////////////////////////////////////////////////////////////////////
function IsUpgrade(): Boolean;
begin
  Result := (GetUninstallString() <> '');
end;


/////////////////////////////////////////////////////////////////////
function UnInstallOldVersion(): Integer;
var
  sUnInstallString: String;
  iResultCode: Integer;
begin
// Return Values:
// 1 - uninstall string is empty
// 2 - error executing the UnInstallString
// 3 - successfully executed the UnInstallString

  // default return value
  Result := 0;

  // get the uninstall string of the old app
  sUnInstallString := GetUninstallString();
  if sUnInstallString <> '' then begin
    sUnInstallString := RemoveQuotes(sUnInstallString);
    if Exec(sUnInstallString, '/SILENT /NORESTART /SUPPRESSMSGBOXES', '', SW_HIDE, ewWaitUntilTerminated, iResultCode) then
      Result := 3
    else
      Result := 2;
  end else
    Result := 1;
end;

/////////////////////////////////////////////////////////////////////
procedure CurStepChanged(CurStep: TSetupStep);
begin
  if (CurStep=ssInstall) then
  begin
    if (IsUpgrade()) then
    begin
      UnInstallOldVersion();
    end;
  end;
end;
