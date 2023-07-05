unit UnitCadAgend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFormCadAgend = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label4: TLabel;
    TxtCodigo: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadAgend: TFormCadAgend;

implementation

{$R *.dfm}

end.
