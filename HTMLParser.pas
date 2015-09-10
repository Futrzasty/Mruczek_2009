{ Copyright by Przemyslaw Jankowski }
{ e-mail: pjank@home.pl             }

(***********************************************************************************)
(*                                                                                 *)
(*   Classes defined in this unit allow you to parse (and update!) any HTML data   *)
(*                                                                                 *)
(* To use this unit you must first:                                                *)
(*  - create a THtmlParser object                                                  *)
(*  - set its >Text< property to the HTML text you want to parse                   *)
(* Then you can "move around" this text with two methods:                          *)
(*  - NextTag - moves you to the next tag from current position                    *)
(*              (after setting Text current position is the beginning of the text) *)
(*  - PrevTag - moves to the previous tag ("goes back")                            *)
(* The current tag (the tag at current position) is returned by Tag property       *)
(* You have also access to the text between two tags - it's in TextBetween prop.   *)
(* There are also some useful methods:                                             *)
(*  - LoadFromFile  - loads Text from the specified file from disk                 *)
(*  - SaveToFile    - saves the Text to disk                                       *)
(*  - GotoBeginning - sets current position at the beginning of the text           *)
(*                    (note: Tag and TextBetween are set to nothing)               *)
(*  - GotoEnd       - sets current position at the end of the text                 *)
(*                    (same note as above)                                         *)
(*  - RemoveTag     - deletes the current tag                                      *)
(*  - InsertTag     - inserts a new tag before the current one                     *)
(*                    (the current position "moves" behind the new tag)            *)
(*  - InsertText    - inserts some text in the current position                    *)
(*                                                                                 *)
(*                                                                                 *)
(* The TTag class provides you access to everything between two brackets: < and >  *)
(*  - Name - this is the tag's name (e.g. 'TABLE', 'IMG' or '/BODY')               *)
(*           (when you read it, it always returns uppercase)                       *)
(*  - Params - this is a TStringList with all parameters                           *)
(*             (each line is something like: 'width=100' or 'ALT="my image"')      *)
(*             hint: you may use the TStringList's Names, Values properties        *)
(*                                                                                 *)
(*                                                                                 *)
(* Take a look at the Demo1.pas (Button1Click) to see an example.                  *)
(*                                                                                 *)
(***********************************************************************************)
(*                                                                                 *)
(*  version 1.02                                                                   *)
(*   - fixed: changing tag name through the TTag.Text property                     *)
(*   - new: function FixHtmlText - see below                                       *)
(*   - new: THtmlParser properties: TagPos and TBPos are now public                *)
(*                                                                                 *)
(*  version 1.01 -                                                                 *)
(*   - TextBetween didn't update itself when writing to it                         *)
(*                                                                                 *)
(*  version 1.0 -  18.03.2000                                                      *)
(*   - fixed adding empty lines in Tag.Params                                      *)
(*     (thanks to: JulianWEB <julian@clubdelphi.com>)                              *)
(*   - changed the name TParser to THtmlParser because of a conflict               *)
(*     with Classes.pas unit  (thanks: Michael Belmont)                            *)
(*   - a little improved demo project - now shows, what's inside all TTag objects  *)
(*                                                                                 *)
(*  version 0.9  -  30.12.1999                                                     *)
(*   - first released version                                                      *)
(*                                                                                 *)
(***********************************************************************************)
(*                                                                                 *)
(* Everything here is FREE                                                         *)
(* I wrote it in Delphi5 and don't know if it works in other versions              *)
(*                                                                                 *)
(* If you find any bugs or have any comments, please let me know                   *)
(* (the e-mail is at the top of this file)                                         *)
(*                                                                                 *)
(* The newest version is always at "Delphi Super Page" - http://delphi.icm.edu.pl  *)
(*                                                                                 *)
(***********************************************************************************)

unit HTMLParser;
{$B-}

interface

uses
  SysUtils, Classes;


type
  TSimpleEvent = procedure of object;

  TTag = class
    constructor Create;
    destructor Destroy; override;
  private
    fName: string;
    fParams: TStrings;
    fOnChanged: TSimpleEvent;
    procedure Changed;
    function GetName:string;
    function GetText:string;
    procedure SetName(const NewName:string);
    procedure SetText(const text:string);
  public
    property Text:string read GetText write SetText;  // this is all the stuff
                                                      // between "<" and ">"
    property Name:string read GetName write SetName;  // tag name (returns uppercase)
    property Params:TStrings read fParams;            // parameters list
  private
    // used only by THtmlParser - updates THtmlParser.Text
    property OnChanged:TSimpleEvent read fOnChanged write fOnChanged;
  end;

  THtmlParser = class
    constructor Create;
    destructor Destroy; override;
  private
    fText: string;
    fTextBetween: string;
    fTag: TTag;
    fPos: Integer;               // current position in Text
    fTagPos,fTagLen: Integer;    // Tag position and length (including brackets)
    fTBPos: Integer;             // TextBetween position
    function GetTag:TTag;
    procedure SetText(const NewText:string);
    procedure SetTextBetween(const text:string);
    procedure TagChanged;
    procedure ClearTag;
    procedure ClearTB;
    procedure CheckPos;
    procedure SetTagText(const text:string);
    function FindTag(next:Boolean):Boolean;
  public
    property Text:string read fText write SetText;     // here is all the HTML file
    property Tag:TTag read GetTag;     // current tag
    procedure RemoveTag;               // remove the current tag
    procedure InsertTag(NewTag:TTag);  // insert a new tag BEFORE the current one
    procedure InsertText(text:string); // insert some text before the current tag
    function NextTag:Boolean;          // find next tag from current pos.
    function PrevTag:Boolean;          // find previous tag from current pos.
    procedure GotoBeginning;
    procedure GotoEnd;
    procedure LoadFromFile(filename:string);
    procedure SaveToFile(filename:string);
  public
    property TextBetween:string        // this is the text between two tags:
             read fTextBetween         // - the last one - before calling NextTag/PrevTag
             write SetTextBetween;     // - and the new (current) one
    property TagPos:Integer read fTagPos;
    property TBPos:Integer read fTBPos;
  end;


// FixText removes all unwanted spaces, tabs, new-line chars
// from the supplied string leaving only one space instead
// also changes all non-braking-spaces (&nbsp;) into normal spaces
function FixHtmlText(s:string):string;


implementation



function FixHtmlText(s:string):string;
var i: Integer;
begin
  i:= 1;
  while (i<=Length(s)) do
    if (s[i] in [#9,#10,#13,#32]) then begin
      if (i=1) or (s[i-1]<>' ')
       then begin s[i]:= ' '; Inc(i); end
       else Delete(s,i,1);
    end
    else Inc(i);
  i:= Pos('&nbsp;', s);
  while i<>0 do begin
    Delete(s, i, 5);
    s[i]:= ' ';
    i:= Pos('&nbsp;', s);
  end;
  Result:= s;
end;



{ TParams }

type
  TParams = class (TStringList)
    fTag: TTag;
    procedure Changed; override;
  end;

procedure TParams.Changed;
begin
  inherited;
  if Assigned(fTag) then fTag.Changed;
end;



{ TTag }

constructor TTag.Create;
begin
  fName:= '';
  fParams:= TParams.Create;
  TParams(fParams).fTag:= Self;
  fOnChanged:= nil;
end;

destructor TTag.Destroy;
begin
  fParams.Free;
  inherited Destroy;
end;

procedure TTag.Changed;
begin
  if Assigned(fOnChanged) then fOnChanged;
end;

function TTag.GetName: string;
begin
  Result:= UpperCase(fName);
end;

procedure TTag.SetName(const NewName: string);
begin
  if NewName<>fName then begin
    fName:= NewName;
    Changed;
  end;
end;

function TTag.GetText: string;
var i: Integer;
begin
  Result:= fName;
  for i:= 0 to fParams.Count-1 do
    Result:= Result + ' ' + fParams[i];
end;

procedure TTag.SetText(const text: string);
var i,k: Integer;
    len: Integer;
    q1,q2: Boolean;
  procedure AddParam;
  var s: string;
  begin
    s:= Trim(Copy(text,k,i-k+1));
    if s<>'' then fParams.Add(s);
    k:= i+1;
  end;
begin
  q1:= False;
  q2:= False;
  len:= Length(text);

  // getting name
  i:= 1;
  while not ((i>len) or (text[i]=' ')) do Inc(i);
  Name:= Copy(text, 1, i-1);

  k:= i+1;  i:= k;
  fParams.Clear;
  // getting parameters
  while not (i>len) do begin
    if (text[i] in ['''', '"']) then begin
      if (text[i]='"')
       then begin if not q1 then q2:= not q2 end
       else begin if not q2 then q1:= not q1 end;
      if not (q1 or q2) then AddParam;
    end else
    if (text[i]=' ') and not (q1 or q2) then AddParam;
    Inc(i);
  end;
  if k<i then AddParam;
end;



{ THtmlParser }

constructor THtmlParser.Create;
begin
  fTag:= TTag.Create;
  SetText('');
end;

procedure THtmlParser.SetTagText(const text:string);
begin
  fTag.OnChanged:= nil;
  fTag.Text:= text;
  fTag.OnChanged:= TagChanged;
end;

destructor THtmlParser.Destroy;
begin
  fTag.Free;
  inherited Destroy;
end;

function THtmlParser.GetTag:TTag;
begin
  if fTagPos=0
   then Result:= nil
   else Result:= fTag;
end;

procedure THtmlParser.ClearTag;
begin
  SetTagText('');
  fTagPos:= 0;
  fTagLen:= 0;
end;

procedure THtmlParser.ClearTB;
begin
  fTextBetween:= '';
  fTBPos:= 0;
end;

procedure THtmlParser.CheckPos;
begin
  if fPos<1 then fPos:= 1  else
  if fPos>Length(fText) then fPos:= Length(fText);
end;

procedure THtmlParser.InsertTag(NewTag: TTag);
begin
  CheckPos;
  Insert('<'+NewTag.Text+'>', fText, fPos);
  NextTag;
end;

procedure THtmlParser.InsertText(text: string);
begin
  CheckPos;
  ClearTB;
  Insert(text, fText, fPos);
  Inc(fPos, Length(text));
end;

procedure THtmlParser.RemoveTag;
begin
  if fTagPos=0 then Exit;
  Delete(fText, fTagPos, fTagLen);
  ClearTag;
  ClearTB;
end;

procedure THtmlParser.SetText(const NewText: string);
begin
  fText:= NewText;
  GotoBeginning;
end;

procedure THtmlParser.SetTextBetween(const text: string);
begin
  if fTBPos=0 then Exit;
  if text<>fTextBetween then begin
    if (fTBPos<>0) and (fTagPos>fTBPos) then
      Inc(fTagPos, Length(text)-Length(fTextBetween));
    Delete(fText, fTBPos, Length(fTextBetween));
    Insert(text, fText, fTBPos);
    fTextBetween:= text;
  end;
end;

procedure THtmlParser.TagChanged;
var s: string;
begin
  if fTagPos=0 then Exit;
  Delete(fText, fTagPos+1, fTagLen-2);
  s:= fTag.Text;
  if (fTBPos>fTagPos) then Inc(fTBPos, Length(s)+2-fTagLen);
  fTagLen:= Length(s)+2;
  Insert(s, fText, fTagPos+1);
end;


function THtmlParser.NextTag: Boolean;
begin
  Result:= FindTag(True);
end;


function THtmlParser.PrevTag: Boolean;
begin
  Result:= FindTag(False);
end;



function FindNext(const text:string; ch:char; startfrom:Integer; var pos:Integer):Boolean;
begin
  pos:= startfrom;
  while (pos<=Length(text)) and (text[pos]<>ch) do Inc(pos);
  Result:= (text[pos]=ch);
end;

function FindPrev(const text:string; ch:char; startfrom:Integer; var pos:Integer):Boolean;
begin
  pos:= startfrom;
  while (pos>0) and (text[pos]<>ch) do Dec(pos);
  Result:= (text[pos]=ch);
end;


function THtmlParser.FindTag(next: Boolean): Boolean;
var tag1, tag2,         // first/last char of the new tag
    tb1, tb2: Integer;  // first/last char of new TextBetween
begin

  if Length(fText)=0 then begin
    Result:= False;
    Exit;
  end;

  if fTagPos<>0 then
    if next then Inc(fPos) else Dec(fPos);

  CheckPos;

  if next then begin
    // find next tag
    Result:= FindNext(fText, '<', fPos, tag1) and FindNext(fText, '>', tag1, tag2);
    // find end of current tag
    if FindNext(fText, '>', fPos, tb1) and (tb1<tag1)
     then tb1:= tb1+1
     else tb1:= fPos;
    tb2:= 0; //this is just to get rid of a stupid warning
  end
  else begin
    tb2:= fPos;
    // find previous tag
    Result:= FindPrev(fText, '>', tb2, tag2) and FindPrev(fText, '<', tag2, tag1);
  end;

  if Result then begin
    fPos:= tag1;
    if next
     then tb2:= tag1-1
     else tb1:= tag2+1;
  end
  else begin
    if next then begin
      fPos:= Length(fText);
      tb2:= Length(fText);
    end
    else begin
      fPos:= 1;
      tb1:= 1;
    end;
    tag1:= 0;
    tag2:= 0;
  end;

  fTagPos:= tag1;
  fTagLen:= tag2-tag1+1;
  SetTagText(Copy(fText, fTagPos+1, fTagLen-2));
  fTBPos:= tb1;
  fTextBetween:= Copy(fText, fTBPos, tb2-tb1+1);
end;

procedure THtmlParser.GotoBeginning;
begin
  fPos:= 0;
  ClearTag;
  ClearTB;
end;

procedure THtmlParser.GotoEnd;
begin
  fPos:= Length(fText);
  ClearTag;
  ClearTB;
end;

procedure THtmlParser.LoadFromFile(filename: string);
var l: TStringList;
begin
  l:= TStringList.Create;
  try
    l.LoadFromFile(filename);
    Text:= l.Text;
  finally
    l.Free;
  end;
end;

procedure THtmlParser.SaveToFile(filename: string);
var l: TStringList;
begin
  l:= TStringList.Create;
  try
    l.Text:= Text;
    l.SaveToFile(filename);
  finally
    l.Free;
  end;
end;

end.
