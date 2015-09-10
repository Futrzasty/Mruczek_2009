unit uConfBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvBitBtn, JvComponent, JvExButtons;

type
  TfConfBox = class(TForm)
    btnYes: TJvBitBtn;
    btnNo: TJvBitBtn;
    btnCancel: TJvBitBtn;
    cMesg: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConfBox: TfConfBox;

implementation

{$R *.dfm}

end.
