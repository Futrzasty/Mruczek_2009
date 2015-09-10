unit uSlownie;

interface

type
  TSlow=array[1..5] of string;
  TPart=array[1..5] of string[3];
var
  LStr:string[15];
  Slow:TSlow;
  Part:TPart;
  q:Byte;
  Wynik:string;

procedure UzupelnijZerami;
{dopisuje z przodu liczby zera, az liczba bedzie 15-to cyfrowa}
procedure Podziel;
{dokonuje podzialu na setki, tysiace itp. itd.}
function Filtruj(Tekst:string):string;
{przefiltrowywuje wpisany tekst tak, aby zostaly tam same cyfry}
function ZmienNaSlowa(L:string):string;
{zmienia trzycyfrowa liczbe na postac tekstowa}
procedure DopiszJednostki;
{dopisuje jednostki do liczby}
function LiczbaSlownie(L:string):string;
{zmienia podana liczbe na postac slowna}

implementation

{dopisuje z przodu liczby zera, az liczba bedzie 12-to cyfrowa}
procedure UzupelnijZerami;
begin
  while Length(LStr)<15 do Insert('0',LStr,1);
end;

{dokonuje podzialu na setki, tysiace itp. itd.}
procedure Podziel;
begin
  Part[5]:=Copy(LStr,1,3);
  Part[4]:=Copy(LStr,4,3);
  Part[3]:=Copy(LStr,7,3);
  Part[2]:=Copy(LStr,10,3);
  Part[1]:=Copy(LStr,13,3);
end;

{przefiltrowywuje wpisany tekst tak, aby zostaly tam same cyfry}
function Filtruj(Tekst:string):string;
var
  Nowy:string;
  a:Byte;
begin
  Nowy:='';
  for a:=Length(LStr) downto 1 do
    if ((LStr[a]>='0') and (LStr[a]<='9')) then Insert(LStr[a],Nowy,1);
  Filtruj:=Nowy;
end;

{zmienia trzycyfrowa liczbe na postac tekstowa}
function ZmienNaSlowa(L:string):string;
var
  Tx:string;
begin
  Tx:='';
  case L[1] of
    '1':Insert(' sto',Tx,1);
    '2':Insert(' dwie�cie',Tx,1);
    '3':Insert(' trzysta',Tx,1);
    '4':Insert(' czterysta',Tx,1);
    '5':Insert(' pi��set',Tx,1);
    '6':Insert(' sze��set',Tx,1);
    '7':Insert(' siedemset',Tx,1);
    '8':Insert(' osiemset',Tx,1);
    '9':Insert(' dziewi��set',Tx,1);
  end;
  if L[2]='1' then
  begin
    case L[3] of
      '1':Insert(' jedena�cie',Tx,Length(Tx)+1);
      '2':Insert(' dwana�cie',Tx,Length(Tx)+1);
      '3':Insert(' trzyna�cie',Tx,Length(Tx)+1);
      '4':Insert(' czterna�cie',Tx,Length(Tx)+1);
      '5':Insert(' pi�tna�cie',Tx,Length(Tx)+1);
      '6':Insert(' szesna�cie',Tx,Length(Tx)+1);
      '7':Insert(' siedemna�cie',Tx,Length(Tx)+1);
      '8':Insert(' osieman�cie',Tx,Length(Tx)+1);
      '9':Insert(' dzi�wietna�cie',Tx,Length(Tx)+1);
      '0':Insert(' dziesi��',Tx,Length(Tx)+1);
    end;
  end
    else
  begin
    case L[2] of
      '2':Insert(' dwadzie�cia',Tx,Length(Tx)+1);
      '3':Insert(' trzydzie�ci',Tx,Length(Tx)+1);
      '4':Insert(' czterdzie�ci',Tx,Length(Tx)+1);
      '5':Insert(' pi��dziesi�t',Tx,Length(Tx)+1);
      '6':Insert(' sze��dziesi�t',Tx,Length(Tx)+1);
      '7':Insert(' siedemdziesi�t',Tx,Length(Tx)+1);
      '8':Insert(' osiemdziesi�t',Tx,Length(Tx)+1);
      '9':Insert(' dziewi��dziesi�t',Tx,Length(Tx)+1);
    end;
    case L[3] of
      '1':Insert(' jeden',Tx,Length(Tx)+1);
      '2':Insert(' dwa',Tx,Length(Tx)+1);
      '3':Insert(' trzy',Tx,Length(Tx)+1);
      '4':Insert(' cztery',Tx,Length(Tx)+1);
      '5':Insert(' pie�',Tx,Length(Tx)+1);
      '6':Insert(' sze��',Tx,Length(Tx)+1);
      '7':Insert(' siedem',Tx,Length(Tx)+1);
      '8':Insert(' osiem',Tx,Length(Tx)+1);
      '9':Insert(' dziewi��',Tx,Length(Tx)+1);
    end;
  end;
  ZmienNaSlowa:=Tx;
end;

{dopisuje jednostki do liczby}
procedure DopiszJednostki;
begin
  (* tysiace *)
  if not ((Part[2][1]='0') and (Part[2][2]='0') and (Part[2][3]='0')) then
  begin
    if (Part[2][1]='0') and (Part[2][2]='0') and
       (Part[2][3]='1') then
    begin
      Insert(' tysi�c',Slow[2],Length(Slow[2])+1)
    end
      else
    begin
      if (Part[2][3]>'1') and (Part[2][3]<'5') and
         (Part[2][2]<>'1') then
      begin
        Insert(' tysi�ce',Slow[2],Length(Slow[2])+1);
      end
        else
      begin
        Insert(' tysi�cy',Slow[2],Length(Slow[2])+1);
      end;
    end;
  end;
  (* miliony *)
  if not ((Part[3][1]='0') and (Part[3][2]='0') and (Part[3][3]='0')) then
  begin
    if (Part[3][1]='0') and (Part[3][2]='0') and
       (Part[3][3]='1') then
    begin
      Insert(' milion',Slow[3],Length(Slow[3])+1)
    end
      else
    begin
      if (Part[3][3]>'1') and (Part[3][3]<'5') and
         (Part[3][2]<>'1') then
      begin
        Insert(' miliony',Slow[3],Length(Slow[3])+1);
      end
        else
      begin
        Insert(' milion�w',Slow[3],Length(Slow[3])+1);
      end;
    end;
  end;
  (* miliardy *)
  if not ((Part[4][1]='0') and (Part[4][2]='0') and (Part[4][3]='0')) then
  begin
    if (Part[4][1]='0') and (Part[4][2]='0') and
       (Part[4][3]='1') then
    begin
      Insert(' miliard',Slow[4],Length(Slow[4])+1)
    end
      else
    begin
      if (Part[4][3]>'1') and (Part[4][3]<'5') and
         (Part[4][2]<>'1') then
      begin
        Insert(' miliardy',Slow[4],Length(Slow[4])+1);
      end
        else
      begin
        Insert(' miliard�w',Slow[4],Length(Slow[4])+1);
      end;
    end;
  end;
  (* biliony *)
  if not ((Part[5][1]='0') and (Part[5][2]='0') and (Part[5][3]='0')) then
  begin
    if (Part[5][1]='0') and (Part[5][2]='0') and
       (Part[5][3]='1') then
    begin
      Insert(' bilion',Slow[5],Length(Slow[5])+1)
    end
      else
    begin
      if (Part[5][3]>'1') and (Part[5][3]<'5') and
         (Part[5][2]<>'1') then
      begin
        Insert(' biliony',Slow[5],Length(Slow[5])+1);
      end
        else
      begin
        Insert(' bilion�w',Slow[5],Length(Slow[5])+1);
      end;
    end;
  end;
end;

{zmienia podana liczbe na postac slowna}
function LiczbaSlownie(L:string):string;
begin
  LStr:=L;
  LStr:=Filtruj(LStr);
  if LStr='' then
  begin
    LiczbaSlownie:='Blad Danych Wejsciowych...';
  end;
  UzupelnijZerami;
  Podziel;
  for q:=1 to 5 do Slow[q]:=ZmienNaSlowa(Part[q]);
  for q:=1 to 5 do Delete(Slow[q],1,1);
  DopiszJednostki;
  Wynik:=Slow[5]+' '+Slow[4]+' '+Slow[3]+' '+Slow[2]+' '+Slow[1];
  while (Wynik<>'') and (Wynik[1]=' ') do Delete(Wynik,1,1);
  LiczbaSlownie:=Wynik;
  if (Wynik='') then LiczbaSlownie:='zero';
end;

(**************************************)
end.