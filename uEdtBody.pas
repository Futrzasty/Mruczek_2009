unit uEdtBody;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvBitBtn, TB2Item, TBX, TBXExtItems, TB2Dock,
  TB2Toolbar, TBXDkPanels, JPEG, ExtDlgs, SynEdit, JvDialogs, JvComponent,
  JvButton, JvCtrls, JvExStdCtrls, JvExControls, JvSpeedButton;

type
  TfEdtBody = class(TForm)
    cLinkVal: TEdit;
    TBXToolbar1: TTBXToolbar;
    cLink: TTBXColorItem;
    cBgColorVal: TEdit;
    cTextVal: TEdit;
    cVlinkVal: TEdit;
    cAlinkVal: TEdit;
    cText: TTBXColorItem;
    cBgColor: TTBXColorItem;
    cVlink: TTBXColorItem;
    cAlink: TTBXColorItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    cbgcolorchk: TTBXCheckBox;
    cTextchk: TTBXCheckBox;
    cLinkchk: TTBXCheckBox;
    cvlinkchk: TTBXCheckBox;
    calinkchk: TTBXCheckBox;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cBackchk: TTBXCheckBox;
    cBackVal: TEdit;
    cBackBtn: TJvSpeedButton;
    dlgOpenPic: TOpenPictureDialog;
    cOtherParam: TSynEdit;
    Label6: TLabel;
    dlgColor: TJvColorDialog;
    btnCancel: TJvImgBtn;
    btnOK: TJvImgBtn;
    procedure FormShow(Sender: TObject);
    procedure cbgcolorchkChange(Sender: TObject);
    procedure cTextchkChange(Sender: TObject);
    procedure cLinkchkChange(Sender: TObject);
    procedure cvlinkchkChange(Sender: TObject);
    procedure calinkchkChange(Sender: TObject);
    procedure cBackchkChange(Sender: TObject);
    procedure cBackBtnClick(Sender: TObject);
    procedure cBgColorClick(Sender: TObject);
    procedure cLinkClick(Sender: TObject);
    procedure cTextClick(Sender: TObject);
    procedure cVlinkClick(Sender: TObject);
    procedure cAlinkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEdtBody: TfEdtBody;

implementation

{$R *.dfm}

function ColorToHTML (C : TColor) : string;
begin
  Result := '#'+IntToHex(GetRValue(C),2) + IntToHex(GetGValue(C),2) + IntToHex(GetBValue(C),2);
end;

procedure TfEdtBody.FormShow(Sender: TObject);
begin
  cBackVal.Enabled:=cBackchk.Checked;
  cBackBtn.Enabled:=cBackchk.Checked;

  cBGColor.Enabled:=cBGColorchk.Checked;
  cBGColorVal.Enabled:=cBGColorchk.Checked;

  cText.Enabled:=cTextchk.Checked;
  cTextVal.Enabled:=cTextchk.Checked;

  cLink.Enabled:=cLinkchk.Checked;
  cLinkVal.Enabled:=cLinkchk.Checked;

  cvLink.Enabled:=cvLinkchk.Checked;
  cvLinkVal.Enabled:=cvLinkchk.Checked;

  caLink.Enabled:=caLinkchk.Checked;
  caLinkVal.Enabled:=caLinkchk.Checked;
end;

procedure TfEdtBody.cbgcolorchkChange(Sender: TObject);
begin
  cBGColor.Enabled:=cBGColorchk.Checked;
  cBGColorVal.Enabled:=cBGColorchk.Checked;
end;

procedure TfEdtBody.cTextchkChange(Sender: TObject);
begin
  cText.Enabled:=cTextchk.Checked;
  cTextVal.Enabled:=cTextchk.Checked;
end;

procedure TfEdtBody.cLinkchkChange(Sender: TObject);
begin
  cLink.Enabled:=cLinkchk.Checked;
  cLinkVal.Enabled:=cLinkchk.Checked;
end;

procedure TfEdtBody.cvlinkchkChange(Sender: TObject);
begin
  cvLink.Enabled:=cvLinkchk.Checked;
  cvLinkVal.Enabled:=cvLinkchk.Checked;
end;

procedure TfEdtBody.calinkchkChange(Sender: TObject);
begin
  caLink.Enabled:=caLinkchk.Checked;
  caLinkVal.Enabled:=caLinkchk.Checked;
end;

procedure TfEdtBody.cBackchkChange(Sender: TObject);
begin
  cBackVal.Enabled:=cBackchk.Checked;
  cBackBtn.Enabled:=cBackchk.Checked;
end;

procedure TfEdtBody.cBackBtnClick(Sender: TObject);
begin
  with dlgOpenPic do
  begin
    Execute;
    cBackVal.Text := FileName;
  end;
end;

procedure TfEdtBody.cBgColorClick(Sender: TObject);
begin
  dlgColor.Color:=cBgColor.Color;
  if dlgColor.Execute then
  begin
    cBgColorVal.Text:=ColorToHTML(dlgColor.Color);
    cBgColor.Color:=dlgColor.Color;
  end;
end;

procedure TfEdtBody.cLinkClick(Sender: TObject);
begin
  dlgColor.Color:=cLink.Color;
  if dlgColor.Execute then
  begin
    cLinkVal.Text:=ColorToHTML(dlgColor.Color);
    cLink.Color:=dlgColor.Color;
  end;
end;

procedure TfEdtBody.cTextClick(Sender: TObject);
begin
  dlgColor.Color:=cText.Color;
  if dlgColor.Execute then
  begin
    cTextVal.Text:=ColorToHTML(dlgColor.Color);
    cText.Color:=dlgColor.Color;
  end;
end;

procedure TfEdtBody.cVlinkClick(Sender: TObject);
begin
  dlgColor.Color:=cVLink.Color;
  if dlgColor.Execute then
  begin
    cVLinkVal.Text:=ColorToHTML(dlgColor.Color);
    cVLink.Color:=dlgColor.Color;
  end;
end;

procedure TfEdtBody.cAlinkClick(Sender: TObject);
begin
  dlgColor.Color:=cALink.Color;
  if dlgColor.Execute then
  begin
    cALinkVal.Text:=ColorToHTML(dlgColor.Color);
    cALink.Color:=dlgColor.Color;
  end;
end;

end.
