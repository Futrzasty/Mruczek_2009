unit uInsAnchor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvBitBtn, JvButton, JvCtrls;

type
  TfInsAnchor = class(TForm)
    cHref: TEdit;
    Label1: TLabel;
    cFrame: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cName: TEdit;
    btnCancel: TJvImgBtn;
    btnOK: TJvImgBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInsAnchor: TfInsAnchor;

implementation

{$R *.dfm}

end.
