unit uColEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SynEdit, SynMemo, StdCtrls, Buttons, JvBitBtn, SynEditHighlighter,
  TB2ExtItems, TBXExtItems, TB2Item, TBX, TB2Dock, TB2Toolbar, TBXToolPals,
  JvComponent, JvLabel, JvButton, JvCtrls, JvExStdCtrls, JvExControls;

type
  TfColEdit = class(TForm)
    cLangs: TComboBox;
    cAttributes: TListBox;
    cPreview: TSynMemo;
    TBXToolbar1: TTBXToolbar;
    btnStrike: TTBXItem;
    btnUnder: TTBXItem;
    btnItalic: TTBXItem;
    btnBold: TTBXItem;
    TBXEditItem1: TTBXEditItem;
    TBXItem5: TTBXItem;
    btnBackground: TTBXColorItem;
    btnForground: TTBXColorItem;
    dlgColor: TColorDialog;
    JvLabel1: TJvLabel;
    TBXLabelItem1: TTBXLabelItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXLabelItem2: TTBXLabelItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    btnOK: TJvImgBtn;
    btnCancel: TJvImgBtn;
    procedure cLangsSelect(Sender: TObject);
    procedure cAttributesClick(Sender: TObject);
    procedure btnForgroundClick(Sender: TObject);
    procedure btnBackgroundClick(Sender: TObject);
    procedure btnBoldClick(Sender: TObject);
    procedure btnItalicClick(Sender: TObject);
    procedure btnUnderClick(Sender: TObject);
    procedure btnStrikeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fColEdit: TfColEdit;

implementation
uses
  uMain;
{$R *.dfm}

procedure TfColEdit.cLangsSelect(Sender: TObject);
var
  i : integer;
begin
  cAttributes.Clear;
  cPreview.Clear;
  for i:=0 to (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).AttrCount -1 do
  begin
    cAttributes.items.Add((uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[i].Name);
  end;
  cPreview.SelText:=(uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).SampleSource;
  cPreview.Highlighter:=(uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter);
  cAttributes.ItemIndex:=0;
  cAttributesClick(Self);
end;

procedure TfColEdit.cAttributesClick(Sender: TObject);
begin
  btnBold.Checked:=fsBold in (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style ;
  btnItalic.Checked:=fsItalic in (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style;
  btnUnder.Checked:=fsUnderline in (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style;
  btnStrike.Checked:=fsStrikeOut in (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style;
  btnForground.Color:=(uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Foreground;
  btnBackground.Color:=(uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Background;
end;

procedure TfColEdit.btnForgroundClick(Sender: TObject);
begin
  dlgColor.Color:=btnForground.Color;
  if dlgColor.Execute then
  begin
    (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Foreground:=dlgColor.Color;
     btnForground.Color:=dlgColor.Color;
  end;
end;

procedure TfColEdit.btnBackgroundClick(Sender: TObject);
begin
  dlgColor.Color:=btnBackground.Color;
  if dlgColor.Execute then
  begin
    (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Background:=dlgColor.Color;
     btnBackground.Color:=dlgColor.Color;
  end;
end;

procedure TfColEdit.btnBoldClick(Sender: TObject);
begin
  if btnBold.Checked then
    (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style:=(uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style + [fsBold]
  else
    (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style:=(uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style - [fsBold];
end;

procedure TfColEdit.btnItalicClick(Sender: TObject);
begin
  if btnItalic.Checked then
    (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style:=(uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style + [fsItalic]
  else
    (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style:=(uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style - [fsItalic];
end;

procedure TfColEdit.btnUnderClick(Sender: TObject);
begin
  if btnUnder.Checked then
    (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style:=(uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style + [fsUnderline]
  else
    (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style:=(uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style - [fsUnderline];
end;

procedure TfColEdit.btnStrikeClick(Sender: TObject);
begin
  if btnStrike.Checked then
    (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style:=(uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style + [fsStrikeOut]
  else
    (uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style:=(uMain.vHighlighters.Objects[cLangs.ItemIndex] as TSynCustomHighlighter).Attribute[cAttributes.ItemIndex].Style - [fsStrikeOut];
end;

procedure TfColEdit.FormShow(Sender: TObject);
begin
  cLangs.ItemIndex:=0;
  cLangsSelect(Self);
end;

end.
