program AllaKore_Remote_Client;

uses
  {$IFDEF YTS}  
  EMemLeaks,
  EResLeaks,
  EDialogWinAPIMSClassic,
  EDialogWinAPIEurekaLogDetailed,
  EDialogWinAPIStepsToReproduce,
  EDebugExports,
  EFixSafeCallException,
  EMapWin32,
  EAppVCL,
  ExceptionLog7,
  {$ENDIF}
  Vcl.Forms,
  Form_Main in 'Form_Main.pas' {frm_Main},
  Form_Password in 'Form_Password.pas' {frm_Password},
  Form_RemoteScreen in 'Form_RemoteScreen.pas' {frm_RemoteScreen},
  Vcl.Themes,
  Vcl.Styles,
  Form_Chat in 'Form_Chat.pas' {frm_Chat},
  Form_ShareFiles in 'Form_ShareFiles.pas' {frm_ShareFiles};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Main, frm_Main);
  Application.CreateForm(Tfrm_Password, frm_Password);
  Application.CreateForm(Tfrm_RemoteScreen, frm_RemoteScreen);
  Application.CreateForm(Tfrm_Chat, frm_Chat);
  Application.CreateForm(Tfrm_ShareFiles, frm_ShareFiles);
  Application.Run;
end.
