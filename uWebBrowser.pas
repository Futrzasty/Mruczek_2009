unit uWebBrowser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TB2Dock, TB2Toolbar, TBX, TBXStatusBars, OleCtrls, SHDocVw_TLB,
  TB2Item, TB2ExtItems, TBXExtItems, ImgList, ComCtrls, StdCtrls,
  JvComponent, JvLabel, XiProgressBar;

type
  TfWebBrowser = class(TForm)
    cWebBrowser: TWebBrowser;
    cStatusBar: TTBXStatusBar;
    dockTop: TTBDock;
    dockBottom: TTBDock;
    dockLeft: TTBDock;
    dockRight: TTBDock;
    tNavigate: TTBXToolbar;
    tReload: TTBXItem;
    tStop: TTBXItem;
    tForward: TTBXItem;
    tBack: TTBXItem;
    TBXToolbar1: TTBXToolbar;
    tAddress: TTBXEditItem;
    TBXLabelItem1: TTBXLabelItem;
    tClose: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    cProgress: TXiProgressBar;

    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure tBackClick(Sender: TObject);
    procedure tForwardClick(Sender: TObject);
    procedure tStopClick(Sender: TObject);
    procedure tReloadClick(Sender: TObject);
    procedure cWebBrowserNavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure tCloseClick(Sender: TObject);
    procedure cWebBrowserProgressChange(ASender: TObject; Progress,
      ProgressMax: Integer);
    procedure cWebBrowserCommandStateChange(ASender: TObject;
      Command: Integer; Enable: WordBool);
    procedure cWebBrowserStatusTextChange(ASender: TObject;
      const Text: WideString);
    procedure FormDestroy(Sender: TObject);
    procedure tAddressAcceptText(Sender: TObject; var NewText: String;
      var Accept: Boolean);

  private

  public

  end;
var
  fWebBrowser: TfWebBrowser;
  gest, aftergest : integer;
  KBHook: HHook;

  function KeyboardHookProc
   (Code: Integer;
   WordParam: Word;
   Msg: longint): LongInt; stdcall;


implementation

{$R *.dfm}

function KeyboardHookProc(Code: Integer; WordParam: Word; Msg: longint): LongInt;
  function GetClassNameEnh(Handle: Hwnd): string;
  var
    ClassName: PChar;
    Buffer:    integer;
  begin
    Buffer := 40;
    getmem(ClassName, Buffer);
    windows.GetClassName(Handle, ClassName, Buffer);
    Result := ClassName;
    Freemem(ClassName);
  end;
var
  P: TPoint;
begin
  if (Code >= 0) then
  begin
     GetCursorPos(P);
     if Pos('Internet Explorer_', GetClassNameEnh(WindowFromPoint(P))) <> 0 then
     begin
        Result := CallNextHookEx(KBHook, Code, WordParam, Msg);
        if (WordParam = WM_RBUTTONDOWN) and (gest = 0) then gest := 1;
        if (WordParam = WM_RBUTTONUP) and (gest = 1) then gest := 0;
        if (WordParam = WM_LBUTTONDOWN) and (gest = 0) then gest := 2;
        if (WordParam = WM_LBUTTONUP) and (gest = 2) then gest := 0;

        if (aftergest = 1) and (WordParam = WM_RBUTTONUP) then
        begin
          aftergest := 0;
          Result := HC_SKIP;
        end;

        if (WordParam = WM_LBUTTONUP) and (gest = 1) then
        begin
          if fWebBrowser.tBack.Enabled then fWebBrowser.tBackClick(nil);
          gest := 0;
          aftergest := 1;
          Result := HC_SKIP;
        end;

        if (WordParam = WM_RBUTTONUP) and (gest = 2) then
        begin
          if fWebBrowser.tForward.Enabled then fWebBrowser.tForwardClick(nil);
          gest := 0;
          Result := HC_SKIP;
        end;
     end
     else
       Result := CallNextHookEx(KBHook, Code, WordParam, Msg);
  end
  else
     Result := CallNextHookEx(KBHook, Code, WordParam, Msg);
end;

procedure TfWebBrowser.FormCreate(Sender: TObject);
begin
   KBHook:=SetWindowsHookEx(WH_MOUSE,
           {callback —>}  @KeyboardHookProc, 
                          HInstance,
                          GetCurrentThreadId());

  cWebBrowser.Top:=dockTop.Height;
  cWebBrowser.Left:=dockLeft.Width;
  cWebBrowser.Height:=self.ClientHeight-dockTop.Height-dockBottom.Height- cStatusBar.Height;
  cWebBrowser.Width:=self.ClientWidth-dockLeft.Width-dockRight.Width;
end;

procedure TfWebBrowser.FormResize(Sender: TObject);
begin
  cWebBrowser.Top:=dockTop.Height;
  cWebBrowser.Left:=dockLeft.Width;
  cWebBrowser.Height:=self.ClientHeight-dockTop.Height-dockBottom.Height- cStatusBar.Height;
  cWebBrowser.Width:=self.ClientWidth-dockLeft.Width-dockRight.Width;
end;

procedure TfWebBrowser.tBackClick(Sender: TObject);
begin
  try cWebBrowser.GoBack
  except beep end;
end;

procedure TfWebBrowser.tForwardClick(Sender: TObject);
begin
  try cWebBrowser.GoForward
  except beep end;
end;

procedure TfWebBrowser.tStopClick(Sender: TObject);
begin
  cWebBrowser.Stop;
end;

procedure TfWebBrowser.tReloadClick(Sender: TObject);
begin
  cWebBrowser.Refresh;
end;

procedure TfWebBrowser.cWebBrowserNavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
  tAddress.Text:=cWebBrowser.LocationURL;
  self.Caption := cWebBrowser.LocationName + ' - Podgl¹d HTML';
end;

procedure TfWebBrowser.tCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfWebBrowser.cWebBrowserProgressChange(ASender: TObject;
  Progress, ProgressMax: Integer);
begin
   if ProgressMax <> 0 then
      cProgress.Max := ProgressMax
   else
      cProgress.Max := 1;
   cProgress.Position := Progress;
   if ProgressMax <> 0 then
      cProgress.ShowText := stsPercentage
   else
      cProgress.ShowText := stsNone;
end;

procedure TfWebBrowser.cWebBrowserCommandStateChange(ASender: TObject;
  Command: Integer; Enable: WordBool);
begin
    case Command of
    CSC_NAVIGATEBACK: tBack.Enabled := Enable;
    CSC_NAVIGATEFORWARD: tForward.Enabled := Enable;
  end;
end;

procedure TfWebBrowser.cWebBrowserStatusTextChange(ASender: TObject;
  const Text: WideString);
begin
   cStatusBar.Panels[0].Caption := Text;
end;

procedure TfWebBrowser.FormDestroy(Sender: TObject);
begin
  if KBHook <> 0 then UnHookWindowsHookEx(KBHook);
end;



procedure TfWebBrowser.tAddressAcceptText(Sender: TObject;
  var NewText: String; var Accept: Boolean);
begin
  cWebBrowser.Navigate(NewText);
end;

end.
