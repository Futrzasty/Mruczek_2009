unit uTagAttrib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvBitBtn, JvButton, JvCtrls;

type
  TfTagAttrib = class(TForm)
    cList: TMemo;
    btnCancel: TJvImgBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTagAttrib: TfTagAttrib;

implementation

{$R *.dfm}

end.
