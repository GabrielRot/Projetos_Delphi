unit UnitCadForn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFormCadForn = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    TxtCodigo: TDBEdit;
    TxtNome: TDBEdit;
    TxtFone: TDBEdit;
    TxtCNPJ: TDBEdit;
    TxtData: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    TxtBusca: TEdit;
    Label7: TLabel;
    TxtSegFone: TDBEdit;
    Label8: TLabel;
    GridForn: TDBGrid;
    BitBtn1: TBitBtn;
    procedure TxtBuscaChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadForn: TFormCadForn;

implementation

{$R *.dfm}

uses UnitDM;


procedure TFormCadForn.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCadForn.TxtBuscaChange(Sender: TObject);
begin
   DM.TAB_FORNECEDORES.locate('NOME_CLI',TxtBusca.text,[loPartialKey]);
end;

end.
