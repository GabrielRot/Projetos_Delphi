unit UpesqProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TFrmPesqProdutos = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    EdtFiltro: TEdit;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqProdutos: TFrmPesqProdutos;

implementation
uses UDmSistema;
{$R *.dfm}

procedure TFrmPesqProdutos.Button1Click(Sender: TObject);
begin
  with DMSistema do
  begin
    QryPesqProd.Close;
    CdsPesqProd.Close;
    QryPesqProd.ParamByName('DESCRICAO').AsString := '%' + EdtFiltro.Text + '%';
    CdsPesqProd.Open;
    if CdsPesqProd.IsEmpty then
      MessageDlg('Nenhum produto encontrado conforme o filtro informado!!!',
      MtWarning, [mbOK], 0);
  end;
end;

procedure TFrmPesqProdutos.Button2Click(Sender: TObject);
begin
  DMSistema.CdsPesqProd.Close;
end;

procedure TFrmPesqProdutos.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesqProdutos.DBGrid1DblClick(Sender: TObject);
begin
  with DMSistema do
  begin
    CdsCadProd.Close;
    CdsCadProd.Params[0].AsInteger := CdsPesqProdCOD_PRODUTO.AsInteger;
    CdsCadProd.Open;

    CdsCadProd.Edit;

    CdsPesqProd.Close;

    Close;
  end;
end;

end.
