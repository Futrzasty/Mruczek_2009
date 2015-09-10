unit uAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvComponent, TB2Version,
  JvLabel, ShellAPI, jpeg, XiButton, JvExControls;

type
  TfAbout = class(TForm)
    cImage: TImage;
    cFullName: TJvLabel;
    cLabSystem: TJvLabel;
    cLab1: TJvLabel;
    cLab2: TJvLabel;
    cLab3: TJvLabel;
    cLab4: TJvLabel;
    cWWW: TJvLabel;
    ceMail: TJvLabel;
    cVersionNo: TJvLabel;
    cLab5: TJvLabel;
    cLabDLL1: TJvLabel;
    cMotto: TJvLabel;
    imgKot: TImage;
    cClose: TXiButton;
    cLab6: TJvLabel;
    procedure FormCreate(Sender: TObject);
    procedure cWWWMouseEnter(Sender: TObject);
    procedure cWWWMouseLeave(Sender: TObject);
    procedure ceMailMouseEnter(Sender: TObject);
    procedure ceMailMouseLeave(Sender: TObject);
    procedure ceMailClick(Sender: TObject);
    procedure cWWWClick(Sender: TObject);
    procedure cMottoClick(Sender: TObject);
  private
    
  public
    { Public declarations }
  end;

var
  fAbout: TfAbout;

implementation
uses uMain, uWinVer;

{$R *.dfm}

function GetFileVersion(sFile: string): string;
var
  dwSize, dwHandle: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  Result := '';
  dwSize := GetFileVersionInfoSize(PChar(sFile), dwHandle);
  if dwSize > 0 then
  begin
    GetMem(VerInfo, dwSize);
    try
      GetFileVersionInfo(PChar(sFile), 0, dwSize, VerInfo);
      VerQueryValue(VerInfo, '\', Pointer(VerValue), dwSize);
      with VerValue^ do
        Result := Format('%d.%d.%d.%d',[
          dwFileVersionMS shr 16,
          dwFileVersionMS and $FFFF,
          dwFileVersionLS shr 16,
          dwFileVersionLS and $FFFF])
    finally
      FreeMem(VerInfo, dwSize);
    end;
  end;
end;

procedure TfAbout.FormCreate(Sender: TObject);
var
  hBitmapLibrary: THandle;
begin
  hBitmapLibrary:=LoadLibrary(PChar('mrr.dll'));
  cImage.Picture.Bitmap.LoadFromResourceName(hBitmapLibrary, 'SPLASH');
  FreeLibrary(hBitmapLibrary);

  cVersionNo.Caption:=GetFileVersion(Application.ExeName);
  cLabDLL1.Caption := 'mrr.dll: v.' + GetFileVersion('mrr.dll');

  cLabSystem.Caption:=GetWinVersion;
  clab1.Caption:=Toolbar2000VersionPropText;
  cLab2.Caption:='TBX v.2.1 Beta1';
  cLab3.Caption:='SpTBXLib 1.8.3';
  cLab4.Caption:='JEDI JCL, JVCL 3 latest SVN Snapshot';
  cLab5.Caption:='UniSynEdit v. 13-03-2008';
  cLab6.Caption:='TMPHexEditorEx v. 30-09-2007';
  cWWW.Caption:='http://www.mruczek.info/';
  ceMail.Caption:='grzesiek@fizyk.org';
  cFullName.Caption:='Mruczek ' + vVerYear;
  if vVerSub <> '' then cFullName.Caption := cFullName.Caption + ' ' + vVerSub;
  cFullName.Caption := cFullName.Caption + ' v.' + GetFileVersion(Application.ExeName) + ' ' + vVerBld;
  if vVerRev <> '#0' then cFullName.Caption := cFullName.Caption + ' revision ' + vVerRev;
end;

procedure TfAbout.cWWWMouseEnter(Sender: TObject);
begin
  cWWW.Font.Color := clSkyBlue;
end;

procedure TfAbout.cWWWMouseLeave(Sender: TObject);
begin
  cWWW.Font.Color := clWhite;
end;

procedure TfAbout.ceMailMouseEnter(Sender: TObject);
begin
  ceMail.Font.Color := clSkyBlue;
end;

procedure TfAbout.ceMailMouseLeave(Sender: TObject);
begin
  ceMail.Font.Color := clWhite;
end;

procedure TfAbout.ceMailClick(Sender: TObject);
begin
  ShellExecute(Handle,'open',PChar('mailto:'+ceMail.Caption),'','',sw_Normal);
end;

procedure TfAbout.cWWWClick(Sender: TObject);
begin
  ShellExecute(Handle,'open',PChar(cWWW.Caption),'','',sw_Normal);
end;

procedure TfAbout.cMottoClick(Sender: TObject);
begin
   imgKot.Visible := not imgKot.Visible;
   cLab4.Visible := not cLab4.Visible;
end;

end.
