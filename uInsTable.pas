unit uInsTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvBitBtn, JvEdit, JvSpin, JvButton, JvCtrls,
  Mask, JvMaskEdit;

type
  TfInsTable = class(TForm)
    cHeight: TJvSpinEdit;
    cWidth: TJvSpinEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    cBorder: TJvSpinEdit;
    Label3: TLabel;
    btnCancel: TJvImgBtn;
    btnOK: TJvImgBtn;
    cCPad: TJvSpinEdit;
    cCSpac: TJvSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInsTable: TfInsTable;

implementation

{$R *.dfm}

end.
