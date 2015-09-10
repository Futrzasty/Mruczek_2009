unit uMultiReplace;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Buttons, JvBitBtn, JvDialogs, JvStringGrid,
  JvButton, JvCtrls, TBXDkPanels, JvExStdCtrls, JvExGrids,
  JvExButtons;

type
  TfMultiReplace = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    cRep: TEdit;
    Label1: TLabel;
    cRepTo: TEdit;
    cAdd: TJvBitBtn;
    cDel: TJvBitBtn;
    btnSave: TJvBitBtn;
    btnLoad: TJvBitBtn;
    dlgSave: TJvSaveDialog;
    dlgOpen: TJvOpenDialog;
    cMultiList: TJvStringGrid;
    btnCancel: TJvImgBtn;
    btnOK: TJvImgBtn;
    cCaseSensitive: TTBXCheckBox;
    cPrompt: TTBXCheckBox;
    cSelOnly: TTBXCheckBox;
    cFromCaret: TTBXCheckBox;
    cBackward: TTBXCheckBox;
    cSaveOpt: TTBXCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cAddClick(Sender: TObject);
    procedure cDelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure cFromCaretChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMultiReplace: TfMultiReplace;

implementation

uses uMain;
{$R *.dfm}

procedure TfMultiReplace.FormCreate(Sender: TObject);
begin
  cMultiList.Rows[0].Add('Ka¿de wyst¹pienie');
  cMultiList.Rows[0].Add('Zamieñ na');
  cSaveOpt.Checked := vSaveMultiCh;
  if cSaveOpt.Checked then
    cMultiList.LoadFromCSV(ExtractFilePath(application.ExeName)+'multisrch.opt');
end;

procedure TfMultiReplace.cAddClick(Sender: TObject);
var
  ActiveRow : integer;
begin
  if (cMultiList.RowCount = 2) and (cMultiList.Cells[0,1] = '') then
    ActiveRow := 1
  else
    begin
    cMultiList.RowCount := cMultiList.RowCount +1;
    ActiveRow := cMultiList.RowCount-1;
    end;
  cMultiList.Cells[0,ActiveRow] := cRep.Text;
  cMultiList.Cells[1,ActiveRow] := cRepTo.Text;
  cRep.Text := '';
  cRepTo.Text := '';
end;

procedure TfMultiReplace.cDelClick(Sender: TObject);
var
  i : integer;
begin
  for i := cMultiList.Row to cMultiList.RowCount do
  begin
    cMultiList.Cells[0, i] := cMultiList.Cells[0, i+1];
    cMultiList.Cells[1, i] := cMultiList.Cells[1, i+1];
  end;
  if cMultiList.RowCount > 2 then
    cMultiList.RowCount := cMultiList.RowCount - 1
  else
    cMultiList.Rows[cMultiList.RowCount].Clear;
end;

procedure TfMultiReplace.btnSaveClick(Sender: TObject);
begin
  if dlgSave.Execute then
  begin
    cMultiList.SaveToCSV(dlgSave.FileName);
  end;
end;

procedure TfMultiReplace.btnLoadClick(Sender: TObject);
begin
  if dlgOpen.Execute then
  begin
    cMultiList.LoadFromCSV(dlgOpen.FileName);
  end;
end;

procedure TfMultiReplace.cFromCaretChange(Sender: TObject);
begin
  cBackward.Enabled := cFromCaret.Checked;
end;

procedure TfMultiReplace.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cSaveOpt.Checked then
    cMultiList.SaveToCSV(ExtractFilePath(application.ExeName)+'multisrch.opt');
end;

end.
