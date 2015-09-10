program mruczek;

uses
  Forms,
  HTMLHelpViewer,
  uMain in 'uMain.pas' {fMain},
  uMDI in 'uMDI.pas' {fMDI},
  uAbout in 'uAbout.pas' {fAbout},
  uConfBox in 'uConfBox.pas' {fConfBox},
  uWNew in 'uWNew.pas' {fWNew},
  uOptions in 'uOptions.pas' {fOptions},
  uPageSetup in 'uPageSetup.pas' {PageSetupDlg},
  uPrintPreview in 'uPrintPreview.pas' {TestPrintPreviewDlg},
  uPassNum in 'uPassNum.pas' {fPassNum},
  uPassString in 'uPassString.pas' {fPassString},
  uWebBrowser in 'uWebBrowser.pas' {fWebBrowser},
  dlgSearchText in 'dlgSearchText.pas' {TextSearchDialog},
  dlgReplaceText in 'dlgReplaceText.pas' {TextReplaceDialog},
  dlgConfirmReplace in 'dlgConfirmReplace.pas' {ConfirmReplaceDialog},
  uInsTable in 'uInsTable.pas' {fInsTable},
  uInsAnchor in 'uInsAnchor.pas' {fInsAnchor},
  uInsPic in 'uInsPic.pas' {fInsPic},
  uColEdit in 'uColEdit.pas' {fColEdit},
  uForm in 'uForm.pas' {fForm},
  uTagAttrib in 'uTagAttrib.pas' {fTagAttrib},
  uEdtBody in 'uEdtBody.pas' {fEdtBody},
  uMDIHex in 'uMDIHex.pas' {fMDIHex},
  uBracket in 'uBracket.pas' {fBracket},
  uMultiReplace in 'uMultiReplace.pas' {fMultiReplace},
  uSplash in 'uSplash.pas' {fSplash},
  uInsDiv in 'uInsDiv.pas' {fInsDiv},
  uHEXFind in 'uHEXFind.pas' {fHEXFind},
  uHEXReplace in 'uHEXReplace.pas' {fHEXReplace},
  uHEXPrinting in 'uHEXPrinting.pas' {fHEXPrinting},
  uHEXPrintProgress in 'uHEXPrintProgress.pas' {fHEXPrintProgress};

{$R *.res}
{$R .\ikony\icons.RES}

begin
  fSplash := TfSplash.Create(Application);
  try
    fSplash.Show;
    Application.Initialize;
    fSplash.Update;
    Application.ShowMainForm := false; //__ATOM
    Application.Title := 'Mruczek 2008';
    Application.HelpFile := '';
    Application.CreateForm(TfMain, fMain);
  fSplash.cProgress.Position := 1;
    Application.CreateForm(TfConfBox, fConfBox);
    fSplash.cProgress.Position := 2;
    //fSplash.Hide;
  finally
    fSplash.Free;
  end;
  Application.Run;
end.
