unit uForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvBitBtn, SynEdit, SynMemo, JvEdit, JvSpin,
  TBXDkPanels, Mask, JvMaskEdit, JvButton, JvCtrls,
  JvExStdCtrls, JvExMask, JvExButtons;

type
  TfForm = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    cAction: TComboBox;
    cMethod: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    cPreview: TSynMemo;
    cField: TComboBox;
    btnAdd: TJvBitBtn;
    GroupBox4: TGroupBox;
    cName: TEdit;
    cValue: TEdit;
    cID: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cReadOnly: TTBXCheckBox;
    cDisabled: TTBXCheckBox;
    cChecked: TTBXCheckBox;
    cLength: TTBXCheckBox;
    cMaxLength: TTBXCheckBox;
    cAlign: TComboBox;
    cFileTypes: TComboBox;
    cFileName: TEdit;
    cLengthVal: TJvSpinEdit;
    cMaxLengthVal: TJvSpinEdit;
    Label7: TLabel;
    Label8: TLabel;
    cEncoding: TComboBox;
    Label9: TLabel;
    cClear: TJvBitBtn;
    btnCancel: TJvImgBtn;
    btnOK: TJvImgBtn;
    procedure cLengthChange(Sender: TObject);
    procedure cFieldChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure cClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fForm: TfForm;

implementation

{$R *.dfm}

procedure TfForm.cLengthChange(Sender: TObject);
begin
  cLengthVal.Enabled:=cLength.Checked;
  cmaxLengthVal.Enabled:=cMaxLength.Checked;
end;

procedure TfForm.cFieldChange(Sender: TObject);
begin
  case cField.ItemIndex of
    0:
    begin
      cValue.Visible:=true;
      Label5.Visible:=true;

      cReadOnly.Visible:=true;
      cDisabled.Visible:=true;
      cChecked.Visible:=false;

      Label7.Visible:=false;
      cAlign.Visible:=false;

      Label8.Visible:=false;
      cFileTypes.Visible:=false;

      cLength.Visible:=true;
      cLengthVal.Visible:=true;

      cMaxLength.Visible:=true;
      cMaxLengthVal.Visible:=true;

      Label9.Visible:=false;
      cFilename.Visible:=false;
    end;
    1, 6, 8, 9:
    begin
      cValue.Visible:=true;
      Label5.Visible:=true;

      cReadOnly.Visible:=false;
      cDisabled.Visible:=true;
      cChecked.Visible:=false;

      Label7.Visible:=false;
      cAlign.Visible:=false;

      Label8.Visible:=false;
      cFileTypes.Visible:=false;

      cLength.Visible:=true;
      cLengthVal.Visible:=true;

      cMaxLength.Visible:=false;
      cMaxLengthVal.Visible:=false;

      Label9.Visible:=false;
      cFilename.Visible:=false;
    end;
    2:
    begin
      cValue.Visible:=true;
      Label5.Visible:=true;

      cReadOnly.Visible:=false;
      cDisabled.Visible:=false;
      cChecked.Visible:=false;

      Label7.Visible:=false;
      cAlign.Visible:=false;

      Label8.Visible:=false;
      cFileTypes.Visible:=false;

      cLength.Visible:=false;
      cLengthVal.Visible:=false;

      cMaxLength.Visible:=false;
      cMaxLengthVal.Visible:=false;

      Label9.Visible:=false;
      cFilename.Visible:=false;
    end;
    3, 4:
    begin
      cValue.Visible:=true;
      Label5.Visible:=true;

      cReadOnly.Visible:=false;
      cDisabled.Visible:=true;
      cChecked.Visible:=true;

      Label7.Visible:=false;
      cAlign.Visible:=false;

      Label8.Visible:=false;
      cFileTypes.Visible:=false;

      cLength.Visible:=true;
      cLengthVal.Visible:=true;

      cMaxLength.Visible:=false;
      cMaxLengthVal.Visible:=false;

      Label9.Visible:=false;
      cFilename.Visible:=false;
    end;
    5:
    begin
      cValue.Visible:=true;
      Label5.Visible:=true;

      cReadOnly.Visible:=false;
      cDisabled.Visible:=true;
      cChecked.Visible:=false;

      Label7.Visible:=false;
      cAlign.Visible:=false;

      Label8.Visible:=true;
      cFileTypes.Visible:=true;

      cLength.Visible:=true;
      cLengthVal.Visible:=true;

      cMaxLength.Visible:=false;
      cMaxLengthVal.Visible:=false;

      Label9.Visible:=false;
      cFilename.Visible:=false;
    end;
    7:
    begin
      cValue.Visible:=false;
      Label5.Visible:=false;

      cReadOnly.Visible:=false;
      cDisabled.Visible:=true;
      cChecked.Visible:=false;

      Label7.Visible:=true;
      cAlign.Visible:=true;

      Label8.Visible:=false;
      cFileTypes.Visible:=false;

      cLength.Visible:=true;
      cLengthVal.Visible:=true;

      cMaxLength.Visible:=false;
      cMaxLengthVal.Visible:=false;

      Label9.Visible:=true;
      cFilename.Visible:=true;
    end;
  end
end;

procedure TfForm.FormShow(Sender: TObject);
begin
  cFieldChange(Self);
end;

procedure TfForm.btnAddClick(Sender: TObject);
var
  input : string;
begin
  input:='<input type="';
  case cField.ItemIndex of
    0:
    begin
      input := input + 'text"';
      if cName.Text <> '' then input := input + ' name="' + cName.Text + '"';
      if cValue.Text <> '' then input := input + ' value="' + cValue.Text + '"';
      if cID.Text <> '' then input := input + ' id="' + cID.Text + '"';

      if cReadOnly.Checked then input := input + ' readonly';
      if cDisabled.Checked then input := input + ' disabled';
      if cLength.Checked then input := input + ' length="' + cLengthVal.Text +'"';
      if cMaxLength.Checked then input := input + ' maxlength="' + cMaxLengthVal.Text +'"';
    end;
    1:
    begin
      input := input + 'password"';
      if cName.Text <> '' then input := input + ' name="' + cName.Text + '"';
      if cValue.Text <> '' then input := input + ' value="' + cValue.Text + '"';
      if cID.Text <> '' then input := input + ' id="' + cID.Text + '"';

      if cDisabled.Checked then input := input + ' disabled';
      if cLength.Checked then input := input + ' length="' + cLengthVal.Text +'"';
    end;
    2:
    begin
      input := input + 'hidden"';
      if cName.Text <> '' then input := input + ' name="' + cName.Text + '"';
      if cValue.Text <> '' then input := input + ' value="' + cValue.Text + '"';
      if cID.Text <> '' then input := input + ' id="' + cID.Text + '"';
    end;
    3:
    begin
      input := input + 'checkbox"';
      if cName.Text <> '' then input := input + ' name="' + cName.Text + '"';
      if cValue.Text <> '' then input := input + ' value="' + cValue.Text + '"';
      if cID.Text <> '' then input := input + ' id="' + cID.Text + '"';

      if cDisabled.Checked then input := input + ' disabled';
      if cChecked.Checked then input := input + ' checked';
      if cLength.Checked then input := input + ' length="' + cLengthVal.Text +'"';
    end;
    4:
    begin
      input := input + 'radio"';
      if cName.Text <> '' then input := input + ' name="' + cName.Text + '"';
      if cValue.Text <> '' then input := input + ' value="' + cValue.Text + '"';
      if cID.Text <> '' then input := input + ' id="' + cID.Text + '"';

      if cDisabled.Checked then input := input + ' disabled';
      if cChecked.Checked then input := input + ' checked';
      if cLength.Checked then input := input + ' length="' + cLengthVal.Text +'"';
    end;
    5:
    begin
      input := input + 'file"';
      if cName.Text <> '' then input := input + ' name="' + cName.Text + '"';
      if cValue.Text <> '' then input := input + ' value="' + cValue.Text + '"';
      if cID.Text <> '' then input := input + ' id="' + cID.Text + '"';

      if cFileTypes.Text <> '' then input := input + ' accepted="' + cFileTypes.Text + '"';
      if cDisabled.Checked then input := input + ' disabled';
      if cLength.Checked then input := input + ' length="' + cLengthVal.Text +'"';
    end;
    6:
    begin
      input := input + 'button"';
      if cName.Text <> '' then input := input + ' name="' + cName.Text + '"';
      if cValue.Text <> '' then input := input + ' value="' + cValue.Text + '"';
      if cID.Text <> '' then input := input + ' id="' + cID.Text + '"';

      if cDisabled.Checked then input := input + ' disabled';
      if cLength.Checked then input := input + ' length="' + cLengthVal.Text +'"';
    end;
    7:
    begin
      input := input + 'image"';
      if cName.Text <> '' then input := input + ' name="' + cName.Text + '"';
      if cID.Text <> '' then input := input + ' id="' + cID.Text + '"';

      if cFileName.Text <> '' then input := input + ' src="' + cFileName.Text + '"';
      if cAlign.Text <> '' then input := input + ' align="' + cAlign.Text + '"';
      if cDisabled.Checked then input := input + ' disabled';
      if cLength.Checked then input := input + ' length="' + cLengthVal.Text +'"';
    end;
    8:
    begin
      input := input + 'submit"';
      if cName.Text <> '' then input := input + ' name="' + cName.Text + '"';
      if cValue.Text <> '' then input := input + ' value="' + cValue.Text + '"';
      if cID.Text <> '' then input := input + ' id="' + cID.Text + '"';

      if cDisabled.Checked then input := input + ' disabled';
      if cLength.Checked then input := input + ' length="' + cLengthVal.Text +'"';
    end;
    9:
    begin
      input := input + 'reset"';
      if cName.Text <> '' then input := input + ' name="' + cName.Text + '"';
      if cValue.Text <> '' then input := input + ' value="' + cValue.Text + '"';
      if cID.Text <> '' then input := input + ' id="' + cID.Text + '"';

      if cDisabled.Checked then input := input + ' disabled';
      if cLength.Checked then input := input + ' length="' + cLengthVal.Text +'"';
    end;
  end;
  input := input + '>';
  cPreview.Lines.Add(input);
end;

procedure TfForm.cClearClick(Sender: TObject);
begin
  cPreview.Clear;
end;

end.
