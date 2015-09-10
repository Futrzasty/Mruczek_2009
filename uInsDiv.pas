unit uInsDiv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvButton, JvCtrls, TBXDkPanels, JvExStdCtrls;

type
  TfInsDiv = class(TForm)
    btnCancel: TJvImgBtn;
    btnOK: TJvImgBtn;
    GroupBox1: TGroupBox;
    TBXRadioButton1: TTBXRadioButton;
    TBXRadioButton2: TTBXRadioButton;
    cId: TEdit;
    cClass: TEdit;
    cStyle: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInsDiv: TfInsDiv;

implementation

{$R *.dfm}

end.
