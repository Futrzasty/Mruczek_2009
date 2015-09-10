unit uMDIHex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, MPHexEditor, MPHexEditorEx, TBXMDI, TBX, TB2Item,
  ImgList, TB2Dock, TB2Toolbar, StrUtils, JvDialogs, JvFormPlacement, ActnList,
  JvComponent, Menus, TBXExtItems, JvComponentBase, uHEXFind, uHEXReplace, uHEXPrinting;

type
  TfMDIHex = class(TForm)
    dockMDILeft: TTBDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    TBXSeparatorItem15: TTBXSeparatorItem;
    TBImageList1: TTBImageList;
    contMenu: TTBItemContainer;
    mEdit: TTBXSubmenuItem;
    mUndo: TTBXItem;
    mRedo: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    mCut: TTBXItem;
    mCopy: TTBXItem;
    mPaste: TTBXItem;
    mDel: TTBXItem;
    mSelectAll: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    mFind: TTBXItem;
    mFindNext: TTBXItem;
    mReplace: TTBXItem;
    TBXSeparatorItem10: TTBXSeparatorItem;
    mGoToLine: TTBXItem;
    mView: TTBXSubmenuItem;
    mHighlight: TTBXSubmenuItem;
    mCPP: TTBXItem;
    mPHP: TTBXItem;
    mHTML: TTBXItem;
    mTeX: TTBXItem;
    mGen: TTBXItem;
    mJS: TTBXItem;
    mCSS: TTBXItem;
    TBXSeparatorItem12: TTBXSeparatorItem;
    mMultiHigh: TTBXItem;
    mInsert: TTBXSubmenuItem;
    mInsHTML: TTBXSubmenuItem;
    mInsBold: TTBXItem;
    mInsItalic: TTBXItem;
    TBXSeparatorItem11: TTBXSeparatorItem;
    mInsAnchor: TTBXItem;
    mInsTable: TTBXItem;
    mInsPic: TTBXItem;
    mInsForm: TTBXItem;
    TBXSeparatorItem14: TTBXSeparatorItem;
    mMetaIso: TTBXItem;
    mHTMLTemplate: TTBXItem;
    mInsColor: TTBXItem;
    mTools: TTBXSubmenuItem;
    mToolHTML: TTBXSubmenuItem;
    mSelTag: TTBXItem;
    mTagAttrib: TTBXItem;
    TBXSeparatorItem17: TTBXSeparatorItem;
    mEdtBody: TTBXItem;
    TBXSeparatorItem16: TTBXSeparatorItem;
    mMorse: TTBXSubmenuItem;
    mMorseEncode: TTBXItem;
    mMorseDecode: TTBXItem;
    mCoding: TTBXSubmenuItem;
    mCodeXORint: TTBXItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    mCodeXORpass: TTBXItem;
    mDecodeXORpass: TTBXItem;
    mRoman: TTBXSubmenuItem;
    mToRoman: TTBXItem;
    mFromRoman: TTBXItem;
    mROT13: TTBXItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    mViewHTML: TTBXItem;
    contFile: TTBItemContainer;
    mSave: TTBXItem;
    mSaveAs: TTBXItem;
    mClose: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    mPrintSetup: TTBXItem;
    mPrint: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    contWindow: TTBItemContainer;
    mWindow: TTBXSubmenuItem;
    mWinHor: TTBXItem;
    mWinVer: TTBXItem;
    mWinCasc: TTBXItem;
    mWinMin: TTBXItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    mWindowList: TTBXMDIWindowItem;
    contTBFile: TTBItemContainer;
    tSave: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    tUndo: TTBXItem;
    tRedo: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    tCut: TTBXItem;
    tCopy: TTBXItem;
    tPaste: TTBXItem;
    contTBFormat: TTBItemContainer;
    contTBAdvFor: TTBItemContainer;
    contOpt: TTBItemContainer;
    mOptions: TTBXItem;
    cEditHex: TMPHexEditorEx;
    dlgSaveFile: TJvSaveDialog;
    cPlacementHex: TJvFormStorage;
    ActionList1: TActionList;
    actCut: TAction;
    actCopy: TAction;
    actPaste: TAction;
    actUndo: TAction;
    actRedo: TAction;
    dlgFont: TFontDialog;
    mFont: TTBXItem;
    mPOPtbar: TTBXPopupMenu;
    pmDel: TTBXItem;
    pmPaste: TTBXItem;
    TBXSeparatorItem18: TTBXSeparatorItem;
    pmCopy: TTBXItem;
    pmCut: TTBXItem;
    pmRedo: TTBXItem;
    pmUndo: TTBXItem;
    TBXLabelItem1: TTBXLabelItem;
    TBXLabelItem2: TTBXLabelItem;
    dlgPrinterSetup: TPrinterSetupDialog;
    ActionList2: TActionList;
    actFilePrintSetup: TAction;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cEditHexChange(Sender: TObject);
    procedure mCloseClick(Sender: TObject);
    procedure mCutClick(Sender: TObject);
    procedure mCopyClick(Sender: TObject);
    procedure mPasteClick(Sender: TObject);
    procedure mSelectAllClick(Sender: TObject);
    procedure cEditHexMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cEditHexKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actUndoExecute(Sender: TObject);
    procedure actRedoExecute(Sender: TObject);
    procedure mSaveClick(Sender: TObject);
    procedure mSaveAsClick(Sender: TObject);
    procedure mWinHorClick(Sender: TObject);
    procedure mWinVerClick(Sender: TObject);
    procedure mWinCascClick(Sender: TObject);
    procedure mWinMinClick(Sender: TObject);
    procedure mFontClick(Sender: TObject);
    procedure mDelClick(Sender: TObject);
    procedure mFindClick(Sender: TObject);
    procedure mFindNextClick(Sender: TObject);
    procedure mReplaceClick(Sender: TObject);
    procedure mOptionsClick(Sender: TObject);
    procedure mPrintClick(Sender: TObject);
    procedure actFilePrintSetupExecute(Sender: TObject);
  private
    // find storage
    FFindRec: TFindRec;
    // replace storage
    FReplaceRec: TReplaceRec;    
    vFileName, vFileExt: string;
    vEdited: Boolean;
    procedure procChangeMon;
    procedure procStatusChange;

  public
    procedure procOpenDoc(vFileNameT: String);
  end;

var
  fMDIHex: TfMDIHex;

implementation

uses uMain, uConfBox, uOptions;

{$R *.dfm}


const
  STR_SB_POS = '%s';
    // err->BytesPerUnit (Replace)
  STR_ERR_BPU_FINDTEXT = 'Size of data to search for must be a multiple '+
    'of Bytes per unit';
  STR_ERR_BPU_REPLACETEXT = 'Size of replacement data must be a multiple '+
    'of Bytes per unit';
  STR_NOT_FOUND = 'Nie znaleziono.';
  STR_NUM_REPLACED = '%d replacemets.';      

procedure TfMDIHex.procOpenDoc(vFileNameT: String);
var i: integer;
begin
  cEditHex.LoadFromFile(vFileNameT);
  vFileName:=vFileNameT;
  self.Caption:=ExtractFileName(vFileName);

  for i := 0 to fMain.cMDIChildren.ButtonCount - 1 do
    if fMain.cMDIChildren.Buttons[i].Form = self then
    begin
      fMain.cMDIChildren.Buttons[i].Caption := ExtractFileName(vFileName);
    end;

  vFileExt:=ExtractFileExt(vFileName);

  vEdited:=false;
  procChangeMon;
  Self.Activate;
end;

procedure TfMDIHex.procChangeMon;
begin
if vEdited then
  fMain.cStatusBar.Panels[6].ImageIndex:=23
  else
  fMain.cStatusBar.Panels[6].ImageIndex:=19;
end;

procedure TfMDIHex.procStatusChange;
begin
  actUndo.Enabled:=cEditHex.CanUndo;
  actRedo.Enabled:=cEditHex.CanRedo;

  actCut.Enabled:=cEditHex.CanCut;
  actCopy.Enabled:=cEditHex.CanCopy;
  actPaste.Enabled:=cEditHex.CanPaste;

  fMain.cStatusBar.Panels[1].Caption:=Format(STR_SB_POS, [Trim(cEditHex.GetAnyOffsetString(cEditHex.GetCursorPos))]);

  if cEditHex.InsertMode then fMain.cStatusBar.Panels[2].Caption := 'Insert'
  else fMain.cStatusBar.Panels[2].Caption := 'Overwrite';
end;

procedure TfMDIHex.FormActivate(Sender: TObject);
begin
  fMain.mMenuGroup.LinkSubitems:=contMenu.Items;
  fMain.mFileGroup.LinkSubitems:=contFile.Items;
  fMain.mWindowGroup.LinkSubitems:=contWindow.Items;
  fMain.tFileGroup.LinkSubitems:=contTBFile.Items;
  fMain.tFormatGroup.LinkSubitems:=contTBFormat.Items;
  fMain.tAdvFor.LinkSubitems:=contTBAdvFor.Items;
  fMain.mOptGroup.LinkSubitems:=contOpt.Items;
  fMain.cStatusBar.Panels[8].Caption:=vFileName;

  fMain.mColEdit.Enabled := false; //kolorowanie sk³adni w menu

  procChangeMon;

  if MDICount = 0 then
    begin

      fMain.tTBFormat.Visible:=tbF;
      fMain.tTBAdvFor.Visible:=tbAF;
    end;
  procStatusChange;
end;

procedure TfMDIHex.FormClose(Sender: TObject; var Action: TCloseAction);
var vConf :integer;
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
        cEditHex.SaveToFile(vFileName);
        Action:=caFree;
      end
      else
      begin
        dlgSaveFile.FileName:=vFileName;
        if dlgSaveFile.Execute then
        begin
          cEditHex.SaveToFile(dlgSaveFile.FileName);
          Action:=caFree;
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
    fMain.tTBFormat.Visible:=False;
    fMain.tTBAdvFor.Visible:=False;
    fMain.cStatusBar.Panels[6].ImageIndex:=19;
    fmain.cStatusBar.Panels[8].Caption:='';
  end;
end;

procedure TfMDIHex.FormCreate(Sender: TObject);
begin
  cEditHex.Top:=0;
  cEditHex.Left:=dockMDILeft.Width+1;
  cEditHex.Height:=ClientHeight-3;
  cEditHex.Width:=ClientWidth-dockMDILeft.Width-1;
  FileCount:=FileCount+1;

  vFileName:='nienazwany' + inttostr(FileCount) +'.txt';
  fMain.cStatusBar.Panels[8].Caption:=vFileName;
  self.Caption:=vFileName;

  dlgSaveFile.Filter:=s;
  dlgSaveFile.FilterIndex := 9; {tymczasowo???}

  vEdited:=false;
  procChangeMon;
end;

procedure TfMDIHex.cEditHexChange(Sender: TObject);
begin
  vEdited:=true;
  procChangeMon;
  procStatusChange;
end;

procedure TfMDIHex.mCloseClick(Sender: TObject);
begin
  Close
end;

procedure TfMDIHex.mCutClick(Sender: TObject);
begin
  cEditHex.CBCut;
  procStatusChange;
end;

procedure TfMDIHex.mCopyClick(Sender: TObject);
begin
  cEditHex.CBCopy;
  procStatusChange;
end;

procedure TfMDIHex.mPasteClick(Sender: TObject);
begin
  cEditHex.CBPaste;
  procStatusChange;
end;

procedure TfMDIHex.mSelectAllClick(Sender: TObject);
begin
  cEditHex.SelectAll;
  procStatusChange;
end;

procedure TfMDIHex.cEditHexMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  procStatusChange;
end;

procedure TfMDIHex.cEditHexKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  procStatusChange;
end;

procedure TfMDIHex.actUndoExecute(Sender: TObject);
begin
  cEditHex.Undo;
  procStatusChange;
end;

procedure TfMDIHex.actRedoExecute(Sender: TObject);
begin
  cEditHex.Redo;
  procStatusChange;
end;

procedure TfMDIHex.mSaveClick(Sender: TObject);
var i: integer;
begin
  if LeftBStr(vFileName,10) <> 'nienazwany' then
  begin
    cEditHex.SaveToFile(vFileName);
    vEdited:=false;
    procChangeMon;
  end
  else
  begin
    dlgSaveFile.FileName:=vFileName;
    if dlgSaveFile.Execute then
    begin
      cEditHex.SaveToFile(dlgSaveFile.FileName);
      vFileName:=dlgSaveFile.FileName;
      fMain.cStatusBar.Panels[8].Caption:=vFileName;
      self.Caption:=ExtractFileName(vFileName);

        for i := 0 to fMain.cMDIChildren.ButtonCount - 1 do
    if fMain.cMDIChildren.Buttons[i].Form = self then
    begin
      fMain.cMDIChildren.Buttons[i].Caption := ExtractFileName(vFileName);
    end;

      vEdited:=false;
      procChangeMon;
    end;
  end;
end;

procedure TfMDIHex.mSaveAsClick(Sender: TObject);
var i: integer;
begin
dlgSaveFile.FileName:=vFileName;
  if dlgSaveFile.Execute then
  begin
    cEditHex.SaveToFile(dlgSaveFile.FileName);
    vFileName:=dlgSaveFile.FileName;
    fMain.cStatusBar.Panels[8].Caption:=vFileName;
    self.Caption:=ExtractFileName(vFileName);

      for i := 0 to fMain.cMDIChildren.ButtonCount - 1 do
    if fMain.cMDIChildren.Buttons[i].Form = self then
    begin
      fMain.cMDIChildren.Buttons[i].Caption := ExtractFileName(vFileName);
    end;

    vEdited:=false;
    procChangeMon;
  end;
end;

procedure TfMDIHex.mWinHorClick(Sender: TObject);
begin
  fMain.TileMode:=tbHorizontal;
  fMain.Tile;
end;

procedure TfMDIHex.mWinVerClick(Sender: TObject);
begin
  fMain.TileMode:=tbVertical;
  fMain.Tile;
end;

procedure TfMDIHex.mWinCascClick(Sender: TObject);
begin
  fMain.Cascade;
end;

procedure TfMDIHex.mWinMinClick(Sender: TObject);
var
  i:integer;
begin
  for i:= MDICount-1 downto 0 do
  begin
    fMain.MDIChildren[i].WindowState:=wsMinimized;
  end;
  fMain.ArrangeIcons;
end;


procedure TfMDIHex.mFontClick(Sender: TObject);
begin
  dlgFont.Font := cEditHex.Font;
  if dlgFont.Execute then cEditHex.Font:= dlgFont.Font;
end;

procedure TfMDIHex.mDelClick(Sender: TObject);
begin
  if cEditHex.SelCount <> 0 then
    cEditHex.DeleteSelection('wyma¿ selekcjê');
  procStatusChange;
end;

procedure TfMDIHex.mFindClick(Sender: TObject);
var
  LIntSize: Integer;
begin
  if FindGetOptions(FFindRec) then
  begin
    with FFindRec do
    begin
      if not BoolFindText then
      begin
        // convert hex data to string
        SetLength(StrData, Length(StrText));
        UniqueString(StrData);
        ConvertHexToBin(PChar(StrText), PChar(StrData), Length(StrText), cEditHex.SwapNibbles, LIntSize);
        SetLength(StrData, LIntSize);
      end;
      if Length(StrData) > 0 then
      begin
        // start find
        //acEditFindNext.Enabled := True;
        //acEditFindNext.Execute;
        mFindNextClick(Self);
      end;
    end;
  end;
end;

procedure TfMDIHex.mFindNextClick(Sender: TObject);
var
  LIntFound,
    LIntPos: Integer;
  LStrFind: string;
begin
  with cEditHex, FFindRec
  do
    if StrData <> '' then
    begin
      LIntPos := Max(0, GetCursorPos);
      if (Length(StrData) = 1) and ((SelCount) = 1)
      then
        Inc(LIntPos);
      if LIntPos >= DataSize
      then
        LIntFound := -1
      else
      begin
        LStrFind := PrepareFindReplaceData(StrData, BoolIgnoreCase, BoolFindText);
        if (Length(LStrFind) mod BytesPerUnit) <> 0 then
        begin
          MessageDlg(STR_ERR_BPU_FINDTEXT, mtError, [mbOK], 0);
          Exit;
        end;
        LIntFound := Find(PChar(LStrFind), Length(LStrFind), LIntPos, DataSize -1,
          BoolIgnoreCase);
      end;
      if LIntFound = -1
      then
        ShowMessage(STR_NOT_FOUND)
      else
      begin
        SelStart := LIntFound + Length(LStrFind)-1;
        SelEnd := LIntFound;
      end;
    end;
end;

procedure TfMDIHex.mReplaceClick(Sender: TObject);
var
  LIntSize,
  LIntPos,
  LIntDone,
  LIntPos2: Integer;

  LStrFind,
    LStrReplace: string;
begin
  if ReplaceGetOptions(FReplaceRec)
  then
    with cEditHex, FReplaceRec do
    try
      if not BoolFindText then
      begin
        // convert hex data to string
        SetLength(StrDataToFind, Length(StrTextToFind));
        UniqueString(StrDataToFind);
        ConvertHexToBin(PChar(StrTextToFind), PChar(StrDataToFind),
          Length(StrTextToFind), SwapNibbles, LIntSize);
        SetLength(StrDataToFind, LIntSize);
      end;
      UniqueString(StrDataToReplace);
      if (not BoolReplaceText) and (StrTextToReplace <> '') then
      begin
        // convert hex data to string
        SetLength(StrDataToReplace, Length(StrTextToReplace));
        ConvertHexToBin(PChar(StrTextToReplace), PChar(StrDataToReplace),
          Length(StrTextToReplace), SwapNibbles, LIntSize);
        SetLength(StrDataToReplace, LIntSize);
      end;

      LStrFind := PrepareFindReplaceData(StrDataToFind, BoolIgnoreCase, BoolFindText);
      LStrReplace := PrepareFindReplaceData(StrDataToReplace, False, BoolReplaceText);

      if BoolReplaceAll
      then
        LIntPos := 0
      else
        LIntPos := Max(0, GetCursorPos);

      LIntDone := 0;

      // check length of data to find and data to replace depending on bytesperunit
      if (Length(LStrFind) mod BytesPerUnit) <> 0 then
      begin
        MessageDlg(STR_ERR_BPU_FINDTEXT, mtError, [mbOK], 0);
        Exit;
      end;

      if (Length(LStrReplace) mod BytesPerUnit) <> 0 then
      begin
        MessageDlg(STR_ERR_BPU_REPLACETEXT, mtError, [mbOK], 0);
        Exit;
      end;

      repeat
        LIntPos2 := Find(PChar(LStrFind), Length(LStrFind), LIntPos, DataSize -1,
          BoolIgnoreCase);
        if LIntPos2 = -1
        then
          Break;
        Inc(LIntDone);
        SelStart := LIntPos2;
        SelEnd := LIntPos2 + Length(LStrFind)-1;
        if LStrReplace <> ''
        then
          ReplaceSelection(PChar(LStrReplace), Length(LStrReplace), '', False)
        else
          DeleteSelection;
        LIntPos := LIntPos2 + Length(LStrReplace);

        //with StatusBar1 do
        //begin
        //  Panels[7].Text := IntToStr(Round(LIntPos2/DataSize*100));
        //  Update;
        //end;
      until not BoolReplaceAll;

      if LIntDone = 0
      then
        Raise Exception.Create(STR_NOT_FOUND)
      else
        if BoolReplaceAll
        then
          ShowMessage(Format(STR_NUM_REPLACED,[LIntDone]));
    finally
      //StatusBar1.Panels[7].Text := '-';
    end;
end;


procedure TfMDIHex.mOptionsClick(Sender: TObject);
begin
  fOptions.procOptionChange;
end;

procedure TfMDIHex.mPrintClick(Sender: TObject);
begin
  PrintPreview(cEditHex, actFilePrintSetup, False);
end;

procedure TfMDIHex.actFilePrintSetupExecute(Sender: TObject);
begin
  dlgPrinterSetup.Execute;
end;

end.
