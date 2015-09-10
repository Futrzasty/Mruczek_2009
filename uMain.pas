unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TB2Dock, TB2MDI, TB2Item, TB2Toolbar, ComCtrls, ImgList, TBX,
  TBXMDI, JvFormPlacement, TBXStatusBars, JvWinDialogs, StdCtrls, TB2MRU,
  TBXExtItems, Inifiles, SynHighlighterTeX, SynHighlighterPHP,
  SynHighlighterHtml, SynHighlighterGeneral, SynEditHighlighter,
  SynHighlighterCpp,
  SynHighlighterCss, SynHighlighterJScript, JvDialogs, JvComponent,
  SynHighlighterPas, SynHighlighterJava, TB2Common,
  TBXDkPanels, StShlCtl, JclStrings, ExtCtrls, dsTaskBar, 
  TB2ToolWindow, MLLstbox, ElXPThemedControl, ElTree, Menus, ActnList, SynEditTypes,
  SynHighlighterFortran, JvComponentBase, JvAppXMLStorage, JvAppStorage,
  SpTBXItem {$IFDEF conditionalexpressions}{$IF RTLVersion >= 15}, xpman
  {$IFEND}{$ENDIF};

const 
  mapName = 'MapaPamieciStworzonaNaPotrzebyKomunikowaniaMiedzyProgramami';//__ATOM
  WM_MYSECRETMESSAGE = WM_USER + 5;//__ATOM

type
  TfMain = class(TForm)
    dockBottom: TTBDock;
    dockLeft: TTBDock;
    dockRight: TTBDock;
    cImageList: TImageList;
    mMain: TTBXToolbar;
    mMenuGroup: TTBGroupItem;
    dockTop: TTBDock;
    tTBFile: TTBXToolbar;
    cMDIHandler: TTBXMDIHandler;
    cFormPlacement: TJvFormStorage;
    cStatusBar: TTBXStatusBar;
    mPlik: TTBXSubmenuItem;
    mHelpM: TTBXSubmenuItem;
    mExit: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    mFileGroup: TTBGroupItem;
    mOpen: TTBXItem;
    mNew: TTBXItem;
    mAbout: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    mWhatsNew: TTBXItem;
    mHelp: TTBXItem;
    mOpt: TTBXSubmenuItem;
    mWindowGroup: TTBGroupItem;
    tFileGroup: TTBGroupItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    tNowy: TTBXItem;
    tOpen: TTBXSubmenuItem;
    tTBFormat: TTBXToolbar;
    tTBAdvFor: TTBXToolbar;
    tFormatGroup: TTBGroupItem;
    tAdvFor: TTBGroupItem;
    dlgOpenFile: TJvOpenDialog;
    cMRUList: TTBXMRUList;
    mMRUList: TTBXMRUListItem;
    TBXMRUListItem1: TTBXMRUListItem;
    hlCPP: TSynCppSyn;
    hlGen: TSynGeneralSyn;
    hlHTML: TSynHTMLSyn;
    hlPHP: TSynPHPSyn;
    hlTeX: TSynTeXSyn;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXVisibilityToggleItem2: TTBXVisibilityToggleItem;
    TBXVisibilityToggleItem4: TTBXVisibilityToggleItem;
    TBXVisibilityToggleItem3: TTBXVisibilityToggleItem;
    mOptGroup: TTBGroupItem;
    TBXVisibilityToggleItem1: TTBXVisibilityToggleItem;
    TBXLabelItem1: TTBXLabelItem;
    hlJS: TSynJScriptSyn;
    hlCSS: TSynCssSyn;
    mColEdit: TTBXItem;
    mOpenHex: TTBXItem;
    tOpenHex: TTBXSubmenuItem;
    TBXMRUListItem2: TTBXMRUListItem;
    cMRUListHex: TTBXMRUList;
    hlPas: TSynPasSyn;
    hlJava: TSynJavaSyn;
    mNewHex: TTBXItem;
    dockTopM: TTBXMultiDock;
    dockLeftM: TTBXMultiDock;
    dockRightM: TTBXMultiDock;
    dockBottomM: TTBXMultiDock;
    pnlExplorer: TTBXDockablePanel;
    TBXVisibilityToggleItem5: TTBXVisibilityToggleItem;
    pTree: TStShellComboBox;
    pList: TStShellListView;
    pFilter: TComboBox;
    pBackMenu: TTBXToolbar;
    pBack: TTBXItem;
    TBXPageScroller1: TTBXPageScroller;
    TBXAlignmentPanel1: TTBXAlignmentPanel;
    TBXAlignmentPanel2: TTBXAlignmentPanel;
    pIsHex: TTBXCheckBox;
    TBXSeparatorItem7: TTBXSeparatorItem;
    pnlHTML: TTBXDockablePanel;
    TBXPageScroller2: TTBXPageScroller;
    TBXVisibilityToggleItem6: TTBXVisibilityToggleItem;
    TBXLabelItem2: TTBXLabelItem;
    TBXLabelItem3: TTBXLabelItem;
    mOpenComp: TTBXItem;
    dlgOpenComp: TJvOpenDialog;
    TBXSeparatorItem8: TTBXSeparatorItem;
    pnlHint: TTBXDockablePanel;
    TBXPageScroller3: TTBXPageScroller;
    cHintEdit: TMemo;
    TBXVisibilityToggleItem7: TTBXVisibilityToggleItem;
    TBXVisibilityToggleItem8: TTBXVisibilityToggleItem;
    pnlPHP: TTBXDockablePanel;
    TBXAlignmentPanel3: TTBXAlignmentPanel;
    pPHPList: TMultilineListbox;
    TBXVisibilityToggleItem9: TTBXVisibilityToggleItem;
    pnlCSS: TTBXDockablePanel;
    TBXAlignmentPanel4: TTBXAlignmentPanel;
    pCSSList: TElTree;
    TBXVisibilityToggleItem10: TTBXVisibilityToggleItem;
    pHTMLList: TElTree;
    cIconList: TImageList;
    mPOPtbar: TTBXPopupMenu;
    mXPStyle2: TTBXItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    TBXLabelItem5: TTBXLabelItem;
    mThDefault2: TTBXItem;
    mThOffice2: TTBXItem;
    mThStripe2: TTBXItem;
    TBXSeparatorItem10: TTBXSeparatorItem;
    TBXLabelItem6: TTBXLabelItem;
    TBXVisibilityToggleItem11: TTBXVisibilityToggleItem;
    TBXVisibilityToggleItem12: TTBXVisibilityToggleItem;
    TBXVisibilityToggleItem13: TTBXVisibilityToggleItem;
    TBXVisibilityToggleItem14: TTBXVisibilityToggleItem;
    TBXVisibilityToggleItem15: TTBXVisibilityToggleItem;
    TBXSeparatorItem11: TTBXSeparatorItem;
    TBXLabelItem7: TTBXLabelItem;
    TBXVisibilityToggleItem16: TTBXVisibilityToggleItem;
    TBXVisibilityToggleItem17: TTBXVisibilityToggleItem;
    TBXVisibilityToggleItem18: TTBXVisibilityToggleItem;
    TBXVisibilityToggleItem19: TTBXVisibilityToggleItem;
    TBXVisibilityToggleItem20: TTBXVisibilityToggleItem;
    hlFor: TSynFortranSyn;
    TBXItem2: TTBXItem;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    cStatusPopUp: TSpTBXPopupMenu;
    mSMColumn: TSpTBXItem;
    mSMLine: TSpTBXItem;
    mSMNormal: TSpTBXItem;
    SpTBXLabelItem1: TSpTBXLabelItem;
    SpTBXSeparatorItem1: TSpTBXSeparatorItem;
    SpTBXLabelItem2: TSpTBXLabelItem;
    mSMOverwrite: TSpTBXItem;
    mSMInsert: TSpTBXItem;
    mMDIChildren: TTBToolWindow;
    cMDIChildren: TdsTaskBar;
    procedure mNewClick(Sender: TObject);
    procedure mAboutClick(Sender: TObject);
    procedure mOpenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure mExitClick(Sender: TObject);
    procedure mWhatsNewClick(Sender: TObject);
    procedure procDisplHint(Sender: TObject);
    procedure cMRUListClick(Sender: TObject; const Filename: String);
    procedure FormActivate(Sender: TObject);
    procedure mHelpClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mColEditClick(Sender: TObject);
    procedure mOpenHexClick(Sender: TObject);
    procedure cMRUListHexClick(Sender: TObject; const Filename: String);
    procedure mNewHexClick(Sender: TObject);
    procedure pnlExplorerResize(Sender: TObject);
    procedure pFilterChange(Sender: TObject);
    procedure pBackClick(Sender: TObject);
    procedure pListItemDblClick(Sender: TObject; Item: TStShellItem;
      var DefaultAction: Boolean);
    procedure mOpenCompClick(Sender: TObject);
    procedure pPHPListDblClick(Sender: TObject);
    procedure pCSSListClick(Sender: TObject);
    procedure pCSSListItemExpand(Sender: TObject; Item: TElTreeItem);
    procedure pHTMLListClick(Sender: TObject);
    procedure cStatusBarContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure mSMNormalClick(Sender: TObject);
    procedure mSMLineClick(Sender: TObject);
    procedure mSMColumnClick(Sender: TObject);
    procedure mSMInsertClick(Sender: TObject);
    procedure mSMOverwriteClick(Sender: TObject);
  private
    procedure procMessage(var Msg: TMsg; var Handled: Boolean);
    procedure procReadINI;
    procedure procWriteINI;
    procedure Start; //__ATOM
    procedure MySecretMessage(var Message: TMessage); message //__ATOM
             WM_MYSECRETMESSAGE;
  public

  end;

var
  fMain: TfMain;
  MDIcount, vSaveMode, FileCount:integer;
  vIsParam, vNewOnOpen, vIsNew, tbF, tbAF, vSaveUnix, przep,
        vLoadLists, vBrackMatch, vSaveMultiCh, vXHTML, vOneInstance, vAutoBracket: Boolean;
  vVerRev, vVerStr, vVerSub, vVerNo, vVerBld, vVerYear, s, vTempDir, vIniFileName, vEdOptFileName: string;
  vHighlighters, vFilters: TStringList;

  gbSearchBackwards: boolean;
  gbSearchCaseSensitive: boolean;
  gbSearchFromCaret: boolean;
  gbSearchSelectionOnly: boolean;
  gbSearchTextAtCaret: boolean;
  gbSearchWholeWords: boolean;
  gbSearchRegex: boolean;

  gsSearchText: string;
  gsSearchTextHistory: string;
  gsReplaceText: string;
  gsReplaceTextHistory: string;
implementation

uses uMDI, uMDIHex, uAbout, uWNew, uHighlighterProcs, uColEdit, zlibex;

{$R *.dfm}

var 
   mapHandle: LongInt; 
   mapData: PInteger; 

procedure TfMain.MySecretMessage(var Message: TMessage);
var
  Parametr: string;
  Atom: Word;
  bufor:array[0..255] of Char;
begin
  Atom := Message.WParam;
  SetString(Parametr, bufor,
        GlobalGetAtomName(Atom, bufor, SizeOf(bufor)));
  Message.Result := 1;
  GlobalDeleteAtom(Atom);
  if FileExists(Parametr) then
  begin
    with TfMDI.Create(Self) do
    begin
      procOpenDoc(Parametr);
      MDIcount:=MDIcount+1;
      cMRUList.Add(Parametr);
      cMRUListHex.Add(Parametr);
    end;
  Application.BringToFront;
  end;
end;

procedure TfMain.Start;
var
  Jest: boolean;
  Atom: Word;
begin
  mapHandle := CreateFileMapping($FFFFFFFF, 
        nil, PAGE_READWRITE, 
        0, SizeOf(Integer), mapName); 
  Jest := GetLastError = ERROR_ALREADY_EXISTS; 
  if mapHandle <> 0 then 
  begin 
    mapData := MapViewOfFile(mapHandle, 
               FILE_MAP_WRITE, 0, 0, 0); 
    if mapData <> nil then 
    begin 
      if Jest then 
      begin 
        if ParamStr(1) <> '' then 
        begin 
          Atom := GlobalAddAtom(PChar(ParamStr(1))); 
          SendMessage(HWND(mapData^), 
                   WM_MYSECRETMESSAGE, Atom, 0); 
        end; 
        Application.Terminate; 
      end 
      else 
      begin 
        mapData^ := Integer(Handle); 
        Application.ShowMainForm := true; 
      end; 
      UnmapViewOfFile(mapData); 
    end; {if mapData <> nil} 
  end; {if mapHandle <> 0} 
end;


procedure TfMain.procReadINI;
var
  plikini: TINIFile;
  tempcat: string;
begin
  //if FileExists(ExtractFilePath(Application.ExeName) + vIniFileName) then
  //begin
    plikini := TINIFile.create(ExtractFilePath(Application.ExeName) + vIniFileName);
    with plikini do
    begin
      vNewOnOpen:=ReadBool('Opcje', 'NEWDoc', true);

      gbSearchBackwards := ReadBool('Search', 'sb', false);
      gbSearchCaseSensitive := ReadBool('Search', 'scs', false);
      gbSearchFromCaret := ReadBool('Search', 'sfc', false);
      gbSearchSelectionOnly := ReadBool('Search', 'sso', false);
      gbSearchTextAtCaret := ReadBool('Search', 'stac', false);
      gbSearchWholeWords := ReadBool('Search', 'sww', false);
      gbSearchRegex := ReadBool('Search', 'sr', false);

      gsSearchText := ReadString('String', 'st', '');
      //gsSearchTextHistory := ReadString('String', 'sth', '');
      gsReplaceText := ReadString('String', 'rt', '');
      //gsReplaceTextHistory := ReadString('String', 'rth', '');

      vSaveUnix := ReadBool ('Opcje', 'Unix', false);
      vSaveMode := ReadInteger ('Opcje', 'SaveMode', 1);
      vXHTML := ReadBool ('Opcje', 'XHTML', true);

      vLoadLists := ReadBool ('Opcje', 'Listy', false);

      vBrackMatch := ReadBool ('Opcje', 'Nawiasy', true);
      vAutoBracket := ReadBool ('Opcje', 'AutoBracket', false);
      vSaveMultiCh := ReadBool ('Opcje', 'SaveMultiCh', false);

      vOneInstance := ReadBool ('Opcje', 'OneInstance', false);

      cMRUList.MaxItems:=ReadInteger('Opcje', 'MaxMRU', 4);
      cMRUListHex.MaxItems:=ReadInteger('Opcje', 'MaxMRU', 4);

      cMRUList.LoadFromIni(plikini, 'MRUList');
      cMRUListHex.LoadFromIni(plikini, 'MRUList');

      tempcat := ReadString('Opcje', 'KatalogPLIST', '');
      if DirectoryExists(tempcat) then
        pList.rootfolder := tempcat
      else
        //Beep;
      ;

      vTempDir := ReadString('Opcje', 'TempDir', '');

    end;
  plikini.Free;
  TBIniLoadPositions(Self, ExtractFilePath(Application.ExeName) + vIniFileName, '');
  tbF:=tTBFormat.Visible;
  tbAF:=tTBAdvFor.Visible;
  //end;
end;

procedure TfMain.procWriteINI;
var
  plikini:TINIFile;
begin
  plikini := TINIFile.create(ExtractFilePath(Application.ExeName) + vIniFileName);
  with plikini do
  begin
    try
      WriteBool('Opcje', 'NEWDoc', vNewOnOpen);
      WriteBool('Search', 'sb', gbSearchBackwards);
      WriteBool('Search', 'scs', gbSearchCaseSensitive);
      WriteBool('Search', 'sfc', gbSearchFromCaret);
      WriteBool('Search', 'sso', gbSearchSelectionOnly);
      WriteBool('Search', 'stac', gbSearchTextAtCaret);
      WriteBool('Search', 'sww', gbSearchWholeWords);
      WriteBool('Search', 'sr', gbSearchRegex);

      WriteBool ('Opcje', 'Unix', vSaveUnix);
      WriteInteger ('Opcje', 'SaveMode', vSaveMode);
      WriteBool ('Opcje', 'XHTML', vXHTML);


      WriteBool ('Opcje', 'Listy', vLoadLists);

      WriteBool ('Opcje', 'Nawiasy', vBrackMatch);
      WriteBool ('Opcje', 'AutoBracket', vAutoBracket);
      WriteBool ('Opcje', 'SaveMultiCh', vSaveMultiCh);

      WriteBool ('Opcje', 'OneInstance', vOneInstance);

      WriteString('String', 'st', gsSearchText);
      //WriteString('String', 'sth', gsSearchTextHistory);
      WriteString('String', 'rt', gsReplaceText);
      //WriteString('String', 'rth', gsReplaceTextHistory);

      WriteInteger('Opcje', 'MaxMRU', cMRUList.MaxItems);
      WriteBool('Opcje', 'MultiHigh', vMultiHigh);

      cMRUList.SaveToIni(plikini, 'MRUList');
      //cMRUListHex.SaveToIni(plikini, 'MRUList'); //niepotrzebne!

      if (pnlExplorer.Visible) then
         WriteString('Opcje', 'KatalogPLIST', pList.Folder.Path);

      WriteString('Opcje', 'TempDir', vTempDir);
    except
      MessageDlg('Nie mo¿na pisaæ do pliku INI. Opcje nie zostan¹ zapisane!!!', mtError, [mbOK], 0);
    end;

  end;
  plikini.Free;
  tTBAdvFor.Visible:=tbAF;
  tTBFormat.Visible:=tbF;
  try
    TBIniSavePositions(Self, ExtractFilePath(Application.ExeName) + vIniFileName, '');
  except
    MessageDlg('Nie mo¿na pisaæ do pliku INI. Stan pasków nie zostanie zapisany!!!', mtError, [mbOK], 0);
  end;
end;

procedure TfMain.procDisplHint(Sender: TObject);
begin
  cStatusBar.Panels[0].Caption:=application.Hint;
  cHintEdit.Text := application.Hint;
end;

procedure TfMain.mNewClick(Sender: TObject);
begin
  TfMDI.Create(Self);
  MDIcount:=MDIcount+1;
end;

procedure TfMain.mAboutClick(Sender: TObject);
begin
  fAbout:=TfAbout.Create(Application);
  try
    fAbout.ShowModal;
  finally
    fAbout.Free;
  end;
end;

procedure TfMain.mOpenClick(Sender: TObject);
begin
  if dlgOpenFile.execute then
  begin
    with TfMDI.Create(Self) do
    begin
      procOpenDoc(dlgOpenFile.FileName);
      MDIcount:=MDIcount+1;
      cMRUList.Add(dlgOpenFile.FileName);
      cMRUListHex.Add(dlgOpenFile.FileName);
    end;
  end;
end;

procedure TfMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  count: integer;
begin
  for count := MDIChildCount-1 downto 0 do
    begin
      MDIChildren[count].Close;
    end;

  if MDIcount<>0 then Action:=caNone;
  procWriteINI;
  try
    pHTMLList.Items.SaveToFile(ExtractFilePath(application.ExeName)+'pHTML.lst');
    pCSSList.Items.SaveToFile(ExtractFilePath(application.ExeName)+'pCSS.lst');
  except
    MessageDlg('Nie mozna pisac do plików LST.  Niektóre opcje nie zostan¹ zapisane!!!', mtError, [mbOK], 0);
  end;
end;

procedure TfMain.FormCreate(Sender: TObject);
var
  i, j: integer;
  synini : TIniFile;
begin
  przep:=false;
  MDIcount:=0;
  FileCount:=0;
  vIsParam:=false;

  vVerYear:='2009';
  vVerNo := '1.1';
  vVerSub:= ''; // tutaj cos co jest zaraz po roku, a przed numerem wersji
  vVerBld:= 'dev'; // tutaj 'dev' lub alphy, bety, RC
  vVerStr:= vVerYear + vVerNo + vVerSub; // to jest niewykorzystywane !?!
  vVerRev:= '#0';

  vIniFileName := 'mruczek.ini';
  vEdOptFileName := 'mruczek.edo';
  Application.HelpFile := ExtractFilePath(application.ExeName)+'doc\mruczek.chm';
  fMain.Caption := 'Mruczek ' + vVerYear;
  if vVerSub <> '' then fMain.Caption := fMain.Caption + ' ' + vVerSub;
  fMain.Caption := fMain.Caption + ' v.' + vVerNo;
  if vVerBld <> '' then fMain.Caption := fMain.Caption + ' ' + vVerBld;
  procReadINI;
  cStatusBar.Panels[3].Enabled:=(GetKeyState( VK_NUMLOCK ) and $0001) <>0;
  cStatusBar.Panels[4].Enabled:=(GetKeyState( VK_CAPITAL ) and $0001) <>0;
  cStatusBar.Panels[5].Enabled:=(GetKeyState( VK_SCROLL ) and $0001) <>0;

  if vOneInstance then Start //__ATOM
     else Application.ShowMainForm := true;

  application.OnMessage:=procMessage;
  application.OnHint:=procDisplHint;

  {linia komend}
  if ParamCount > 0 then
  begin
    vIsParam:=true;
  end;

  if vNewOnOpen and (not vIsParam)then
  begin
    vIsNew:=true;
  end;

  {open dialog}
  vHighlighters := TStringList.Create;
  GetHighlighters(Self, vHighlighters, FALSE);
  s := GetHighlightersFilter(vHighlighters);
  if (s <> '') and (s[Length(s)] <> '|') then
    s := s + '|';
  s := s + 'All files (*.*)|*.*';
  dlgOpenFile.Filter := s;
  dlgOpenFile.FilterIndex := 10; {tymczasowo???}

  StrToStrings(s,'|',pFilter.Items);
  for i := pFilter.Items.Count -1 downto 0 do if (i mod 2) = 0 then pFilter.Items.Delete(i);
  pFilter.ItemIndex := 9; {tymczasowo???}

  {highlightery}
  vFilters := TStringList.Create;
  for i:=0 to vHighlighters.count -1 do
  begin
    if (vHighlighters.Objects[i] as TSynCustomHighlighter).DefaultFilter <> '' then
       vFilters.Add((vHighlighters.Objects[i] as TSynCustomHighlighter).DefaultFilter);
    synini := TINIFile.create(ExtractFilePath(Application.ExeName) + 'syntax'+(vHighlighters.Objects[i] as TSynCustomHighlighter).Name+'.ini');
    for j := 0 to(vHighlighters.Objects[i] as TSynCustomHighlighter).AttrCount -1 do
    begin
      (vHighlighters.Objects[i] as TSynCustomHighlighter).Attribute[j].LoadFromFile(synini);
    end;
    synini.Free;
  end;

  {inne ustawienia}
  pPHPList.Items.Add('<?php'+#13#10+'|'+#13#10+'?>');
  pPHPList.Items.Add('$server = mysql_connect("localhost", "user", "password");'+#13#10+
  'mysql_select_db("baza_danych", $server);'+#13#10+
  '$result = mysql_query("SELECT * FROM tabela", $server);'+#13#10+
  '$row = mysql_fetch_assoc($result);'+#13#10);
  pPHPList.Items.Add('echo ''|'';');

  if vLoadLists then
    try
      pHTMLList.Items.LoadFromFile(ExtractFilePath(application.ExeName)+'pHTML.lst');
      pCSSList.Items.LoadFromFile(ExtractFilePath(application.ExeName)+'pCSS.lst');
    except
      MessageDlg('Nie mozna czytaæ z plików LST.  Niektóre opcje bêd¹ domyœlne!!!', mtError, [mbOK], 0);
    end;
end;

procedure TfMain.mExitClick(Sender: TObject);
begin
  {for count := MDIChildCount-1 downto 0 do
  begin
    MDIChildren[count].Close;
  end;}

  Close;
  if MDIcount=0 then
  begin
    application.Terminate;
  end;
end;

procedure TfMain.procMessage(var Msg: TMsg; var Handled: Boolean);
begin
  if Msg.message = WM_KEYDOWN then
    begin
    if Msg.wParam=VK_NUMLOCK then cStatusBar.Panels[3].Enabled:=(GetKeyState( VK_NUMLOCK ) and $0001) <>0;
    if Msg.wParam=VK_CAPITAL then cStatusBar.Panels[4].Enabled:=(GetKeyState( VK_CAPITAL ) and $0001) <>0;
    if Msg.wParam=VK_SCROLL then cStatusBar.Panels[5].Enabled:=(GetKeyState( VK_SCROLL ) and $0001) <>0;
  end;
end;

procedure TfMain.mWhatsNewClick(Sender: TObject);
begin
  fWNew := TfWNew.Create(Application);
  try
    fWNew.ShowModal;
  finally
    fWNew.Free;
  end;
end;

procedure TfMain.cMRUListClick(Sender: TObject; const Filename: String);
begin
  if FileExists(Filename) then
  begin
    with TfMDI.Create(Self) do
    begin
      procOpenDoc(FileName);
      MDIcount:=MDIcount+1;
    end;
  end
  else
  begin
    Beep; {Nie ma takiego pliku}
  end;
end;

procedure TfMain.FormActivate(Sender: TObject);
begin
  if vIsParam then
  begin
    vIsParam:=false;
    with TfMDI.Create(Self) do
    begin
      procOpenDoc(ParamStr(1));
      MDIcount:=MDIcount+1;
      cMRUList.Add(ParamStr(1));
      cMRUListHex.Add(ParamStr(1));
    end;
  end
  else
    if vIsNew then
    begin
      vIsNew:=false;
      TfMDI.Create(Self);
      MDIcount:=MDIcount+1;
    end;
end;

procedure TfMain.mHelpClick(Sender: TObject);
begin
  application.HelpContext(1);
end;

procedure TfMain.FormDestroy(Sender: TObject);
begin
  vHighlighters.Free;
  vFilters.Free;
  if mapHandle <> 0 then
    CloseHandle(mapHandle);//__ATOM
end;

procedure TfMain.mColEditClick(Sender: TObject);
var
  i, j : integer;
  synini : TIniFile;
begin
  fColEdit := TfColEdit.Create(Application);
  try
    with fColEdit do
    begin
      cLangs.Items:=vHighlighters;
      if ShowModal = mrOK then
      begin
        for i:=0 to vHighlighters.count -1 do
        begin
          synini := TINIFile.create(ExtractFilePath(Application.ExeName) + 'syntax'+(vHighlighters.Objects[i] as TSynCustomHighlighter).Name+'.ini');
          for j := 0 to(vHighlighters.Objects[i] as TSynCustomHighlighter).AttrCount -1 do
          begin
            (vHighlighters.Objects[i] as TSynCustomHighlighter).Attribute[j].SaveToFile(synini);
          end;
          synini.Free;
        end;
      end;
    end;
  finally
    fColEdit.Free;
  end;
end;

procedure TfMain.mOpenHexClick(Sender: TObject);
begin
  if dlgOpenFile.execute then
  begin
    with TfMDIHex.Create(Self) do
    begin
      procOpenDoc(dlgOpenFile.FileName);
      MDIcount:=MDIcount+1;
      cMRUListHex.Add(dlgOpenFile.FileName);
      cMRUList.Add(dlgOpenFile.FileName);
    end;
  end;
end;

procedure TfMain.cMRUListHexClick(Sender: TObject; const Filename: String);
begin
  if FileExists(Filename) then
  begin
    with TfMDIHex.Create(Self) do
    begin
      procOpenDoc(FileName);
      MDIcount:=MDIcount+1;
    end;
  end
  else
  begin
    Beep; {Nie ma takiego pliku}
  end;
end;

procedure TfMain.mNewHexClick(Sender: TObject);
begin
  TfMDIHex.Create(Self);
  MDIcount:=MDIcount+1;
end;

procedure TfMain.pnlExplorerResize(Sender: TObject);
begin
  pBackMenu.Left := pnlExplorer.ClientWidth - 28;
end;

procedure TfMain.pFilterChange(Sender: TObject);
begin
  pList.FileFilter := pFilter.Text;
end;

procedure TfMain.pBackClick(Sender: TObject);
begin
  pList.MoveUpOneLevel;
end;

procedure TfMain.pListItemDblClick(Sender: TObject; Item: TStShellItem;
  var DefaultAction: Boolean);
begin
  if item.IsFolder = false then
  begin
    if pIsHex.Checked = true then
    begin
      with TfMDIHex.Create(Self) do
      begin
        procOpenDoc(item.Path);
        MDIcount:=MDIcount+1;
        cMRUList.Add(item.Path);
        cMRUListHex.Add(item.Path);
      end;
    end
    else
    begin
      with TfMDI.Create(Self) do
      begin
        procOpenDoc(item.Path);
        MDIcount:=MDIcount+1;
        cMRUList.Add(item.Path);
        cMRUListHex.Add(item.Path);
      end;
    end;
  end;
end;

procedure TfMain.mOpenCompClick(Sender: TObject);
var
  CompStream: TZDecompressionStream;
  OutStream : TFileStream;
begin
  if dlgOpenComp.Execute then
  begin
    with TfMDI.Create(Self) do
    begin
      MDIcount:=MDIcount+1;
      OutStream := TFileStream.Create(dlgOpenComp.FileName, fmOpenRead);
      CompStream := TZDecompressionStream.Create(OutStream);
      cEdit.Lines.LoadFromStream(CompStream);
      CompStream.Free;
      OutStream.Free;
    end;
  end;
end;

procedure TfMain.pPHPListDblClick(Sender: TObject);
var
  old, new: string;
  poz :TBufferCoord;
  tagi : TStringList;

begin
  if ActiveMDICHild is TfMDI then
  begin

    tagi := TStringList.Create;
    old := (ActiveMDIChild as TfMDI).cEdit.SelText;
    new := pPHPList.Items.Strings[pPHPList.itemindex];
    StrToStrings(new,'|',tagi);
    tagi.Add('');
    (ActiveMDIChild as TfMDI).cEdit.SelText := tagi[0];
    poz := (ActiveMDIChild as TfMDI).cEdit.CaretXY;
    (ActiveMDIChild as TfMDI).cEdit.SelText := old + tagi[1];
    (ActiveMDIChild as TfMDI).cEdit.CaretXY := poz;
    tagi.Free;
    Windows.SetFocus(ActiveMDIChild.ActiveControl.Handle); {szukane ze 4 godziny}
  end;
end;

procedure TfMain.pCSSListClick(Sender: TObject);
var
  old : string;
  tagi : TStringList;

begin
  if (ActiveMDICHild is TfMDI) and (pCSSList.Selected <> nil) then
  begin
    tagi := TStringList.Create;
    old := (ActiveMDIChild as TfMDI).cEdit.SelText;
    StrToStrings(pCSSList.Selected.Text,'|',tagi);
    tagi.Add('');

    (ActiveMDIChild as TfMDI).cEdit.SelText := tagi[0] + old + tagi[1];
    (ActiveMDIChild as TfMDI).cEdit.CaretX:=(ActiveMDIChild as TfMDI).cEdit.CaretX - Length(tagi[1]);
    tagi.Free;
    Windows.SetFocus(ActiveMDIChild.ActiveControl.Handle); {szukane ze 4 godziny}
    pCSSList.DeselectAll;
  end;
end;

procedure TfMain.pCSSListItemExpand(Sender: TObject; Item: TElTreeItem);
begin
  if (Item.Level = 0) then Item.DrawHLine := not Item.Expanded;
  Windows.SetFocus(ActiveMDIChild.ActiveControl.Handle);
end;

procedure TfMain.pHTMLListClick(Sender: TObject);
var
  old : string;
  tagi : TStringList;

begin
  if (ActiveMDICHild is TfMDI) and (pHTMLList.Selected <> nil) then
  begin
    tagi := TStringList.Create;
    old := (ActiveMDIChild as TfMDI).cEdit.SelText;
    StrToStrings(pHTMLList.Selected.Text,'|',tagi);
    tagi.Add('');

    (ActiveMDIChild as TfMDI).cEdit.SelText := tagi[0] + old + tagi[1];
    (ActiveMDIChild as TfMDI).cEdit.CaretX:=(ActiveMDIChild as TfMDI).cEdit.CaretX - Length(tagi[1]);
    tagi.Free;
    Windows.SetFocus(ActiveMDIChild.ActiveControl.Handle); {szukane ze 4 godziny}
    pHTMLList.DeselectAll;
  end;
end;

procedure TfMain.cStatusBarContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  if (ActiveMDIChild is TfMDI) then
    Handled := false
  else
    Handled := true;
end;

procedure TfMain.mSMNormalClick(Sender: TObject);
begin
  if (ActiveMDIChild is TfMDI) then
  begin
    (ActiveMDIChild as TfMDI).cEdit.SelectionMode := smNormal;
  end;
end;

procedure TfMain.mSMLineClick(Sender: TObject);
begin
  if (ActiveMDIChild is TfMDI) then
  begin
    (ActiveMDIChild as TfMDI).cEdit.SelectionMode := smLine;
  end;
end;

procedure TfMain.mSMColumnClick(Sender: TObject);
begin
  if (ActiveMDIChild is TfMDI) then
  begin
    (ActiveMDIChild as TfMDI).cEdit.SelectionMode := smColumn;
  end;
end;

procedure TfMain.mSMInsertClick(Sender: TObject);
begin
  if (ActiveMDIChild is TfMDI) then
  begin
    (ActiveMDIChild as TfMDI).cEdit.InsertMode := true;
  end;
end;

procedure TfMain.mSMOverwriteClick(Sender: TObject);
begin
  if (ActiveMDIChild is TfMDI) then
  begin
    (ActiveMDIChild as TfMDI).cEdit.InsertMode := false;
  end;
end;

end.
