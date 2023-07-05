unit UVendas;

interface

uses
  Winapi.Windows, UDMVendas, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmVendas = class(TForm)
    DBText1: TDBText;
    DBText2: TDBText;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendas: TFrmVendas;

implementation

{$R *.dfm}

procedure TFrmVendas.BitBtn1Click(Sender: TObject);
begin
  with DmVendas do
  begin
    CdsVendas.Close;
    CdsVendas.Params[0].Value := -1;
    CdsVendas.Open;
    CdsVendas.Append;

    //Busca Próximo código pedido
    QryProxVenda.Close;
    QryProxVenda.Open;

    CdsVendas.Edit;
    CdsVendasCOD_VENDA.AsInteger := QryProxVenda.FieldByName
    ('PROX_COD').AsInteger;
    QryProxVenda.Close;
  end;
end;

procedure TFrmVendas.BitBtn2Click(Sender: TObject);
begin
  DmVendas.CdsVendas.Close;
end;

procedure TFrmVendas.BitBtn3Click(Sender: TObject);
begin
  with DmVendas do
  begin
    CdsVendasTOTAL_VENDA.AsFloat := CdsProdPedTotalGeral.AsVariant;
    CdsVendas.Post;
    CdsVendas.ApplyUpdates(0);
    MessageDlg('Venda efetuada com sucesso!'+#13+#13+
      'Numero da Venda: ' + CdsVendasCOD_VENDA.AsString + '' ,mtConfirmation,
      [mbOK], 0);
      CdsVendas.Close;
      CdsProdPed.Close;
  end;
end;

procedure TFrmVendas.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmVendas.FormActivate(Sender: TObject);
begin
  with DmVendas do
  begin
    CdsListaCli.Close;
    CdsListaCli.Open;
    CdsListaProd.Close;
    CdsListaProd.Open;
  end;
end;

procedure TFrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TFrmVendas.FormCreate(Sender: TObject);
begin
  with DmVendas do
  begin
    CdsListaCli.Open;
    CdsListaProd.Open;
  end;
end;

end.
