unit uBracket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TBXDkPanels, Buttons, JvBitBtn, JvButton, JvCtrls,
  ExtCtrls, JvExStdCtrls;

type
  TfBracket = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    cNewLine: TTBXCheckBox;
    cBefore: TEdit;
    cAfter: TEdit;
    btnOK: TJvImgBtn;
    btnCancel: TJvImgBtn;
    cChoose: TComboBox;
    Label3: TLabel;
    Bevel1: TBevel;
    procedure cChooseChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBracket: TfBracket;

implementation

{$R *.dfm}

procedure TfBracket.cChooseChange(Sender: TObject);
var s: string;
begin
  s := cChoose.Items[cChoose.ItemIndex];
  if length(s) = 0 then
  begin
     cBefore.Text := '';
     cAfter.Text := '';
  end;
  if length(s) = 1 then
  begin
     cBefore.Text := s;
     cAfter.Text := s;
  end;
  if length(s) = 2 then
  begin
     cBefore.Text := s[1];
     cAfter.Text := s[2];
  end;
end;

end.
