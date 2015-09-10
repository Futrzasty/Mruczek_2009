unit uPassString;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvBitBtn, JvButton, JvCtrls;

type
  TfPassString = class(TForm)
    cPassString: TEdit;
    btnCancel: TJvImgBtn;
    btnOK: TJvImgBtn;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPassString: TfPassString;

implementation

{$R *.dfm}

procedure TfPassString.FormActivate(Sender: TObject);
begin
  cPassString.SetFocus;
end;

end.
