unit uPassNum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvBitBtn, JvValidateEdit, JvEdit, JvButton,
  JvCtrls;

type
  TfPassNum = class(TForm)
    cPassNum: TJvValidateEdit;
    btnCancel: TJvImgBtn;
    btnOK: TJvImgBtn;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPassNum: TfPassNum;

implementation

{$R *.dfm}

procedure TfPassNum.FormActivate(Sender: TObject);
begin
  cPassNum.SetFocus;
end;

end.
