unit uInsPic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvBitBtn, ExtDlgs, JPEG, JvGIFCtrl, PNGImage,
  TBXDkPanels, JvEdit, JvSpin, ExtCtrls, Mask, JvMaskEdit, JvComponent,
  JvButton, JvCtrls, JvExStdCtrls, JvExMask, JvExControls, JvSpeedButton;

type
  TfInsPic = class(TForm)
    cPicName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    cAltText: TEdit;
    JvSpeedButton1: TJvSpeedButton;
    dlgOpenPic: TOpenPictureDialog;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    cHeight: TJvSpinEdit;
    cWidth: TJvSpinEdit;
    cVSpace: TJvSpinEdit;
    cHSpace: TJvSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    cHisDec: TTBXCheckBox;
    cWisDec: TTBXCheckBox;
    cBorder: TJvSpinEdit;
    Label7: TLabel;
    Label8: TLabel;
    cAlign: TComboBox;
    cImage: TImage;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    cFullPath: TTBXCheckBox;
    btnCancel: TJvImgBtn;
    btnOK: TJvImgBtn;
    cNameCh: TTBXCheckBox;
    procedure JvSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInsPic: TfInsPic;

implementation

{$R *.dfm}

procedure TfInsPic.JvSpeedButton1Click(Sender: TObject);
begin
  with dlgOpenPic do
  begin
    Execute;
    cPicName.Text := FileName;
    cImage.Picture.LoadFromFile(FileName);
    cHeight.Text := inttostr(cImage.Picture.Height);
    cWidth.Text := inttostr(cImage.Picture.Width);
  end;
end;

end.
