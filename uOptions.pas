unit uOptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvCtrls, TBXDkPanels, Buttons, ComCtrls, JvComCtrls,
  JvButton, JvComponent, JvBitBtn, JvExComCtrls, JvExStdCtrls,
  JvExControls, JvSpeedButton;

type
  TfOptions = class(TForm)
    JvImgBtn1: TJvImgBtn;
    JvImgBtn2: TJvImgBtn;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    cRecentNum: TComboBox;
    cNewDoc: TTBXCheckBox;
    btnHelp: TJvSpeedButton;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    cMultiHigh: TTBXCheckBox;
    cReadLists: TTBXCheckBox;
    cBrackMatch: TTBXCheckBox;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    cTempDir: TEdit;
    Label2: TLabel;
    TabSheet3: TTabSheet;
    cXHTML: TTBXCheckBox;
    Label3: TLabel;
    cOneInstance: TTBXCheckBox;
    cAutoBracket: TTBXCheckBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    procedure btnHelpClick(Sender: TObject);
  private
    procedure SetOptions;
    procedure GetOptions;
  public
    function procOptionChange: Boolean;
  end;

var
  fOptions: TfOptions;



implementation

uses uMain, uMDI;

{$R *.dfm}

function TfOptions.procOptionChange :Boolean;
begin
  with TfOptions.Create(Application) do
  try
    SetOptions;
    Result := ShowModal = mrOK;
    if Result then GetOptions;
  finally
    Free;
  end;
end;

procedure TfOptions.SetOptions;
begin
  cMultiHigh.Checked:=vMultiHigh;
  cRecentNum.Text:=inttostr(fMain.cMRUList.MaxItems);
  cNewDoc.Checked:=vNewOnOpen;
  cReadLists.Checked := vLoadLists;
  cBrackMatch.Checked := vBrackMatch;
  cTempDir.Text := vTempDir;
  cXHTML.Checked := vXHTML;
  cOneInstance.Checked := vOneInstance;
  cAutoBracket.Checked := vAutoBracket;
end;

procedure TfOptions.GetOptions;
begin
  vMultiHigh:=cMultiHigh.Checked;
  fMain.cMRUList.MaxItems:=strtoint(cRecentNum.Text);
  fMain.cMRUListHex.MaxItems:=strtoint(cRecentNum.Text);
  vNewOnOpen:=cNewDoc.Checked;
  vLoadLists := cReadLists.Checked;
  vBrackMatch := cBrackMatch.Checked;
  vTempDir := cTempDir.Text;
  vXHTML := cXHTML.Checked;
  vOneInstance := cOneInstance.Checked;
  vAutoBracket := cAutoBracket.Checked;
end;


procedure TfOptions.btnHelpClick(Sender: TObject);
begin
application.HelpContext(20);
end;

end.
