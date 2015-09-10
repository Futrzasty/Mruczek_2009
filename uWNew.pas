unit uWNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvComponent, JvScrollText, JvExStdCtrls,
  JvButton, JvCtrls, ComCtrls, JvExComCtrls, JvComCtrls;

type
  TfWNew = class(TForm)
    btnOK: TJvImgBtn;
    cList: TMemo;
    JvScrollText1: TJvScrollText;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cList1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fWNew: TfWNew;

implementation

{$R *.dfm}

procedure TfWNew.FormCreate(Sender: TObject);
begin
  cList.Lines.LoadFromFile(ExtractFilePath(application.ExeName)+'doc\whatsnew.txt');
  cList1.Lines.LoadFromFile(ExtractFilePath(application.ExeName)+'doc\knownbugs.txt');
end;

end.
