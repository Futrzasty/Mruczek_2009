unit uMDI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TB2Item, TB2Dock, TB2Toolbar, TBX,
  TBXMDI, TBXExtItems, TB2ExtItems, JvWinDialogs,
  JvDialogs, ExtDlgs, Clipbrd, JvComponent, SynEdit,
  SynEditHighlighter, SynHighlighterTeX, SynEditKeyCmds, SynEditPrint,
  SynHighlighterPHP, SynHighlighterHtml, SynHighlighterGeneral,
  SynHighlighterCpp, JvJCLUtils, SynExportRTF, SynEditExport, SynExportHTML,
  JvFindReplace, SynEditTypes, SynEditRegexSearch, SynEditMiscClasses,
  SynEditSearch, Inifiles, StrUtils, ImgList, ActnList, SynHighlighterMulti,
  JclAnsiStrings, JvFormPlacement, SynCompletionProposal, SynExportTeX,
  SynEditOptionsDialog, Menus, SynEditMiscProcs, JvAppStorage,
  JvComponentBase, SynUnicode, SpTBXItem;

type
  TfMDI = class(TForm)
    contMenu: TTBItemContainer;
    mEdit: TTBXSubmenuItem;
    mReplace: TTBXItem;
    mFindNext: TTBXItem;
    mFind: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    mSelectAll: TTBXItem;
    mDel: TTBXItem;
    mPaste: TTBXItem;
    mCopy: TTBXItem;
    mCut: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    mRedo: TTBXItem;
    mUndo: TTBXItem;
    contFile: TTBItemContainer;
    mClose: TTBXItem;
    mPrint: TTBXItem;
    mSaveAs: TTBXItem;
    mSave: TTBXItem;
    contWindow: TTBItemContainer;
    mWindow: TTBXSubmenuItem;
    mWindowList: TTBXMDIWindowItem;
    contTBFile: TTBItemContainer;
    tPaste: TTBXItem;
    tCopy: TTBXItem;
    tCut: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    tRedo: TTBXItem;
    tUndo: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    tSave: TTBXItem;
    contTBFormat: TTBItemContainer;
    contTBAdvFor: TTBItemContainer;
    dlgSaveFile: TJvSaveDialog;
    dlgPrint: TPrintDialog;
    cEdit: TSynEdit;
    mPrintSetup: TTBXItem;
    mPrintPreview: TTBXItem;
    mPageSetup: TTBXItem;
    cEditPrint: TSynEditPrint;
    dlgPrinterSetup: TPrinterSetupDialog;
    mHighlight: TTBXSubmenuItem;
    mTeX: TTBXItem;
    mHTML: TTBXItem;
    mPHP: TTBXItem;
    mCPP: TTBXItem;
    mGen: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    mROT13: TTBXItem;
    mMorse: TTBXSubmenuItem;
    mMorseDecode: TTBXItem;
    mMorseEncode: TTBXItem;
    mCoding: TTBXSubmenuItem;
    mCodeXORint: TTBXItem;
    mCodeXORpass: TTBXItem;
    mDecodeXORpass: TTBXItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    mRoman: TTBXSubmenuItem;
    mFromRoman: TTBXItem;
    mToRoman: TTBXItem;
    mExport: TTBXSubmenuItem;
    mExportRTF: TTBXItem;
    mExportHTML: TTBXItem;
    cExportHTML: TSynExporterHTML;
    cExportRTF: TSynExporterRTF;
    dlgExportFile: TJvSaveDialog;
    mViewHTML: TTBXItem;
    cSynEditSearch: TSynEditSearch;
    cSynEditRegexSearch: TSynEditRegexSearch;
    mFindPrev: TTBXItem;
    mView: TTBXSubmenuItem;
    contOpt: TTBItemContainer;
    mOptions: TTBXItem;
    mTools: TTBXSubmenuItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    mWinMin: TTBXItem;
    mWinCasc: TTBXItem;
    mWinVer: TTBXItem;
    mWinHor: TTBXItem;
    TBXSeparatorItem10: TTBXSeparatorItem;
    mGoToLine: TTBXItem;
    mInsert: TTBXSubmenuItem;
    mInsHTML: TTBXSubmenuItem;
    mInsBold: TTBXItem;
    mInsItalic: TTBXItem;
    tInsItalic: TTBXItem;
    tInsBold: TTBXItem;
    mInsColor: TTBXItem;
    dlgColor: TJvColorDialog;
    TBXSeparatorItem11: TTBXSeparatorItem;
    mInsTable: TTBXItem;
    mInsAnchor: TTBXItem;
    mInsPic: TTBXItem;
    dockMDILeft: TTBDock;
    TBXToolbar1: TTBXToolbar;
    TBImageList1: TTBImageList;
    ActionList1: TActionList;
    actLineNum: TAction;
    TBXItem1: TTBXItem;
    mLineNum: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    actShowGutter: TAction;
    cMultiHigh: TSynMultiSyn;
    TBXSeparatorItem12: TTBXSeparatorItem;
    mMultiHigh: TTBXItem;
    mInsForm: TTBXItem;
    mCSS: TTBXItem;
    mJS: TTBXItem;
    mSaveFormat: TTBXSubmenuItem;
    mSaveUnix: TTBXItem;
    mSaveWin: TTBXItem;
    mSaveIso: TTBXItem;
    TBXSeparatorItem13: TTBXSeparatorItem;
    TBXSeparatorItem14: TTBXSeparatorItem;
    mMetaIso: TTBXItem;
    mHTML401STemp: TTBXItem;
    mSelTag: TTBXItem;
    mTagAttrib: TTBXItem;
    TBXSeparatorItem16: TTBXSeparatorItem;
    mEdtBody: TTBXItem;
    actShowNonPrint: TAction;
    TBXItem4: TTBXItem;
    mNonPrint: TTBXItem;
    TBXSeparatorItem15: TTBXSeparatorItem;
    mToolHTML: TTBXSubmenuItem;
    TBXSeparatorItem17: TTBXSeparatorItem;
    actSaveISO: TAction;
    actSaveUnix: TAction;
    TBXSeparatorItem18: TTBXSeparatorItem;
    tSaveUnix: TTBXItem;
    tSaveISO: TTBXItem;
    tSaveWin: TTBXItem;
    actSaveWin: TAction;
    mPas: TTBXItem;
    mJava: TTBXItem;
    mFont: TTBXItem;
    dlgFont: TFontDialog;
    cAutoComp: TSynAutoComplete;
    mBracket: TTBXItem;
    TBXSeparatorItem19: TTBXSeparatorItem;
    mMultiReplace: TTBXItem;
    mSaveComp: TTBXItem;
    dlgSaveComp: TJvSaveDialog;
    mSlownie: TTBXItem;
    mConvert: TTBXSubmenuItem;
    mDecTo: TTBXSubmenuItem;
    mDecToBin: TTBXItem;
    mBinTo: TTBXSubmenuItem;
    mBinToDec: TTBXItem;
    mOctTo: TTBXSubmenuItem;
    mHexTo: TTBXSubmenuItem;
    mOctToDec: TTBXItem;
    mHexToDec: TTBXItem;
    mDecToOct: TTBXItem;
    mDecToHex: TTBXItem;
    mBinToOct: TTBXItem;
    mBinToHex: TTBXItem;
    mOctToBin: TTBXItem;
    mOctToHex: TTBXItem;
    mHexToOct: TTBXItem;
    mHexToBin: TTBXItem;
    cExportTeX: TSynExporterTeX;
    mExportTeX: TTBXItem;
    mEditOpt: TTBXItem;
    cPOPMenu: TTBXPopupMenu;
    pmCopy: TTBXItem;
    pmCut: TTBXItem;
    pmPaste: TTBXItem;
    ActionList2: TActionList;
    actPaste: TAction;
    actCopy: TAction;
    actCut: TAction;
    actUndo: TAction;
    actRedo: TAction;
    mOptSave: TTBXItem;
    TBXSeparatorItem20: TTBXSeparatorItem;
    TBXSeparatorItem21: TTBXSeparatorItem;
    tInsTable: TTBXItem;
    tInsPic: TTBXItem;
    tInsAnchor: TTBXItem;
    TBXSeparatorItem22: TTBXSeparatorItem;
    tInsAMP: TTBXSubmenuItem;
    tAmpNBSP: TTBXItem;
    tInsTagBRnl: TTBXItem;
    tInsTagBR: TTBXItem;
    tFastTag: TTBXSubmenuItem;
    tInsTagSPAN: TTBXItem;
    tInsTagDIV: TTBXItem;
    tInsTagSTRONG: TTBXItem;
    tMultiReplace: TTBXItem;
    TBXItem5: TTBXItem;
    TBXSeparatorItem23: TTBXSeparatorItem;
    ActionList3: TActionList;
    actCPP: TAction;
    actPHP: TAction;
    actHTML: TAction;
    actTeX: TAction;
    actGen: TAction;
    actJS: TAction;
    actCSS: TAction;
    actPas: TAction;
    actJava: TAction;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    TBXItem10: TTBXItem;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    TBXItem13: TTBXItem;
    TBXItem14: TTBXItem;
    TBXItem15: TTBXItem;
    TBXItem16: TTBXItem;
    TBXItem17: TTBXItem;
    TBXItem18: TTBXItem;
    TBXItem19: TTBXItem;
    TBXItem20: TTBXItem;
    TBXItem21: TTBXItem;
    TBXItem22: TTBXItem;
    TBXItem23: TTBXItem;
    TBXItem24: TTBXItem;
    TBXItem25: TTBXItem;
    TBXItem26: TTBXItem;
    TBXItem27: TTBXItem;
    TBXItem28: TTBXItem;
    TBXItem29: TTBXItem;
    TBXItem30: TTBXItem;
    TBXItem31: TTBXItem;
    TBXItem32: TTBXItem;
    TBXItem33: TTBXItem;
    TBXItem34: TTBXItem;
    TBXItem35: TTBXItem;
    TBXItem36: TTBXItem;
    TBXItem37: TTBXItem;
    TBXSeparatorItem24: TTBXSeparatorItem;
    TBXSeparatorItem25: TTBXSeparatorItem;
    TBXItem38: TTBXItem;
    mInsDiv: TTBXItem;
    actFor: TAction;
    mFor: TTBXItem;
    TBXItem39: TTBXItem;
    JvFormStorage1: TJvFormStorage;
    mInsTemplate: TTBXSubmenuItem;
    mXHTML10STemp: TTBXItem;
    mHTML401TTemp: TTBXItem;
    TBXSeparatorItem26: TTBXSeparatorItem;
    cEditOpt: TSynEditOptionsDialog;
    cCompProp: TSynCompletionProposal;
    mLower: TTBXItem;
    mUpper: TTBXItem;
    TBXSeparatorItem27: TTBXSeparatorItem;
    tPrintPreview: TTBXItem;
    tPrint: TTBXItem;
    mReverse: TTBXItem;
    actSaveUTF: TAction;
    TBXItem40: TTBXItem;
    TBXItem41: TTBXItem;
    TBXSeparatorItem28: TTBXSeparatorItem;
    TBXItem42: TTBXItem;
    actBOMState: TAction;
    TBXSeparatorItem29: TTBXSeparatorItem;
    TBXItem43: TTBXItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure mSaveAsClick(Sender: TObject);
    procedure mSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mDelClick(Sender: TObject);
    procedure cEditChange(Sender: TObject);
    procedure mPrintClick(Sender: TObject);
    procedure mCloseClick(Sender: TObject);
    procedure mSelectAllClick(Sender: TObject);
    procedure mFindNextClick(Sender: TObject);
    procedure mReplaceClick(Sender: TObject);
    procedure mPageSetupClick(Sender: TObject);
    procedure mPrintPreviewClick(Sender: TObject);
    procedure mPrintSetupClick(Sender: TObject);
    procedure procHLCh(Sender: TObject);
    procedure mROT13Click(Sender: TObject);
    procedure mMorseDecodeClick(Sender: TObject);
    procedure mMorseEncodeClick(Sender: TObject);
    procedure mCodeXORintClick(Sender: TObject);
    procedure mCodeXORpassClick(Sender: TObject);
    procedure mDecodeXORpassClick(Sender: TObject);
    procedure mToRomanClick(Sender: TObject);
    procedure mFromRomanClick(Sender: TObject);
    procedure mExportHTMLClick(Sender: TObject);
    procedure mExportRTFClick(Sender: TObject);
    procedure mViewHTMLClick(Sender: TObject);
    procedure mFindClick(Sender: TObject);
    procedure mFindPrevClick(Sender: TObject);
    procedure cEditStatusChange(Sender: TObject;
      Changes: TSynStatusChanges);
    procedure mOptionsClick(Sender: TObject);
    procedure mWinMinClick(Sender: TObject);
    procedure mWinCascClick(Sender: TObject);
    procedure mWinVerClick(Sender: TObject);
    procedure mWinHorClick(Sender: TObject);
    procedure mGoToLineClick(Sender: TObject);
    procedure mInsBoldClick(Sender: TObject);
    procedure mInsColorClick(Sender: TObject);
    procedure mInsTableClick(Sender: TObject);
    procedure mInsAnchorClick(Sender: TObject);
    procedure mInsPicClick(Sender: TObject);
    procedure actLineNumExecute(Sender: TObject);
    procedure actShowGutterExecute(Sender: TObject);
    procedure mInsFormClick(Sender: TObject);
    procedure mMetaIsoClick(Sender: TObject);
    procedure mHTML401STempClick(Sender: TObject);
    procedure mSelTagClick(Sender: TObject);
    procedure mTagAttribClick(Sender: TObject);
    procedure mEdtBodyClick(Sender: TObject);
    procedure actShowNonPrintExecute(Sender: TObject);
    procedure actSaveUnixExecute(Sender: TObject);
    procedure actSaveISOExecute(Sender: TObject);
    procedure mMultiHighClick(Sender: TObject);
    procedure mFontClick(Sender: TObject);
    procedure cCompPropExecute(Kind: SynCompletionType; Sender: TObject;
      var CurrentInput: String; var x, y: Integer;
      var CanExecute: Boolean);
    procedure mBracketClick(Sender: TObject);
    procedure mMultiReplaceClick(Sender: TObject);
    procedure mSaveCompClick(Sender: TObject);
    procedure mSlownieClick(Sender: TObject);
    procedure mDecToBinClick(Sender: TObject);
    procedure mBinToDecClick(Sender: TObject);
    procedure mHexToDecClick(Sender: TObject);
    procedure mOctToDecClick(Sender: TObject);
    procedure mDecToOctClick(Sender: TObject);
    procedure mDecToHexClick(Sender: TObject);
    procedure mBinToOctClick(Sender: TObject);
    procedure mBinToHexClick(Sender: TObject);
    procedure mOctToBinClick(Sender: TObject);
    procedure mOctToHexClick(Sender: TObject);
    procedure mHexToBinClick(Sender: TObject);
    procedure mHexToOctClick(Sender: TObject);
    procedure mExportTeXClick(Sender: TObject);
    procedure mEditOptClick(Sender: TObject);
    procedure actPasteExecute(Sender: TObject);
    procedure actCopyExecute(Sender: TObject);
    procedure actCutExecute(Sender: TObject);
    procedure actUndoExecute(Sender: TObject);
    procedure actRedoExecute(Sender: TObject);
    procedure mOptSaveClick(Sender: TObject);
    procedure dlgSaveFileTypeChange(Sender: TObject);
    procedure dlgSaveFileShow(Sender: TObject);
    procedure cEditPaintTransient(Sender: TObject; Canvas: TCanvas;
      TransientType: TTransientType);
    procedure tAmpNBSPClick(Sender: TObject);
    procedure tInsTagBRnlClick(Sender: TObject);
    procedure tInsTagBRClick(Sender: TObject);
    procedure tInsTagSPANClick(Sender: TObject);
    procedure mInsDivClick(Sender: TObject);
    procedure mXHTML10STempClick(Sender: TObject);
    procedure mHTML401TTempClick(Sender: TObject);
    procedure mUpperClick(Sender: TObject);
    procedure mLowerClick(Sender: TObject);
    procedure mReverseClick(Sender: TObject);
    procedure cEditReplaceText(Sender: TObject; const ASearch,
      AReplace: WideString; Line, Column: Integer;
      var Action: TSynReplaceAction);
    procedure cEditKeyPress(Sender: TObject; var Key: WideChar);
    procedure actBOMStateExecute(Sender: TObject);
    procedure cEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    vFileName, vFileExt, vAddExt: string;
    vEdited, fSearchFromCaret, vBOM: Boolean;
    vText : TStringList;

    FBracketFG: TColor;
    FBracketBG: TColor;

    procedure procChangeMon;
    procedure procFocus;
    procedure ShowSearchReplaceDialog(AReplace: boolean);
    procedure DoSearchReplaceText(AReplace: boolean; ABackwards: boolean);
    procedure procReadINI;
    procedure procWriteINI;
    procedure procWriteFile(FName : string);
    procedure procSetFilter;
  public
    procedure procOpenDoc(vFileNameT: String);
  end;

var
  fMDI: TfMDI;
  vMultiHigh, fDone: boolean;

implementation

uses uMain, uConfBox, uPageSetup, uPrintPreview, uPassNum, uPassString,
      uHighlighterProcs, uWebBrowser, dlgSearchText, dlgReplaceText, dlgConfirmReplace,
  uOptions, uInsTable, uInsAnchor, uInsPic, uForm, uTagAttrib, HTMLParser, uEdtBody, uBracket,
  uMultiReplace, zlibex, uSlownie, uInsDiv;
  
{$R *.dfm}

const
  ColorNames : array[0..15] of string = ('black', 'silver','gray','white','maroon','red','purple','fuchsia',
                                         'green','lime','olive','yellow','navy','blue','teal','aqua');
  Coloreq    : array[0..15] of string = ('#000000','#C0C0C0','#808080','#FFFFFF','#800000','#FF0000','#800080','#FF00FF',
                                         '#008000','#00FF00','#808000','#FFFF00','#000080','#0000FF','#008080','#00FFFF');

  cyfry :  string = '0123456789abcdef';
resourcestring
  STextNotFound = 'Text not found';

function ipower (x, y: int64): int64;
var
   k : integer;
   wynik : int64;
begin
  wynik := 1;
  for k := 1 to y do
      wynik := wynik * x;
  Result := wynik;
end;


function CheckBase (S: string; base: integer): boolean;
var
  i, j , wynik: integer;
begin
  wynik := 0;
  for i := 1 to length(S) do
  begin
    for j := 1 to base do
    begin
      if S[i] = cyfry[j] then wynik := wynik + 1;
    end;
  end;
  if wynik = length(S) then Result := true
  else Result := false;
end;

function decton (dec : int64; base: integer): string;
var
  d, smodlo : string;
  modlo : int64;
begin
   d :='';
   while dec <> 0 do
   begin
     modlo := dec mod base;
     dec := dec div base;
     smodlo := cyfry[modlo+1];
     d := smodlo + d;
   end;
   if d = '' then d := '0';
   Result := d;
end;

function ntodec (n : string; base : int64): int64;
var
  liczba : array[1..100] of integer;
  i, j : integer;
  wynik : int64;
begin

  for j := 1 to length(n) do
  begin
    for i := 1 to length(cyfry) do
    begin
      if n[j] = cyfry[i] then liczba[j] := i - 1;
    end;
  end;

  wynik := 0;
  for j := 1 to length(n) do
  begin
    wynik := wynik + liczba[j]*ipower(base,length(n)-j);
  end;
  Result := wynik;
end;

function ColorNameToEq (S: string) : string;
var
  i: integer;
begin
  S := LowerCase(S);
  Result := S;
  for i := 0 to 15 do
  begin
    if S = ColorNames[i] then Result := Coloreq[i];
  end;
end;

function ColorToHTML (C : TColor) : string;
begin
  Result := '#'+IntToHex(GetRValue(C),2) + IntToHex(GetGValue(C),2) + IntToHex(GetBValue(C),2);
end;

function HTMLtoColor (S : string) : TColor;
var
  R, G, B : integer;
begin
  R:=strtoint('$'+copy(S,2,2));
  G:=strtoint('$'+copy(S,4,2));
  B:=strtoint('$'+copy(S,6,2));
  Result:=RGB(R,G,B);
end;

function funcGetValue (attrib: string) : String;
var
  i, start: integer;
begin
  Result:='';
  start:=0;
  for i:= 0 to strlength(attrib) -1 do
  begin
    if attrib[i] = '=' then
    begin
      start := i;
      break;
    end;
  end;
  attrib := strright(attrib, strlength(attrib)-start);
  attrib := strtrimquotes(attrib);
  Result := attrib;
end;

function funcGetName (attrib: string) : String;
var
  i, start: integer;
begin
  Result:='';
  start:=1;
  for i:= 0 to strlength(attrib) -1 do
  begin
    if attrib[i]='=' then
    begin
      start := i;
      break;
    end;
  end;
  attrib := strleft(attrib, start-1);
  Result := attrib;
end;

function WinToISO(Text : String) : String;
begin
   Text := StringReplace(Text, #185, #177, [rfReplaceAll]);
   Text := StringReplace(Text, #165, #161, [rfReplaceAll]);
   Text := StringReplace(Text, #156, #182, [rfReplaceAll]);
   Text := StringReplace(Text, #140, #166, [rfReplaceAll]);
   Text := StringReplace(Text, #159, #188, [rfReplaceAll]);
   Text := StringReplace(Text, #143, #172, [rfReplaceAll]);

   WinToISO := Text;
end;

function ISOToWin(Text : String) : String;
begin
   Text := StringReplace(Text, #177, #185, [rfReplaceAll]);
   Text := StringReplace(Text, #161, #165, [rfReplaceAll]);
   Text := StringReplace(Text, #182, #156, [rfReplaceAll]);
   Text := StringReplace(Text, #166, #140, [rfReplaceAll]);
   Text := StringReplace(Text, #188, #159, [rfReplaceAll]);
   Text := StringReplace(Text, #172, #143, [rfReplaceAll]);

   ISOToWin := Text;
end;

procedure TfMDI.procSetFilter;
begin
  if vMultiHigh then
  begin
    if {(cMultiHigh.DefaultHighlighter <> nil) or} (cMultiHigh.DefaultHighlighter <> fMain.hlGen) then
      dlgSaveFile.FilterIndex := vFilters.IndexOf(cMultiHigh.DefaultHighlighter.DefaultFilter)+1
    else
      dlgSaveFile.FilterIndex := 10;
  end
  else
  begin
    if {(cEdit.Highlighter <> nil) or} (cEdit.Highlighter <> fMain.hlGen) then
      dlgSaveFile.FilterIndex := vFilters.IndexOf(cEdit.Highlighter.DefaultFilter)+1
    else
      dlgSaveFile.FilterIndex := 10;
  end;
end;

procedure TfMDI.procWriteFile(FName : string);
var
  F : TextFile;
  Term, Src : string;
  i : integer;
begin
   if vSaveMode = 3 then
   begin
      SaveToFile(cEdit.Lines, FName, seUTF8, vBOM);
   end
   else
   begin
      try AssignFile(F, FName);
        Rewrite(F);
      except
        Raise;
      end;

      if vSaveUnix then Term := #10 else Term := #13#10;

      for i := 0 to cEdit.Lines.Count -1 do
      begin
        if vSaveMode = 2 then Src := WinToISO(cEdit.Lines[i]);
        if vSaveMode = 1 then Src := ISOToWin(cEdit.Lines[i]);
        Write(F, Src);
        if i <> (cEdit.Lines.Count - 1) then Write(F, Term);
      end;
      system.CloseFile(F);
   end;
end;

procedure TfMDI.procReadINI;
var
  plikini:TINIFile;
  TMPoptions : TSynEditorOptions;
begin
  if FileExists(ExtractFilePath(Application.ExeName) + vIniFileName) then
  begin
    plikini := TINIFile.create(ExtractFilePath(Application.ExeName) + vIniFileName);
    with plikini do
    begin
      cEdit.Gutter.ShowLineNumbers:=ReadBool('Opcje', 'LineNum', false);
      cEdit.Gutter.Visible:=ReadBool('Opcje', 'GuttVis', true);
      cEdit.InsertMode:=ReadBool('Opcje', 'InstMode', true);
      TMPoptions := cEdit.Options;
      if ReadBool('Opcje', 'AutoIndent', true) then
        Include(TMPoptions, eoAutoIndent)
      else
        Exclude(TMPoptions, eoAutoIndent);
      if ReadBool('Opcje', 'DNDEdit', true) then
        Include(TMPoptions, eoDragDropEditing)
      else
        Exclude(TMPoptions, eoDragDropEditing);
      if ReadBool('Opcje', 'ShowSpecialChars', false) then
        Include(TMPoptions, eoShowSpecialChars)
      else
        Exclude(TMPoptions, eoShowSpecialChars);
      cEdit.Options := TMPoptions;
      vMultiHigh:=ReadBool('Opcje', 'MultiHigh', true);
      mMultiHigh.Checked:=vMultiHigh;
    end;
  plikini.Free;
  end;
end;

procedure TfMDI.procWriteINI;
var
  plikini:TINIFile;
begin
  plikini := TINIFile.create(ExtractFilePath(Application.ExeName) + vIniFileName);
  with plikini do
  begin
    WriteBool('Opcje', 'LineNum', cEdit.Gutter.ShowLineNumbers);
    WriteBool('Opcje', 'GuttVis', cEdit.Gutter.Visible);
    WriteBool('Opcje', 'InstMode',cEdit.InsertMode);
    WriteBool('Opcje', 'AutoIndent', eoAutoIndent in cEdit.Options);
    WriteBool('Opcje', 'DNDEdit', eoDragDropEditing in cEdit.Options);
    WriteBool('Opcje', 'ShowSpecialChars', eoShowSpecialChars in cEdit.Options);
    WriteBool('Opcje', 'MultiHigh', vMultiHigh);
  end;
  plikini.Free;
end;

function SzyfrujInt(co : String; przez : Integer) : String;
Var
  i : Integer;
  szy : String;
begin
  Result:= '';
  szy:= '';
  for i:= 1 to Length(co) do
  begin
    if not ((co[i]=#10) or (co[i]=#13)) then szy:= szy + Chr(Ord(co[i]) xor przez) else szy:= szy + co[i];
  end;
  Result:= szy;
end;

procedure TfMDI.procChangeMon;
begin
if vEdited then
  fMain.cStatusBar.Panels[6].ImageIndex:=23
  else
  fMain.cStatusBar.Panels[6].ImageIndex:=19;
end;

procedure TfMDI.procOpenDoc(vFileNameT: String);
var i: integer;
begin
  //cEdit.Lines.LoadFromFile(vFileNameT);
  LoadFromFile(cEdit.Lines, vFileNameT, vBOM);
  actBOMState.Checked := vBOM;
  vFileName:=vFileNameT;
  self.Caption:=ExtractFileName(vFileName);

  for i := 0 to fMain.cMDIChildren.ButtonCount - 1 do
    if fMain.cMDIChildren.Buttons[i].Form = self then
    begin
      //fMain.cMDIChildren.Buttons[i].Caption := ExtractFileName(vFileName);
      fMain.cMDIChildren.Buttons[i].FullText := ExtractFileName(vFileName);
    end;

  vFileExt:=ExtractFileExt(vFileName);

  cEdit.Highlighter:=GetHighlighterFromFileExt(vHighlighters, vFileExt);
  //if vMultiHigh then  
    cMultiHigh.DefaultHighlighter:=GetHighlighterFromFileExt(vHighlighters, vFileExt); // BUG[#1]
  if cEdit.Highlighter = nil then
    cEdit.Highlighter := fMain.hlGen;


  vFileExt := LowerCase(vFileExt);

  if (vFileExt = '.tex') then mTeX.Checked:=true;
  if (vFileExt = '.c')   or (vFileExt = '.cpp') or (vFileExt = '.h') or (vFileExt = '.hpp') then actCPP.Checked:=true;
  if (vFileExt = '.php') or (vFileExt = '.php3') or (vFileExt = '.phtml') or (vFileExt = '.inc')  then actPHP.Checked:=true;
  if (vFileExt = '.htm') or (vFileExt = '.html') then actHTML.Checked:=true;
  if (vFileExt = '.js') then actJS.Checked:=true;
  if (vFileExt = '.css') then actCSS.Checked:=true;
  if (vFileExt = '.pas') or (vFileExt = '.dpr') or (vFileExt = '.dpk') or (vFileExt = '.inc') then actPas.Checked:=true;
  if (vFileExt = '.java') then actJava.Checked:=true;
  if (vFileExt = '.f') or (vFileExt = '.f77') or (vFileExt = '.f90') or (vFileExt = '.for') then actFor.Checked:=true;

  if vMultiHigh then
  begin
    cEdit.Highlighter:=cMultiHigh;
    cMultiHigh.DefaultHighlighter:=GetHighlighterFromFileExt(vHighlighters, vFileExt);
    if cMultiHigh.DefaultHighlighter = nil then
      cMultiHigh.DefaultHighlighter := fMain.hlGen;
  end;

  procSetFilter;

  vEdited:=false;
  procChangeMon;
  Self.Activate;
end;

procedure TfMDI.procFocus;
begin
  with cEdit do if canfocus then setfocus;
end;

procedure TfMDI.FormClose(Sender: TObject; var Action: TCloseAction);
var vConf, vConf2 :integer;
begin
if vEdited=false then Action:=caFree
  else
  begin
    fConfBox.cMesg.Caption:='Plik '+vFileName+' nie zosta³ zapisany!!! Zapisaæ?';
    vConf:=fConfBox.ShowModal;
    if vConf=mrYes then
    begin
      if LeftBStr(vFileName,10) <> 'nienazwany' then
      begin
        procWriteFile(vFileName);
        Action:=caFree;
      end
      else
      begin
        dlgSaveFile.FileName:=vFileName;
        if dlgSaveFile.Execute then
        begin
          if vAddExt <> '' then dlgSaveFile.FileName := ChangeFileExt(dlgSaveFile.FileName, vAddExt);
          if FileExists(dlgSaveFile.FileName) then
          begin
            fConfBox.cMesg.Caption:='Plik "'+dlgSaveFile.FileName+'" istnieje!!! Nadpisaæ?';
            vConf2:=fConfBox.ShowModal;
            if vConf2=mrYes then
            begin
              procWriteFile(dlgSaveFile.FileName);
              Action:=caFree;
            end
            else
              Action:=caNone;
          end
          else
          begin
            procWriteFile(dlgSaveFile.FileName);
            Action:=caFree;
          end;
        end
        else
          Action:=caNone
      end;
    end
    else
    if vConf=mrNo then
      Action:=caFree
    else
      if vConf=mrCancel then
        Action:=caNone
    end;
  if Action=caFree then MDIcount:=MDIcount-1;
  if MDICount=0 then
  begin
    tbF:=fMain.tTBFormat.Visible;
    tbAF:=fMain.tTBAdvFor.Visible;
    fMain.tTBFormat.Visible:=False; {UWAGA!!!} {Nie zapisuje sie stan paskow}
    fMain.tTBAdvFor.Visible:=False; {UWAGA!!!}
    fMain.cStatusBar.Panels[6].ImageIndex:=19;
    fmain.cStatusBar.Panels[8].Caption:='';
  end;
end;

procedure TfMDI.FormActivate(Sender: TObject);
begin
  fMain.mMenuGroup.LinkSubitems:=contMenu.Items;
  fMain.mFileGroup.LinkSubitems:=contFile.Items;
  fMain.mWindowGroup.LinkSubitems:=contWindow.Items;
  fMain.tFileGroup.LinkSubitems:=contTBFile.Items;
  fMain.tFormatGroup.LinkSubitems:=contTBFormat.Items;
  fMain.tAdvFor.LinkSubitems:=contTBAdvFor.Items;
  fMain.mOptGroup.LinkSubitems:=contOpt.Items;
  fMain.cStatusBar.Panels[8].Caption:=vFileName;

  fMain.mColEdit.Enabled := true; //kolorowanie sk³adni w menu

  procChangeMon;

  //if fMain.MDIChildCount>0 then
  if MDICount = 0 then
    begin
      //fMain.tTBFormat.Visible:=True;  {UWAGA!!!}
      //fMain.tTBAdvFor.Visible:=True;  {UWAGA!!!}
      fMain.tTBFormat.Visible:=tbF;//fMain.tTBFormat.Visible and true;
      fMain.tTBAdvFor.Visible:=tbAF;//fMain.tTBAdvFor.Visible and true;
    end;
  cEditStatusChange(self, [scAll]);
end;

procedure TfMDI.mSaveAsClick(Sender: TObject);
var vConf, i :integer;
begin
  dlgSaveFile.FileName:=vFileName;
  if dlgSaveFile.Execute then
  begin
    if vAddExt <> '' then dlgSaveFile.FileName := ChangeFileExt(dlgSaveFile.FileName, vAddExt);
    if FileExists(dlgSaveFile.FileName) then
    begin
      fConfBox.cMesg.Caption:='Plik "'+dlgSaveFile.FileName+'" istnieje!!! Nadpisaæ?';
      vConf:=fConfBox.ShowModal;
      if vConf=mrYes then
      begin
        //cEdit.Lines.SaveToFile(dlgSaveFile.FileName);
        procWriteFile(dlgSaveFile.FileName);
        vFileName:=dlgSaveFile.FileName;
        fMain.cStatusBar.Panels[8].Caption:=vFileName;
        self.Caption:=ExtractFileName(vFileName);

        for i := 0 to fMain.cMDIChildren.ButtonCount - 1 do
          if fMain.cMDIChildren.Buttons[i].Form = self then
          begin
            //fMain.cMDIChildren.Buttons[i].Caption := ExtractFileName(vFileName);
            fMain.cMDIChildren.Buttons[i].FullText := ExtractFileName(vFileName);
          end;

        vEdited:=false;
        procChangeMon;
      end;
    end
    else
    begin
      //cEdit.Lines.SaveToFile(dlgSaveFile.FileName);
      procWriteFile(dlgSaveFile.FileName);
      vFileName:=dlgSaveFile.FileName;
      fMain.cStatusBar.Panels[8].Caption:=vFileName;
      self.Caption:=ExtractFileName(vFileName);

      for i := 0 to fMain.cMDIChildren.ButtonCount - 1 do
        if fMain.cMDIChildren.Buttons[i].Form = self then
        begin
          //fMain.cMDIChildren.Buttons[i].Caption := ExtractFileName(vFileName);
          fMain.cMDIChildren.Buttons[i].FullText := ExtractFileName(vFileName);
        end;

      vEdited:=false;
      procChangeMon;
    end;
  end;
end;

procedure TfMDI.mSaveClick(Sender: TObject);
var vConf, i :integer;
begin
  //if vFileName<>'nienazwany.rtf' then
  if LeftBStr(vFileName,10) <> 'nienazwany' then
  begin
    //cEdit.Lines.SaveToFile(vFileName);
    procWriteFile(vFileName);
    vEdited:=false;
    procChangeMon;
  end
  else
  begin
    dlgSaveFile.FileName:=vFileName;
    if dlgSaveFile.Execute then
    begin
      if vAddExt <> '' then dlgSaveFile.FileName := ChangeFileExt(dlgSaveFile.FileName, vAddExt);
      if FileExists(dlgSaveFile.FileName) then
      begin
        fConfBox.cMesg.Caption:='Plik "'+dlgSaveFile.FileName+'" istnieje!!! Nadpisaæ?';
        vConf:=fConfBox.ShowModal;
        if vConf=mrYes then
        begin
          //cEdit.Lines.SaveToFile(dlgSaveFile.FileName);
          procWriteFile(dlgSaveFile.FileName);
          vFileName:=dlgSaveFile.FileName;
          fMain.cStatusBar.Panels[8].Caption:=vFileName;
          self.Caption:=ExtractFileName(vFileName);

          for i := 0 to fMain.cMDIChildren.ButtonCount - 1 do
            if fMain.cMDIChildren.Buttons[i].Form = self then
            begin
              //fMain.cMDIChildren.Buttons[i].Caption := ExtractFileName(vFileName);
              fMain.cMDIChildren.Buttons[i].FullText := ExtractFileName(vFileName);
            end;

          vEdited:=false;
          procChangeMon;
        end;
      end
      else
      begin
        //cEdit.Lines.SaveToFile(dlgSaveFile.FileName);
        procWriteFile(dlgSaveFile.FileName);
        vFileName:=dlgSaveFile.FileName;
        fMain.cStatusBar.Panels[8].Caption:=vFileName;
        self.Caption:=ExtractFileName(vFileName);

        for i := 0 to fMain.cMDIChildren.ButtonCount - 1 do
          if fMain.cMDIChildren.Buttons[i].Form = self then
          begin
            //fMain.cMDIChildren.Buttons[i].Caption := ExtractFileName(vFileName);
            fMain.cMDIChildren.Buttons[i].FullText := ExtractFileName(vFileName);
          end;

        vEdited:=false;
        procChangeMon;
      end;
    end;
  end;
end;

procedure TfMDI.FormCreate(Sender: TObject);
var
  AFont: TFont;
  opcje : TSynEditorOptionsContainer;
  plik : TFileStream;

begin
  cEdit.Top:=0;
  cEdit.Left:=dockMDILeft.Width+1;
  cEdit.Height:=ClientHeight-3;
  cEdit.Width:=ClientWidth-dockMDILeft.Width-1;
  FileCount:=FileCount+1;

  vFileName:='nienazwany' + inttostr(FileCount) +'.txt';
  //vFileName:='nienazwany.rtf';
  fMain.cStatusBar.Panels[8].Caption:=vFileName;
  self.Caption:=vFileName;
  dlgSaveFile.Filter := s;
  dlgSaveFile.FilterIndex := 10; {tymczasowo???}

  {³adowanie ustawieñ}
  opcje := TSynEditorOptionsContainer.create(application);
  plik := TFileStream.Create(ExtractFilePath(Application.ExeName) + vEdOptFileName, fmOpenRead);
  try
    plik.ReadComponent(opcje);
    opcje.AssignTo(cEdit);
  finally
    opcje.Free;
    plik.Free;
  end;

  procReadIni;
  vBOM := false; // dosc duze ograniczenie!
  actBOMState.Checked := vBOM; 

  actSaveUnix.Checked := vSaveUnix;
  if vSaveMode = 1 then actSaveWin.Checked := true;
  if vSaveMode = 2 then actSaveISO.Checked := true;
  if vSaveMode = 3 then actSaveUTF.Checked := true;

  {ustawienie kolorowania}
  if vMultiHigh then
  begin
    cEdit.Highlighter:=cMultiHigh;
    cMultiHigh.DefaultHighlighter:=fMain.hlGen;
    actGen.Checked:=true;
  end
  else
  begin
    cMultiHigh.DefaultHighlighter:=fMain.hlGen; //DODANE 28.11.2007 BUG[#1]
    cEdit.Highlighter:=fMain.hlGen;
    actGen.Checked:=true;
  end;

  FBracketFG := clRed;
  FBracketBG := clYellow;


  {AutoCompletion List}
  cAutoComp.AutoCompleteList.LoadFromFile(ExtractFilePath(application.exename)+'SynAC.txt');

  //tLineNum.Checked:=cEdit.Gutter.ShowLineNumbers;
  //mLineNum.Checked:=cEdit.Gutter.ShowLineNumbers;
  //cEdit.Gutter.ShowLineNumbers:=cEdit.Gutter.ShowLineNumbers;

  vEdited:=false;
  procChangeMon;

  {drukowanie}
  AFont := TFont.Create;
  with cEditPrint.Header do begin
      {First line, default font, left aligned}
    Add('', nil, taLeftJustify, 1);
      {First line, default font, right aligned}
    Add('Strona: $PAGENUM$ z $PAGECOUNT$', nil, taRightJustify, 1);
      {Second line, default font, left aligned}
    Add('$TITLE$', nil, taLeftJustify, 2);
    AFont.Assign(DefaultFont);
    AFont.Size := 6;
      {Second line, small font, right aligned - note that lines can have different fonts}
    Add('Data: $DATE$. Czas: $TIME$', AFont, taRightJustify, 2);
  end;
  with cEditPrint.Footer do begin
    AFont.Assign(DefaultFont);
    Add('$PAGENUM$/$PAGECOUNT$', nil, taRightJustify, 1);
    AFont.Size := 6;
    Add('Wydruk z programu Mruczek ' + vVerYear +' v.' + vVerNo + ' ' + vVerBld, AFont, taLeftJustify, 1);
  end;
  AFont.Free;
end;

procedure TfMDI.mDelClick(Sender: TObject);
begin
  cEdit.ClearSelection;
  vEdited:=true;
  procChangeMon;
end;

procedure TfMDI.cEditChange(Sender: TObject);
begin
  vEdited:=true;
  procChangeMon;

  actUndo.Enabled:=cEdit.CanUndo;
  actRedo.Enabled:=cEdit.CanRedo;
end;

procedure TfMDI.mPrintClick(Sender: TObject);
begin
  if dlgPrint.Execute then
  begin
    cEditPrint.SynEdit := cEdit;
    cEditPrint.Title := vFileName;
    cEditPrint.Print;
  end;
end;

procedure TfMDI.mCloseClick(Sender: TObject);
begin
  Close
end;

procedure TfMDI.mSelectAllClick(Sender: TObject);
begin
  cEdit.SelectAll;
end;

procedure TfMDI.ShowSearchReplaceDialog(AReplace: boolean);
var
  dlg: TTextSearchDialog;
begin
  if AReplace then
    dlg := TTextReplaceDialog.Create(Self)
  else
    dlg := TTextSearchDialog.Create(Self);
  with dlg do try
    // assign search options
    SearchBackwards := gbSearchBackwards;
    SearchCaseSensitive := gbSearchCaseSensitive;
    SearchFromCursor := gbSearchFromCaret;
    SearchInSelectionOnly := gbSearchSelectionOnly;
    // start with last search text
    SearchText := gsSearchText;
    if gbSearchTextAtCaret then begin
      // if something is selected search for that text
      if cEdit.SelAvail and (cEdit.BlockBegin.Line = cEdit.BlockEnd.Line)
      then
        SearchText := cEdit.SelText
      else
        SearchText := cEdit.GetWordAtRowCol(cEdit.CaretXY);
    end;
    SearchTextHistory := gsSearchTextHistory;
    if AReplace then with dlg as TTextReplaceDialog do begin
      ReplaceText := gsReplaceText;
      ReplaceTextHistory := gsReplaceTextHistory;
    end;
    SearchWholeWords := gbSearchWholeWords;
    if ShowModal = mrOK then begin
      gbSearchBackwards := SearchBackwards;
      gbSearchCaseSensitive := SearchCaseSensitive;
      gbSearchFromCaret := SearchFromCursor;
      gbSearchSelectionOnly := SearchInSelectionOnly;
      gbSearchWholeWords := SearchWholeWords;
      gbSearchRegex := SearchRegularExpression;
      gsSearchText := SearchText;
      gsSearchTextHistory := SearchTextHistory;
      if AReplace then with dlg as TTextReplaceDialog do begin
        gsReplaceText := ReplaceText;
        gsReplaceTextHistory := ReplaceTextHistory;
      end;
      fSearchFromCaret := gbSearchFromCaret;
      if gsSearchText <> '' then begin
        DoSearchReplaceText(AReplace, gbSearchBackwards);
        fSearchFromCaret := TRUE;
      end;
    end;
  finally
    dlg.Free;
  end;
end;


procedure TfMDI.DoSearchReplaceText(AReplace: boolean; ABackwards: boolean);
var
  Options: TSynSearchOptions;
begin
  if AReplace then
    Options := [ssoPrompt, ssoReplace, ssoReplaceAll]
  else
    Options := [];
  if ABackwards then
    Include(Options, ssoBackwards);
  if gbSearchCaseSensitive then
    Include(Options, ssoMatchCase);
  if not fSearchFromCaret then
    Include(Options, ssoEntireScope);
  if gbSearchSelectionOnly then
    Include(Options, ssoSelectedOnly);
  if gbSearchWholeWords then
    Include(Options, ssoWholeWord);
  if gbSearchRegex then
    cEdit.SearchEngine := cSynEditRegexSearch
  else
    cEdit.SearchEngine := cSynEditSearch;
  if cEdit.SearchReplace(gsSearchText, gsReplaceText, Options) = 0 then
  begin
    MessageBeep(MB_ICONASTERISK);

    if ssoBackwards in Options then
      cEdit.BlockEnd := cEdit.BlockBegin
    else
      cEdit.BlockBegin := cEdit.BlockEnd;
    cEdit.CaretXY := cEdit.BlockBegin;
  end;

  if ConfirmReplaceDialog <> nil then
    ConfirmReplaceDialog.Free;
end;

procedure TfMDI.mFindNextClick(Sender: TObject);
begin
  DoSearchReplaceText(FALSE, FALSE);
end;

procedure TfMDI.mReplaceClick(Sender: TObject);
begin
  ShowSearchReplaceDialog(TRUE);
end;

procedure TfMDI.mPageSetupClick(Sender: TObject);
begin
  PageSetupDlg := TPageSetupDlg.Create(Application);
  try
    PageSetupDlg.SetValues(cEditPrint);
    if PageSetupDlg.ShowModal = mrOk then
      PageSetupDlg.GetValues(cEditPrint);
  finally
    PageSetupDlg.Free;
  end;
end;

procedure TfMDI.mPrintPreviewClick(Sender: TObject);
begin
  TestPrintPreviewDlg := TTestPrintPreviewDlg.Create(Application);
  try
    cEditPrint.SynEdit:=cEdit;
    cEditPrint.Title:=vFileName;
    with TestPrintPreviewDlg do
    begin
      SynEditPrintPreview.SynEditPrint := cEditPrint;
      ShowModal;
    end;
  finally
    TestPrintPreviewDlg.Free;
  end;
end;

procedure TfMDI.mPrintSetupClick(Sender: TObject);
begin
  dlgPrinterSetup.Execute;
end;

procedure TfMDI.procHLCh(Sender: TObject);
begin
  if Sender = actCPP then
  begin
    if not vMultiHigh then cEdit.Highlighter:=fMain.hlCPP;
    cMultiHigh.DefaultHighlighter:=fMain.hlCPP;
  end;
  if Sender = actPHP then
  begin
    if not vMultiHigh then cEdit.Highlighter:=fMain.hlPHP;
    cMultiHigh.DefaultHighlighter:=fMain.hlPHP;
  end;
  if Sender = actHTML then
  begin
    if not vMultiHigh then cEdit.Highlighter:=fMain.hlHTML;
    cMultiHigh.DefaultHighlighter:=fMain.hlHTML;
  end;
  if Sender = actTeX then
  begin
    if not vMultiHigh then cEdit.Highlighter:=fMain.hlTeX;
    cMultiHigh.DefaultHighlighter:=fMain.hlTeX;
  end;
  if Sender = actGen then
  begin
    if not vMultiHigh then cEdit.Highlighter:=fMain.hlGen;
    cMultiHigh.DefaultHighlighter:=fMain.hlGen;
  end;
  if Sender = actJS then
  begin
    if not vMultiHigh then cEdit.Highlighter:=fMain.hlJS;
    cMultiHigh.DefaultHighlighter:=fMain.hlJS;
  end;
  if Sender = actCSS then
  begin
    if not vMultiHigh then cEdit.Highlighter:=fMain.hlCSS;
    cMultiHigh.DefaultHighlighter:=fMain.hlCSS;
  end;
  if Sender = actPas then
  begin
    if not vMultiHigh then cEdit.Highlighter:=fMain.hlPas;
    cMultiHigh.DefaultHighlighter:=fMain.hlPas;
  end;
  if Sender = actJava then
  begin
    if not vMultiHigh then cEdit.Highlighter:=fMain.hlJava;
    cMultiHigh.DefaultHighlighter:=fMain.hlJava;
  end;
  if Sender = actFor then
  begin
    if not vMultiHigh then cEdit.Highlighter:=fMain.hlFor;
    cMultiHigh.DefaultHighlighter:=fMain.hlFor;
  end;

  procSetFilter;
end;

procedure TfMDI.mROT13Click(Sender: TObject);
const
  rot13a: array ['A'..'Z'] of Char = 'NOPQRSTUVWXYZABCDEFGHIJKLM';
  rot13b: array ['a'..'z'] of Char = 'nopqrstuvwxyzabcdefghijklm';
var
  t: String;
  i: Integer;
begin
  if cEdit.SelLength >0 then
  begin
    t := cEdit.SelText;
    for i := 1 to Length(t) do
      if t[i] in ['A'..'Z'] then
        t[i] := rot13a[t[i]]
      else if t[i] in ['a'..'z'] then
        t[i] := rot13b[t[i]];
    cEdit.SelText := t;
  end;
end;


procedure TfMDI.mMorseDecodeClick(Sender: TObject);
var
  toDec, Letter, Output: string;
  i : integer;
begin
  Letter:='';
  Output:='';
  toDec:=cEdit.SelText;
  if Length(toDec) > 0 then
    begin
    for i := 1 to Length(toDec)+1 do
    begin
      if (toDec[i]=#13) and (toDec[i+1]=#10) then Output:=Output+#13#10;
      if (toDec[i]='.') or (toDec[i]='-') then
      begin
        Letter:=Letter+toDec[i];
      end
      else
        if length(Letter) > 0 then
        begin
          if Letter = '.-' then Output:=Output+'A';
          if Letter = '-...' then Output:=Output+'B';
          if Letter = '-.-.' then Output:=Output+'C';
          if Letter = '-..' then Output:=Output+'D';
          if Letter = '.' then Output:=Output+'E';
          if Letter = '..-.' then Output:=Output+'F';
          if Letter = '--.' then Output:=Output+'G';
          if Letter = '....' then Output:=Output+'H';
          if Letter = '..' then Output:=Output+'I';
          if Letter = '.---' then Output:=Output+'J';
          if Letter = '-.-' then Output:=Output+'K';
          if Letter = '.-..' then Output:=Output+'L';
          if Letter = '--' then Output:=Output+'M';
          if Letter = '-.' then Output:=Output+'N';
          if Letter = '---' then Output:=Output+'O';
          if Letter = '.--.' then Output:=Output+'P';
          if Letter = '--.-' then Output:=Output+'Q';
          if Letter = '.-.' then Output:=Output+'R';
          if Letter = '...' then Output:=Output+'S';
          if Letter = '-' then Output:=Output+'T';
          if Letter = '..-' then Output:=Output+'U';
          if Letter = '...-' then Output:=Output+'V';
          if Letter = '.--' then Output:=Output+'W';
          if Letter = '-..-' then Output:=Output+'X';
          if Letter = '-.--' then Output:=Output+'Y';
          if Letter = '--..' then Output:=Output+'Z';
          if Letter = '-----' then Output:=Output+'0';
          if Letter = '.----' then Output:=Output+'1';
          if Letter = '..---' then Output:=Output+'2';
          if Letter = '...--' then Output:=Output+'3';
          if Letter = '....-' then Output:=Output+'4';
          if Letter = '.....' then Output:=Output+'5';
          if Letter = '-....' then Output:=Output+'6';
          if Letter = '--...' then Output:=Output+'7';
          if Letter = '---..' then Output:=Output+'8';
          if Letter = '----.' then Output:=Output+'9';
          Letter:='';
        end;
    end;
    cEdit.SelText:=Output;
  end;
end;

procedure TfMDI.mMorseEncodeClick(Sender: TObject);
var
  toDec, Letter, Output: string;
  i : integer;
begin
  Output:='';
  toDec:= cEdit.SelText;
  toDec:=uppercase(toDec);
  if length(toDec) > 0 then
  begin
    for i := 1 to length(toDec) do
    begin
      if (toDec[i]=#13) and (toDec[i+1]=#10) then Output:=Output+#13#10;
      Letter:=toDec[i];
      if Letter = 'A' then Output:=Output+'.-/ ';
      if Letter = 'B' then Output:=Output+'-.../ ';
      if Letter = 'C' then Output:=Output+'-.-./ ';
      if Letter = 'D' then Output:=Output+'-../ ';
      if Letter = 'E' then Output:=Output+'./ ';
      if Letter = 'F' then Output:=Output+'..-./ ';
      if Letter = 'G' then Output:=Output+'--./ ';
      if Letter = 'H' then Output:=Output+'..../ ';
      if Letter = 'I' then Output:=Output+'../ ';
      if Letter = 'J' then Output:=Output+'.---/ ';
      if Letter = 'K' then Output:=Output+'-.-/ ';
      if Letter = 'L' then Output:=Output+'.-../ ';
      if Letter = 'M' then Output:=Output+'--/ ';
      if Letter = 'N' then Output:=Output+'-./ ';
      if Letter = 'O' then Output:=Output+'---/ ';
      if Letter = 'P' then Output:=Output+'.--./ ';
      if Letter = 'Q' then Output:=Output+'--.-/ ';
      if Letter = 'R' then Output:=Output+'.-./ ';
      if Letter = 'S' then Output:=Output+'.../ ';
      if Letter = 'T' then Output:=Output+'-/ ';
      if Letter = 'U' then Output:=Output+'..-/ ';
      if Letter = 'V' then Output:=Output+'...-/ ';
      if Letter = 'W' then Output:=Output+'.--/ ';
      if Letter = 'X' then Output:=Output+'-..-/ ';
      if Letter = 'Y' then Output:=Output+'-.--/ ';
      if Letter = 'Z' then Output:=Output+'--../ ';
      if Letter = '0' then Output:=Output+'-----/ ';
      if Letter = '1' then Output:=Output+'.----/ ';
      if Letter = '2' then Output:=Output+'..---/ ';
      if Letter = '3' then Output:=Output+'...--/ ';
      if Letter = '4' then Output:=Output+'....-/ ';
      if Letter = '5' then Output:=Output+'...../ ';
      if Letter = '6' then Output:=Output+'-..../ ';
      if Letter = '7' then Output:=Output+'--.../ ';
      if Letter = '8' then Output:=Output+'---../ ';
      if Letter = '9' then Output:=Output+'----./ ';
    end;
  cEdit.SelText:=Output;
  end;
end;

procedure TfMDI.mCodeXORintClick(Sender: TObject);
begin
  if cEdit.SelLength >0 then
  begin
    fPassNum := TfPassNum.Create(Application);
    try
      fPassNum.caption:='Podaj has³o';
      fPassNum.cPassNum.Value:=0;
      if fPassNum.ShowModal=mrOK then cEdit.SelText:=szyfrujint(cEdit.SelText, fPassNum.cPassNum.Value);
    finally
      fPassNum.Free;
    end;
  end;
end;

procedure TfMDI.mCodeXORpassClick(Sender: TObject);
begin
  if cEdit.SelLength >0 then
  begin
    fPassString := TfPassString.Create(Application);
    try
      fPassString.cPassString.Text := '';
      if fPassString.ShowModal=mrOK then cEdit.SelText:=XorEncode(fPassString.cPassString.Text, cEdit.SelText);
    finally
      fPassString.Free;
    end;
  end;
end;

procedure TfMDI.mDecodeXORpassClick(Sender: TObject);
begin
  if cEdit.SelLength >0 then
  begin
    fPassString := TfPassString.Create(Application);
    try
      fPassString.cPassString.Text := '';
      if fPassString.ShowModal=mrOK then cEdit.SelText:=XorDecode(fPassString.cPassString.Text, cEdit.SelText);
    finally
      fPassString.Free;
    end;
  end;
end;

procedure TfMDI.mToRomanClick(Sender: TObject);
begin
  if cEdit.SelLength >0 then
  begin
    cEdit.SelText:=IntToRoman(strtoint(cEdit.SelText));
  end;
end;

procedure TfMDI.mFromRomanClick(Sender: TObject);
begin
  if cEdit.SelLength >0 then
  begin
    cEdit.SelText:=inttostr(RomanToInt(cEdit.SelText));
  end;
end;

procedure TfMDI.mExportHTMLClick(Sender: TObject);
var
  vExportFileName : string;
begin
  dlgExportFile.Filter:=cExportHTML.DefaultFilter;
  if dlgExportFile.Execute then
  begin
    vExportFileName := dlgExportFile.FileName;
    if ExtractFileExt(vExportFileName) = '' then vExportFileName := vExportFileName + '.html';
    with cExportHTML do
    begin
      Title := 'Plik wyeksportowany do HTML';
      Highlighter := cEdit.Highlighter;
      ExportAsText := true;
      ExportAll(cEdit.Lines);
      SaveToFile(vExportFileName);
    end;
  end;
end;

procedure TfMDI.mExportRTFClick(Sender: TObject);
var
  vExportFileName : string;
begin
  dlgExportFile.Filter:=cExportRTF.DefaultFilter;
  if dlgExportFile.Execute then
  begin
    vExportFileName := dlgExportFile.FileName;
    if ExtractFileExt(vExportFileName) = '' then vExportFileName := vExportFileName + '.rtf';
    with cExportRTF do
    begin
      Title := 'Plik wyeksportowany do RTF';
      Highlighter := cEdit.Highlighter;
      ExportAsText := true;
      ExportAll(cEdit.Lines);
      SaveToFile(vExportFileName);
    end;
  end;
end;

procedure TfMDI.mViewHTMLClick(Sender: TObject);
var
  tempFile, tempPath :String;
begin
  fWebBrowser := TfWebBrowser.Create(Application);
  try
    //tempPath:=ExtractFilePath(vFileName);
    tempPath := vTempDir;
    if not DirectoryExists(tempPath) then tempPath:=GetEnvironmentVariable('TEMP');
    if (tempPath[length(tempPath)] <> '\') then tempPath := tempPath + '\';
    tempFile:=tempPath+'EdytorDevTempVieWHTML$$$.html';
    cEdit.Lines.SaveToFile(tempFile);
    fWebBrowser.cWebBrowser.Navigate(tempFile);
    fWebBrowser.ShowModal;
    DeleteFile(tempFile);
  finally
    fWebBrowser.Free;
  end;
end;

procedure TfMDI.mFindClick(Sender: TObject);
begin
  ShowSearchReplaceDialog(false);
end;

procedure TfMDI.mFindPrevClick(Sender: TObject);
begin
  DoSearchReplaceText(FALSE, TRUE);
end;

procedure TfMDI.cEditStatusChange(Sender: TObject;
  Changes: TSynStatusChanges);
var
  p : TBufferCoord;      //UWAGA!!!
begin
  actPaste.Enabled := cEdit.CanPaste;
  actCut.Enabled := cEdit.SelLength > 0;
  actCopy.Enabled := cEdit.SelLength > 0;

  mDel.Enabled := cEdit.SelLength > 0;
  
  p := cEdit.CaretXY;
  fMain.cStatusBar.Panels[1].Caption:=Format('%6d:%3d', [p.Line, p.Char]);

  if cEdit.InsertMode then fMain.cStatusBar.Panels[2].Caption := 'Insert'
  else fMain.cStatusBar.Panels[2].Caption := 'Overwrite';

  case cEdit.SelectionMode of
  smNormal: fMain.cStatusBar.Panels[7].Caption := 'Normal';
  smColumn: fMain.cStatusBar.Panels[7].Caption := 'Column';
  smLine: fMain.cStatusBar.Panels[7].Caption := 'Line';
  end;
  
  //mLineNum.Checked := cEdit.Gutter.ShowLineNumbers;
  //tLineNum.Checked := cEdit.Gutter.ShowLineNumbers;
  //vLineNum := cEdit.Gutter.ShowLineNumbers;  UWAGA!!!!!!!
  actLineNum.Checked := cEdit.Gutter.ShowLineNumbers;
  actShowGutter.Checked := cEdit.Gutter.Visible;
  actShowNonPrint.Checked := (eoShowSpecialChars in cEdit.Options);
  actSaveUnix.Checked := vSaveUnix;
  if vSaveMode = 1 then actSaveWin.Checked := true;
  if vSaveMode = 2 then actSaveISO.Checked := true;
  if vSaveMode = 3 then actSaveUTF.Checked := true;
end;

procedure TfMDI.mOptionsClick(Sender: TObject);
begin
  if fOptions.procOptionChange then
  begin
    mMultiHigh.Checked:=vMultiHigh;
    mMultiHighClick(Self);
  end;
  cEditStatusChange(self, [scAll]);
  procWriteINI;
end;

procedure TfMDI.mWinMinClick(Sender: TObject);
var
  i:integer;
begin
  for i:= MDICount-1 downto 0 do
  begin
    fMain.MDIChildren[i].WindowState:=wsMinimized;
  end;
  fMain.ArrangeIcons;
end;

procedure TfMDI.mWinCascClick(Sender: TObject);
begin
  fMain.Cascade;
end;

procedure TfMDI.mWinVerClick(Sender: TObject);
begin
  fMain.TileMode:=tbVertical;
  fMain.Tile;
end;

procedure TfMDI.mWinHorClick(Sender: TObject);
begin
  fMain.TileMode:=tbHorizontal;
  fMain.Tile;
end;

procedure TfMDI.mGoToLineClick(Sender: TObject);
begin
  fPassNum := TfPassNum.Create(Application);
  try
    fPassNum.caption:='IdŸ do linii';
    fPassNum.cPassNum.Value:=0;
    if fPassNum.ShowModal = mrOk then cEdit.GotoLineAndCenter(fPassNum.cPassNum.Value);
  finally
    fPassNum.Free;
  end;
end;

procedure TfMDI.mInsBoldClick(Sender: TObject);
begin
  if (Sender = mInsBold) or (Sender = tInsBold) then
  begin
    cEdit.SelText:='<b>'+cEdit.SelText+'</b>';
    cEdit.CaretX:=cEdit.CaretX-4;
  end;
  if (Sender = mInsItalic) or (Sender = tInsItalic) then
    begin
    cEdit.SelText:='<i>'+cEdit.SelText+'</i>';
    cEdit.CaretX:=cEdit.CaretX-4;
    end;                                                   
end;

procedure TfMDI.mInsColorClick(Sender: TObject);
begin
  if dlgColor.Execute then
  begin
    cEdit.SelText:=ColorToHTML(dlgColor.Color);
  end;
end;

procedure TfMDI.mInsTableClick(Sender: TObject);
var
  i, j : integer;
  old : string;
begin
  fInsTable := TfInsTable.Create(Application);
  try
    if fInsTable.ShowModal = mrOk then
    begin
      old := cEdit.SelText;
      //cEdit.SelText:=cEdit.SelText+'<TABLE';
      cEdit.SelText:='<table';
      cEdit.SelText:=cEdit.SelText+' border="'+fInsTable.cBorder.Text+'"';
      cEdit.SelText:=cEdit.SelText+' cellpadding="'+fInsTable.cCPad.Text+'"';
      cEdit.SelText:=cEdit.SelText+' cellspacing="'+fInsTable.cCSpac.Text+'"';
      cEdit.SelText:=cEdit.SelText+'>'+#13#10;
      for i := 1 to fInsTable.cHeight.AsInteger do
      begin
        cEdit.SelText:=cEdit.SelText+'<tr>';
        for j := 1 to fInsTable.cWidth.AsInteger do
        begin
          cEdit.SelText:=cEdit.SelText+'<td> </td>';
        end;
        cEdit.SelText:=cEdit.SelText+'</tr>'+#13#10;
      end;
      cEdit.SelText:=cEdit.SelText+'</table>'+#13#10+old;
    end;
  finally
    fInsTable.Free;
  end;
end;

procedure TfMDI.mInsAnchorClick(Sender: TObject);
var
  old : string;
begin
  fInsAnchor := TfInsAnchor.Create(Application);
  try
    if fInsAnchor.ShowModal = mrOk then
    begin
      old := cEdit.SelText;
      cEdit.SelText := '<a href="' + fInsAnchor.cHref.text + '"';
      if fInsAnchor.cFrame.Text <> '' then cEdit.SelText := cEdit.SelText + ' target="' + fInsAnchor.cFrame.text + '"';
      if fInsAnchor.cName.Text <> '' then cEdit.SelText := cEdit.SelText + ' name="' + fInsAnchor.cName.Text + '"';
      cEdit.SelText := cEdit.SelText + '>' + old + '</a>';
      cEdit.CaretX:=cEdit.CaretX-4;
    end;
  finally
    fInsAnchor.Free;
  end;
end;

procedure TfMDI.mInsPicClick(Sender: TObject);
var
  old, nazwa : string;
begin
  fInsPic := TfInsPic.Create(Application);
  try
    with fInsPic do
    begin
      if ShowModal = mrOk then
      begin
        old := cEdit.SelText;
        cEdit.SelText := '<img src="';
        nazwa := cPicName.Text;
        if cNameCh.Checked then nazwa := StrReplaceChar(cPicName.Text, '\', '/');
        if cFullPath.Checked then
          cEdit.SelText := cEdit.SelText + nazwa + '"'
        else
          cEdit.SelText := cEdit.SelText + ExtractFileName(cPicName.Text)+ '"';
        {if cAltText.Text <> '' then} cEdit.SelText := cEdit.SelText + ' alt="' + cAltText.Text + '"';
        if cBorder.Text <> '0' then cEdit.SelText := cEdit.SelText + ' border="' + cBorder.Text + '"';
        if cAlign.Text <> '' then cEdit.SelText := cEdit.SelText + ' align="' +cAlign.Text +'"';
        if cHeight.Text <> '' then cEdit.SelText := cEdit.SelText + ' height="'+cHeight.Text;
        if cHisDec.Checked then cEdit.SelText := cEdit.SelText + '%';
        cEdit.SelText := cEdit.SelText +'"';
        if cWidth.Text <> '' then cEdit.SelText := cEdit.SelText + ' width="'+cWidth.Text;
        if cWisDec.Checked then cEdit.SelText := cEdit.SelText + '%';
        cEdit.SelText := cEdit.SelText +'"';
        if cHSpace.Text <> '0' then cEdit.SelText := cEdit.SelText + ' hspace="' +cHSpace.Text +'"';
        if cVSpace.Text <> '0' then cEdit.SelText := cEdit.SelText + ' vspace="' +cVSpace.Text +'"';
        if vXHTML then cEdit.SelText := cEdit.SelText + ' />' + old
        else cEdit.SelText := cEdit.SelText + '>' + old;
      end;
    end;
  finally
    fInsPic.Free;
  end;
end;

procedure TfMDI.actLineNumExecute(Sender: TObject);
begin
  cEdit.Gutter.ShowLineNumbers:= not cEdit.Gutter.ShowLineNumbers;
  cEditStatusChange(self, [scAll]);
  procFocus;
  procWriteINI; {Uwaga!!!!!!!!!!!!!}
end;

procedure TfMDI.actShowGutterExecute(Sender: TObject);
begin
  cEdit.Gutter.Visible := not cEdit.Gutter.Visible;
  cEditStatusChange(self, [scAll]);
  procFocus;
  procWriteINI; {Uwaga!!!!!!!!!!!!!}
end;

procedure TfMDI.mInsFormClick(Sender: TObject);
var
  old : string;
begin
  fForm := TfForm.Create(Application);
  try
    with fForm do
    begin
      if ShowModal = mrOk then
      begin
        old := cEdit.SelText;
        cPreview.SelectAll;
        cEdit.SelText := '<form';
        //cEdit.SelText:=cEdit.SelText + '<FORM';
        if cAction.Text <> '' then cEdit.SelText:=cEdit.SelText + ' action="' + cAction.text + '"';
        if cMethod.Text <> '' then cEdit.SelText:=cEdit.SelText + ' method="' + cMethod.Text + '"';
        if cEncoding.Text <> '' then cEdit.SelText:=cEdit.SelText + ' enctype="' +cEncoding.Text + '"';
        cEdit.SelText:=cEdit.SelText + '>' + #13#10 + cPreview.SelText + #13#10 + old + #13#10 + '</form>';
      end;
    end;
  finally
    fForm.Free;
  end;
end;

procedure TfMDI.mMetaIsoClick(Sender: TObject);
var
  old : string;
begin
  old := cEdit.SelText;
  cEdit.SelText:='<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-2">' +old;
end;

procedure TfMDI.mHTML401STempClick(Sender: TObject);
var
  hBitmapLibrary: THandle;
  rs : TResourceStream;
begin
  vText:=TstringList.Create;
  hBitmapLibrary:=LoadLibrary(PChar('mrr.dll'));
  rs := TResourceStream.Create(hBitmapLibrary, 'HTML401Strict', PChar('HTML'));
  vText.LoadFromStream(rs);
  rs.Free;
  FreeLibrary(hBitmapLibrary);

  cEdit.Lines.AddStrings(vText);
  vText.Free;

  vEdited:=true;
  procChangeMon;
end;

procedure TfMDI.mSelTagClick(Sender: TObject);
var
  kursor, start, stop : TBufferCoord;
begin
  kursor := cEdit.CaretXY;
  cEdit.SearchReplace('<','',[ssoBackwards]);
  start := cEdit.CaretXY;
  cedit.SearchReplace('>','',[]);
  stop := cEdit.CaretXY;

  cEdit.SetCaretAndSelection(kursor, start, stop);
end;

procedure TfMDI.mTagAttribClick(Sender: TObject);
var
  S : string;
  tak : TTag;
begin
  mSelTagClick(Self);
  tak := TTag.Create;
  S := cEdit.SelText;
  tak.Text:=S;
  fTagAttrib := TfTagAttrib.Create(Application);
  try
    with fTagAttrib do
    begin
      cList.Lines:= tak.Params;
      ShowModal;
    end;
  finally
    fTagAttrib.Free;
  end;
  tak.Free;
end;

procedure TfMDI.mEdtBodyClick(Sender: TObject);
var
  i : integer;
  recognized : boolean;
  html : THTMLParser;
  kursor, start, stop : TBufferCoord;
  newbody : string;
begin
  html := THTMLParser.Create;
  html.Text:=cEdit.Text;

  fEdtBody := TfEdtBody.Create(Application);
  try
    fEdtBody.cbgcolorchk.Checked:=false;
    fEdtBody.ctextchk.Checked:=false;
    fEdtBody.clinkchk.Checked:=false;
    fEdtBody.cvlinkchk.Checked:=false;
    fEdtBody.calinkchk.Checked:=false;
    fEdtBody.cbackchk.Checked:=false;

    fEdtBody.cOtherParam.Clear;

    cEdit.SearchReplace('<body','',[ssoEntireScope]);
    kursor := cEdit.CaretXY;
    cEdit.SearchReplace('<','',[ssoBackwards]);
    start := cEdit.CaretXY;
    cedit.SearchReplace('>','',[]);
    stop := cEdit.CaretXY;
    cEdit.SetCaretAndSelection(kursor, start, stop);

    while html.NextTag do
    begin
      if html.Tag.Name = 'BODY' then
      begin
        for i := 0 to html.Tag.Params.Count - 1 do
        begin
          recognized:=false;

          if LowerCase(funcGetName(html.Tag.Params[i])) = 'bgcolor' then
          begin
            recognized:=true;
            fEdtBody.cbgcolorchk.Checked:=true;
            fEdtBody.cbgcolorval.text:= ColorNameToEq(funcGetValue(html.Tag.Params[i]));
            fEdtBody.cbgcolor.Color:=HTMLtoColor(ColorNameToEq(funcGetValue(html.Tag.Params[i])));
          end;

          if LowerCase(funcGetName(html.Tag.Params[i])) = 'text' then
          begin
            recognized:=true;
            fEdtBody.ctextchk.Checked:=true;
            fEdtBody.ctextval.text:= ColorNameToEq(funcGetValue(html.Tag.Params[i]));
            fEdtBody.ctext.Color:=HTMLtoColor(ColorNameToEq(funcGetValue(html.Tag.Params[i])));
          end;

          if LowerCase(funcGetName(html.Tag.Params[i])) = 'link' then
          begin
            recognized:=true;
            fEdtBody.clinkchk.Checked:=true;
            fEdtBody.clinkval.text:= ColorNameToEq(funcGetValue(html.Tag.Params[i]));
            fEdtBody.cLink.Color:=HTMLtoColor(ColorNameToEq(funcGetValue(html.Tag.Params[i])));
          end;

          if LowerCase(funcGetName(html.Tag.Params[i])) = 'alink' then
          begin
            recognized:=true;
            fEdtBody.calinkchk.Checked:=true;
            fEdtBody.calinkval.text:= ColorNameToEq(funcGetValue(html.Tag.Params[i]));
            fEdtBody.caLink.Color:=HTMLtoColor(ColorNameToEq(funcGetValue(html.Tag.Params[i])));
          end;

          if LowerCase(funcGetName(html.Tag.Params[i])) = 'vlink' then
          begin
            recognized:=true;
            fEdtBody.cvlinkchk.Checked:=true;
            fEdtBody.cvlinkval.text:= ColorNameToEq(funcGetValue(html.Tag.Params[i]));
            fEdtBody.cvLink.Color:=HTMLtoColor(ColorNameToEq(funcGetValue(html.Tag.Params[i])));
          end;

          if LowerCase(funcGetName(html.Tag.Params[i])) = 'background' then
          begin
            recognized:=true;
            fEdtBody.cbackchk.Checked:=true;
            fEdtBody.cbackval.text:= funcGetValue(html.Tag.Params[i]);
          end;

          if not recognized then
          begin
            fEdtBody.cOtherParam.Lines.Add(html.Tag.Params[i]);
          end;

        end; {for parameter check}
        break;
      end; {for this TAG}
    end; {of document}
    html.Free;
    if fEdtBody.ShowModal = mrOK then
    begin
      newbody := '';
      newbody := newbody + '<body';
      if fEdtBody.cBackchk.Checked then newbody := newbody + ' background="' + fEdtBody.cBackVal.Text + '"';
      if fEdtBody.cBgColorchk.Checked then newbody := newbody + ' bgcolor="' + fEdtBody.cBgColorVal.Text + '"';
      if fEdtBody.cTextchk.Checked then newbody := newbody + ' text="' + fEdtBody.cTextVal.Text + '"';
      if fEdtBody.cLinkchk.Checked then newbody := newbody + ' link="' + fEdtBody.cLinkVal.Text + '"';
      if fEdtBody.cVLinkchk.Checked then newbody := newbody + ' vlink="' + fEdtBody.cVLinkVal.Text + '"';
      if fEdtBody.cALinkchk.Checked then newbody := newbody + ' alink="' + fEdtBody.cALinkVal.Text + '"';
      for i := 0 to fEdtBody.cOtherParam.Lines.Count - 1 do newbody := newbody + ' ' + fEdtBody.cOtherParam.Lines[i];
      newbody := newbody + '>';
      cEdit.SelText:=newbody;
    end;
  finally
    fEdtBody.Free;
  end;
end;

procedure TfMDI.actShowNonPrintExecute(Sender: TObject);
begin
  if (eoShowSpecialChars in cedit.Options) then
    cEdit.Options := cEdit.Options - [eoShowSpecialChars]
  else
    cEdit.Options := cEdit.Options + [eoShowSpecialChars];
  cEditStatusChange(self, [scAll]);
  procFocus;
  procWriteINI; {Uwaga!!!!!!!!!!!!!}
end;

procedure TfMDI.actSaveUnixExecute(Sender: TObject);
begin
  vSaveUnix := actSaveUnix.Checked;
end;

procedure TfMDI.actSaveISOExecute(Sender: TObject);
begin
  if actSaveWin.Checked then vSaveMode := 1;
  if actSaveISO.Checked then vSaveMode := 2;
  if actSaveUTF.Checked then vSaveMode := 3;
end;

procedure TfMDI.mMultiHighClick(Sender: TObject);
begin
  vMultiHigh := mMultiHigh.Checked;
  if vMultiHigh then
  begin
    if cEdit.Highlighter <> cMultiHigh then
    begin
      cMultiHigh.DefaultHighlighter := cEdit.Highlighter;
      cEdit.Highlighter := cMultiHigh;
    end;
  end
  else
  begin
    cEdit.Highlighter := cMultiHigh.DefaultHighlighter;
  end;
end;

procedure TfMDI.mFontClick(Sender: TObject);
begin
  dlgFont.Font := cEdit.Font;
  if dlgFont.Execute then cEdit.Font:= dlgFont.Font;
end;

procedure TfMDI.cCompPropExecute(Kind: SynCompletionType; Sender: TObject;
  var CurrentInput: String; var x, y: Integer; var CanExecute: Boolean);
var
  S , C: string;
  tak : THTMLParser;
  kursor : TBufferCoord;
begin
  kursor := cEdit.CaretXY;
  mSelTagClick(Self);
  tak := THTMLParser.Create;
  C := '';
  S := cEdit.SelText;
  tak.Text:=S;
  if tak.NextTag then C := tak.Tag.Name;
  tak.Free;
  cCompProp.ItemList.Clear;
  cEdit.SetCaretAndSelection(kursor, kursor, kursor);

  if C = 'TEST' then
    cCompProp.ItemList.Add('OK!!!!')
  else
    cCompProp.ItemList.Add('Boooooo');
end;

procedure TfMDI.mBracketClick(Sender: TObject);
var
  old, ent : string;
begin
  fBracket := TfBracket.Create(Application);
  try
    ent := '';
    if cEdit.SelLength > 0 then
    begin
      with fBracket do
      begin
        if ShowModal = mrOK then
        begin
          old := cEdit.SelText;
          if cNewLine.Checked then ent := #13#10;
          cEdit.SelText := cBefore.text + ent + old + ent + cAfter.text;
        end;
      end;
    end;
  finally
    fBracket.Free;
  end;
end;

procedure TfMDI.mMultiReplaceClick(Sender: TObject);
var
 i, selst, sell: integer;
 Options: TSynSearchOptions;
begin
  fMultiReplace := TfMultiReplace.Create(Application);
  try
    if fMultiReplace.ShowModal = mrOK then
    begin
      vSaveMultiCh := fMultiReplace.cSaveOpt.Checked;
      {opcje multizamiany}
      Options := [ssoReplace, ssoReplaceAll];
      if fMultiReplace.cCaseSensitive.Checked then
        Include(Options, ssoMatchCase);
      if fMultiReplace.cPrompt.Checked then
        Include(Options, ssoPrompt);
      if fMultiReplace.cSelOnly.Checked then
        Include(Options, ssoSelectedOnly);
      if not fMultiReplace.cFromCaret.Checked then
        Include(Options, ssoEntireScope);
      if fMultiReplace.cBackward.Checked then
        Include(Options, ssoBackwards);
      //#ToDo1 do multizamiany
      {if gbSearchWholeWords then
        Include(Options, ssoWholeWord);}

      for i := 1 to fMultiReplace.cMultiList.RowCount - 1 do
      begin
        selst := cEdit.SelStart;
        sell := cEdit.SelLength;
        cEdit.SearchReplace(fMultiReplace.cMultiList.Cells[0,i], fMultiReplace.cMultiList.Cells[1,i] , Options);
        cEdit.SelStart := selst;
        cEdit.SelLength := sell;
      end;
    end;

    cEdit.SelLength := 0;
    if ConfirmReplaceDialog <> nil then
      ConfirmReplaceDialog.Free;
  finally
    fMultiReplace.Free;
  end;
end;

procedure TfMDI.mSaveCompClick(Sender: TObject);
var
  CompStream: TZCompressionStream;
  OutStream : TFileStream;
begin
  if dlgSaveComp.Execute then
  begin
    OutStream := TFileStream.Create(dlgSaveComp.FileName, fmCreate);
    CompStream := TZCompressionStream.Create(OutStream, zcDefault);
    cEdit.Lines.SaveToStream(CompStream);
    CompStream.Free;
    OutStream.Free;
  end;
end;

procedure TfMDI.mSlownieClick(Sender: TObject);
begin
  if cEdit.SelLength > 0 then
    cEdit.SelText := LiczbaSlownie(cEdit.SelText);
end;

procedure TfMDI.mDecToBinClick(Sender: TObject);
begin
  if (cEdit.SelLength > 0) and (CheckBase(cEdit.SelText, 10) = true) then
  begin
    cEdit.SelText := decton(strtoint64(cEdit.SelText),2);
  end;
end;

procedure TfMDI.mBinToDecClick(Sender: TObject);
begin
  if (cEdit.SelLength > 0) and (CheckBase(cEdit.SelText, 2) = true) then
  begin
    cEdit.SelText := inttostr(ntodec(cEdit.SelText,2));
  end;
end;

procedure TfMDI.mHexToDecClick(Sender: TObject);
begin
  if (cEdit.SelLength > 0) and (CheckBase(cEdit.SelText, 16) = true) then
  begin
    cEdit.SelText := inttostr(ntodec(cEdit.SelText,16));
  end;
end;

procedure TfMDI.mOctToDecClick(Sender: TObject);
begin
  if (cEdit.SelLength > 0) and (CheckBase(cEdit.SelText, 8) = true) then
  begin
    cEdit.SelText := inttostr(ntodec(cEdit.SelText,8));
  end;
end;

procedure TfMDI.mDecToOctClick(Sender: TObject);
begin
  if (cEdit.SelLength > 0) and (CheckBase(cEdit.SelText, 10) = true) then
  begin
    cEdit.SelText := decton(strtoint64(cEdit.SelText),8);
  end;
end;

procedure TfMDI.mDecToHexClick(Sender: TObject);
begin
  if (cEdit.SelLength > 0) and (CheckBase(cEdit.SelText, 10) = true) then
  begin
    cEdit.SelText := decton(strtoint64(cEdit.SelText),16);
  end;
end;

procedure TfMDI.mBinToOctClick(Sender: TObject);
begin
  if (cEdit.SelLength > 0) and (CheckBase(cEdit.SelText, 2) = true) then
  begin
    cEdit.SelText := decton(ntodec(cEdit.SelText,2),8);
  end;
end;

procedure TfMDI.mBinToHexClick(Sender: TObject);
begin
  if (cEdit.SelLength > 0) and (CheckBase(cEdit.SelText, 2) = true) then
  begin
    cEdit.SelText := decton(ntodec(cEdit.SelText,2),16);
  end;
end;

procedure TfMDI.mOctToBinClick(Sender: TObject);
begin
  if (cEdit.SelLength > 0) and (CheckBase(cEdit.SelText, 8) = true) then
  begin
    cEdit.SelText := decton(ntodec(cEdit.SelText,8),2);
  end;
end;

procedure TfMDI.mOctToHexClick(Sender: TObject);
begin
  if (cEdit.SelLength > 0) and (CheckBase(cEdit.SelText, 8) = true) then
  begin
    cEdit.SelText := decton(ntodec(cEdit.SelText,8),16);
  end;
end;

procedure TfMDI.mHexToBinClick(Sender: TObject);
begin
  if (cEdit.SelLength > 0) and (CheckBase(cEdit.SelText, 16) = true) then
  begin
    cEdit.SelText := decton(ntodec(cEdit.SelText,16),2);
  end;
end;

procedure TfMDI.mHexToOctClick(Sender: TObject);
begin
  if (cEdit.SelLength > 0) and (CheckBase(cEdit.SelText, 16) = true) then
  begin
    cEdit.SelText := decton(ntodec(cEdit.SelText,16),8);
  end;
end;

procedure TfMDI.mExportTeXClick(Sender: TObject);
var
  vExportFileName : string;
begin
  dlgExportFile.Filter:=cExportTeX.DefaultFilter;
  if dlgExportFile.Execute then
  begin
    vExportFileName := dlgExportFile.FileName;
    if ExtractFileExt(vExportFileName) = '' then vExportFileName := vExportFileName + '.tex';
    with cExportTeX do
    begin
      Title := 'Plik wyeksportowany do TeX';
      Highlighter := cEdit.Highlighter;
      ExportAsText := true;
      ExportAll(cEdit.Lines);
      SaveToFile(vExportFileName);
    end;
  end;
end;

procedure TfMDI.mEditOptClick(Sender: TObject);
var
  opcje : TSynEditorOptionsContainer;
begin
  opcje := TSynEditorOptionsContainer.create(application);
  try
    opcje.Assign(cEdit);
    if cEditOpt.Execute(opcje) then
    opcje.AssignTo(cEdit);
  finally
    opcje.Free;
  end;
  cEditStatusChange(self, [scAll]);

  procWriteINI;
end;

procedure TfMDI.actPasteExecute(Sender: TObject);
begin
  cEdit.PasteFromClipboard;
  vEdited:=true;
  procChangeMon;
end;

procedure TfMDI.actCopyExecute(Sender: TObject);
begin
  cEdit.CopyToClipboard;
  cEditStatusChange(Self, [scAll]);
end;

procedure TfMDI.actCutExecute(Sender: TObject);
begin
  cEdit.CutToClipboard;
  vEdited:=true;
  procChangeMon;
end;

procedure TfMDI.actUndoExecute(Sender: TObject);
begin
  cEdit.Undo;
  cEditChange(cEdit);
  //cEditSelectionChange(cEdit);
end;

procedure TfMDI.actRedoExecute(Sender: TObject);
begin
  cEdit.Redo;
  cEditChange(cEdit);
  //cEditSelectionChange(cEdit);
end;

procedure TfMDI.mOptSaveClick(Sender: TObject);
var
  opcje : TSynEditorOptionsContainer;
  plik : TFileStream;
begin
  opcje := TSynEditorOptionsContainer.create(application);
  plik := TFileStream.Create(ExtractFilePath(Application.ExeName) + vEdOptFileName, fmCreate);
  try
    opcje.Assign(cEdit);
    plik.WriteComponent(opcje);
  finally
    plik.Free;
    opcje.Free;
  end;

  //procWriteINI;
end;

procedure TfMDI.dlgSaveFileTypeChange(Sender: TObject);
//var test :string;
begin
  case dlgSaveFile.FilterIndex of
    1: vAddExt := '.c';
    2: vAddExt := '.css';
    3: vAddExt := '.f';
    4: vAddExt := '.html';
    5: vAddExt := '.java';
    6: vAddExt := '.js';
    7: vAddExt := '.pas';
    8: vAddExt := '.php';
    9: vAddExt := '.tex';
    10: vAddExt := '';
  end;
end;

procedure TfMDI.dlgSaveFileShow(Sender: TObject);
begin
  dlgSaveFileTypeChange(self);
end;

procedure TfMDI.cEditPaintTransient(Sender: TObject; Canvas: TCanvas;
  TransientType: TTransientType);
var Editor : TSynEdit;
    OpenChars: array of WideChar;//[0..2] of WideChar=();
    CloseChars: array of WideChar;//[0..2] of WideChar=();

  function IsCharBracket(AChar: WideChar): Boolean;
  begin
    case AChar of
      '{','[','(','<','}',']',')','>':
        Result := True;
      else
        Result := False;
    end;
  end;

  function CharToPixels(P: TBufferCoord): TPoint;
  begin
    Result:=Editor.RowColumnToPixels(Editor.BufferToDisplayPos(P));
  end;

var P: TBufferCoord;
    Pix: TPoint;
    D     : TDisplayCoord;
    S: WideString;
    I: Integer;
    Attri: TSynHighlighterAttributes;
    ArrayLength: Integer;
    start: Integer;
    TmpCharA, TmpCharB: WideChar;
begin
  if TSynEdit(Sender).SelAvail or (not vBrackMatch) then exit;
  Editor := TSynEdit(Sender);
  ArrayLength:= 3;
//if you had a highlighter that used a markup language, like html or xml,
//then you would want to highlight the greater and less than signs
//as illustrated below

//  if (Editor.Highlighter = shHTML) or (Editor.Highlighter = shXML) then
//    inc(ArrayLength);

  SetLength(OpenChars, ArrayLength);
  SetLength(CloseChars, ArrayLength);
  for i := 0 to ArrayLength - 1 do
    Case i of
      0: begin OpenChars[i] := '('; CloseChars[i] := ')'; end;
      1: begin OpenChars[i] := '{'; CloseChars[i] := '}'; end;
      2: begin OpenChars[i] := '['; CloseChars[i] := ']'; end;
      3: begin OpenChars[i] := '<'; CloseChars[i] := '>'; end;
    end;

  P := Editor.CaretXY;
  D := Editor.DisplayXY;

  Start := Editor.SelStart;

  if (Start > 0) and (Start <= length(Editor.Text)) then
    TmpCharA := Editor.Text[Start]
  else
    TmpCharA := #0;

  if (Start < length(Editor.Text)) then
    TmpCharB := Editor.Text[Start + 1]
  else TmpCharB := #0;

  if not IsCharBracket(TmpCharA) and not IsCharBracket(TmpCharB) then exit;
  S := TmpCharB;
  if not IsCharBracket(TmpCharB) then
  begin
    P.Char := P.Char - 1;
    S := TmpCharA;
  end;
  Editor.GetHighlighterAttriAtRowCol(P, S, Attri);

  if (Editor.Highlighter.SymbolAttribute = Attri) then
  begin
    for i := low(OpenChars) to High(OpenChars) do
    begin
      if (S = OpenChars[i]) or (S = CloseChars[i]) then
      begin
        Pix := CharToPixels(P);

        Editor.Canvas.Brush.Style := bsSolid; //Clear;
        Editor.Canvas.Font.Assign(Editor.Font);
        Editor.Canvas.Font.Style := Attri.Style;

        if (TransientType = ttAfter) then
        begin
          Editor.Canvas.Font.Color := FBracketFG;
          Editor.Canvas.Brush.Color := FBracketBG;
        end else begin
          Editor.Canvas.Font.Color := Attri.Foreground;
          Editor.Canvas.Brush.Color := Attri.Background;
        end;
        if Editor.Canvas.Font.Color = clNone then
          Editor.Canvas.Font.Color := Editor.Font.Color;
        if Editor.Canvas.Brush.Color = clNone then
          Editor.Canvas.Brush.Color := Editor.Color;

        Editor.Canvas.TextOut(Pix.X, Pix.Y, S);
        P := Editor.GetMatchingBracketEx(P);

        if (P.Char > 0) and (P.Line > 0) then
        begin
          Pix := CharToPixels(P);
          if Pix.X > Editor.Gutter.Width then
          begin
            if S = OpenChars[i] then
              Editor.Canvas.TextOut(Pix.X, Pix.Y, CloseChars[i])
            else Editor.Canvas.TextOut(Pix.X, Pix.Y, OpenChars[i]);
          end;
        end;
      end; //if
    end;//for i :=
    Editor.Canvas.Brush.Style := bsSolid;
  end;
end;




procedure TfMDI.tAmpNBSPClick(Sender: TObject);
const
  inserts: array [1..22] of string = ('&nbsp;', '&frac12;', '&frac14;', '&frac34;',
           '&quot;', '&amp;', '&lt;', '&gt;', '&cent;', '&copy;', '&reg;', '&trade;',
           '&sect;', '&euro;', '&laquo;', '&raquo;', '&para;', '&micro;',
           '&deg;', '&plusmn;', '&not;', '&permil;');
begin
  cEdit.SelText := inserts[(Sender as TTBXItem).Tag];
end;

procedure TfMDI.tInsTagBRnlClick(Sender: TObject);
begin
  if vXHTML then cEdit.SelText := '<br />'+#13#10
  else cEdit.SelText := '<br>'+#13#10;
end;

procedure TfMDI.tInsTagBRClick(Sender: TObject);
begin
  if vXHTML then cEdit.SelText := '<br />'
  else cEdit.SelText := '<br>';
end;

procedure TfMDI.tInsTagSPANClick(Sender: TObject);
const
  inserts: array [1..10] of string = ('<span class="">|</span>', '<div id="">|</div>', '<strong>|</strong>', '<span style="">|</span>', '<div style="">|</div>', '<div class="">|</div>', '', '', '', '');
var
  tagi: TStringList;
  old, new : string;
  poz : TBufferCoord;
begin
  tagi := TStringList.Create;
  old := cEdit.SelText;
  new := inserts[(Sender as TTBXItem).Tag];
  StrToStrings(new,'|',tagi);
  tagi.Add('');
  cEdit.SelText := tagi[0];
  poz := cEdit.CaretXY;
  cEdit.SelText := old + tagi[1];
  cEdit.CaretXY := poz;
  tagi.Free;
end;

procedure TfMDI.mInsDivClick(Sender: TObject);
var
  old, selektor, output: string;
begin
  fInsDiv := TfInsDiv.Create(Application);
  try
    if fInsDiv.ShowModal = mrOk then
    begin
      old := cEdit.SelText;
      if fInsDiv.TBXRadioButton1.Checked then selektor := 'div' else selektor := 'span';
      output := '<' + selektor;
      if fInsDiv.cId.Text <> '' then output := output + ' id="' + fInsDiv.cId.Text + '"';
      if fInsDiv.cClass.Text <> '' then output := output + ' class="' + fInsDiv.cclass.Text + '"';
      if fInsDiv.cStyle.Text <> '' then output := output + ' style="' + fInsDiv.cstyle.Text + '"';
      output := output + '>' + #13#10 + old + #13#10 + '</' +selektor + '>';
      cEdit.SelText := output;
    end;
  finally
    fInsDiv.Free;
  end;
end;

procedure TfMDI.mXHTML10STempClick(Sender: TObject);
var
  hBitmapLibrary: THandle;
  rs : TResourceStream;
begin
  vText:=TstringList.Create;
  hBitmapLibrary:=LoadLibrary(PChar('mrr.dll'));
  rs := TResourceStream.Create(hBitmapLibrary, 'XHTML10Strict', PChar('HTML'));
  vText.LoadFromStream(rs);
  rs.Free;
  FreeLibrary(hBitmapLibrary);

  cEdit.Lines.AddStrings(vText);
  vText.Free;

  vEdited:=true;
  procChangeMon;
end;

procedure TfMDI.mHTML401TTempClick(Sender: TObject);
var
  hBitmapLibrary: THandle;
  rs : TResourceStream;
begin
  vText:=TstringList.Create;
  hBitmapLibrary:=LoadLibrary(PChar('mrr.dll'));
  rs := TResourceStream.Create(hBitmapLibrary, 'HTML401Trans', PChar('HTML'));
  vText.LoadFromStream(rs);
  rs.Free;
  FreeLibrary(hBitmapLibrary);

  cEdit.Lines.AddStrings(vText);
  vText.Free;

  vEdited:=true;
  procChangeMon;
end;

procedure TfMDI.mUpperClick(Sender: TObject);
begin
  if cEdit.SelLength > 0 then
  begin
    cEdit.SelText:=AnsiUpperCase(cEdit.SelText);
  end;
end;

procedure TfMDI.mLowerClick(Sender: TObject);
begin
  if cEdit.SelLength > 0 then
  begin
    cEdit.SelText:=AnsiLowerCase(cEdit.SelText);
  end;
end;

procedure TfMDI.mReverseClick(Sender: TObject);
var
  org, new: string;
  dlug, i: integer;
begin
  if cEdit.SelLength > 0 then
  begin
    org := cEdit.SelText;
    dlug := cEdit.SelLength;
    SetLength(new, dlug);
    for i := 1 to dlug do
      new[i] := org[dlug - i + 1];
    cEdit.SelText := new;
  end;
end;

procedure TfMDI.cEditReplaceText(Sender: TObject; const ASearch,
  AReplace: WideString; Line, Column: Integer;
  var Action: TSynReplaceAction);
var
  APos: TPoint;
  EditRect: TRect;
begin
  if ASearch = AReplace then
    Action := raSkip
  else begin
    APos := cEdit.ClientToScreen(
      cEdit.RowColumnToPixels(
      cEdit.BufferToDisplayPos(
        BufferCoord(Column, Line) ) ) );
    EditRect := ClientRect;
    EditRect.TopLeft := ClientToScreen(EditRect.TopLeft);
    EditRect.BottomRight := ClientToScreen(EditRect.BottomRight);

    if ConfirmReplaceDialog = nil then
      ConfirmReplaceDialog := TConfirmReplaceDialog.Create(Application);
    ConfirmReplaceDialog.PrepareShow(EditRect, APos.X, APos.Y,
      APos.Y + cEdit.LineHeight, ASearch);
    case ConfirmReplaceDialog.ShowModal of
      mrYes: Action := raReplace;
      mrYesToAll: Action := raReplaceAll;
      mrNo: Action := raSkip;
      else Action := raCancel;
    end;
  end;
end;

procedure TfMDI.cEditKeyPress(Sender: TObject; var Key: WideChar);
begin
  if vAutoBracket then
  begin
    if Key = '[' then
    begin
      cEdit.SelText := '[]';
      Key := #0;
      cEdit.CaretX := cEdit.CaretX - 1;
    end;
    if Key = '(' then
    begin
      cEdit.SelText := '()';
      Key := #0;
      cEdit.CaretX := cEdit.CaretX - 1;
    end;
    if Key = '"' then
    begin
      cEdit.SelText := '""';
      Key := #0;
      cEdit.CaretX := cEdit.CaretX - 1;
    end;
    if Key = '<' then
    begin
      cEdit.SelText := '<>';
      Key := #0;
      cEdit.CaretX := cEdit.CaretX - 1;
    end;
    if Key = '{' then
    begin
      cEdit.SelText := '{}';
      Key := #0;
      cEdit.CaretX := cEdit.CaretX - 1;
    end;
    if Key = '''' then
    begin
      cEdit.SelText := '''''';
      Key := #0;
      cEdit.CaretX := cEdit.CaretX - 1;
    end;
    if Key = '`' then
    begin
      cEdit.SelText := '``';
      Key := #0;
      cEdit.CaretX := cEdit.CaretX - 1;
    end;
  end;

  if fDone = true then // bo obs³u¿one w onKeyDown
  begin
    Key := #0;
    fDone := false;
  end;
end;

procedure TfMDI.actBOMStateExecute(Sender: TObject);
begin
  vBOM := actBOMState.Checked;
end;


procedure TfMDI.cEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  fDone := false;
  if (Shift=[ssCtrl]) then
  begin
    if (Key = VK_RETURN) then
    begin
      if vXHTML then cEdit.SelText := '<br />'+#13#10
      else cEdit.SelText := '<br>'+#13#10;
      fDone := true;
    end
    else
    if (Key = VK_SPACE) then
    begin
      cEdit.SelText := '&nbsp;';
      fDone := true;
    end;
  end;
end;

end.
