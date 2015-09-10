unit uSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, XiProgressBar;

type
  TfSplash = class(TForm)
    Image1: TImage;
    cProgress: TXiProgressBar;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSplash: TfSplash;

implementation

{$R *.dfm}

procedure TfSplash.FormCreate(Sender: TObject);
var
  hBitmapLibrary: THandle;
begin
  hBitmapLibrary:=LoadLibrary(PChar('mrr.dll'));
  Image1.Picture.Bitmap.LoadFromResourceName(hBitmapLibrary, 'SPLASH');
  FreeLibrary(hBitmapLibrary);
end;

end.
