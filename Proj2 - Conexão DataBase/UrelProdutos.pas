unit UrelProdutos;

interface

uses
  Winapi.Windows, UDmSistema, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, RLReport;

type
  TFrmRelProdutos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdtCodInicial: TEdit;
    GroupBox1: TGroupBox;
    EdtCodFinal: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw1: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand4: TRLBand;
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    Procedure ExecutaSQL;
  public
    { Public declarations }
  end;

var
  FrmRelProdutos: TFrmRelProdutos;

implementation

{$R *.dfm}

procedure TFrmRelProdutos.ExecutaSQL;
begin
  Screen.Cursor := CrHourGlass; //altera o ponteiro do mouse para ampulheta
  With DMSistema, QryRelProd do
  begin
    Close;
    SQL.Clear; //limpa a propriedade SQL do Query
    SQL.Add('SELECT');
    SQL.Add('COD_PRODUTO,');
    SQL.Add('DES_PRODUTO,');
    SQL.Add('CUSTO,');
    SQL.Add('VENDA,');
    SQL.Add('ESTOQUE,');
    SQL.Add('DTA_PRODUTO');
    SQL.Add('FROM');
    SQL.Add('TAB_PRODUTO');
    SQL.Add('WHERE');
    SQL.Add('COD_PRODUTO');
    SQL.Add('BETWEEN');
    SQL.Add(' :CODIGO_INICIAL AND :CODIGO_FINAL');
    ParamByName('CODIGO_INICIAL').AsInteger := StrToInt(EdtCodInicial.Text);
    ParamByName('CODIGO_FINAL').AsInteger := StrToInt (EdtCodFinal.Text);
    CdsRelProd.Open;
    if CdsRelProd.IsEmpty then
    begin
      MessageDlg('Nenhum registro encontrado conforme o filtro informado!!!',
      MtWarning, [mbOK], 0);
      Screen.Cursor := crDefault;
      exit
    end;
  end;
  Screen.Cursor := crDefault; //altera o ponteiro do mouse para seta
end;

procedure TFrmRelProdutos.BitBtn1Click(Sender: TObject);
begin
  if(EdtCodInicial.Text = '') or (EdtCodFinal.Text = '') then
  begin
    MessageDlg('Filtro de intervalo de códigos deve ser informado!!!', MtWarning,
    [mbOK], 0);
    EdtCodInicial.SetFocus;
    exit
  end;
  ExecutaSQL;
  RlReport1.Preview;
end;

procedure TFrmRelProdutos.BitBtn2Click(Sender: TObject);
begin
  if(EdtCodInicial.Text = '') or (EdtCodFinal.Text = '') then
  begin
    MessageDlg('Filtro de intervalo de códigos deve ser Informado!!!', MtWarning,
    [mbOK], 0);
    EdtCodInicial.SetFocus;
    exit;
  end;
  ExecutaSQL;
  RlReport1.Print;
end;

procedure TFrmRelProdutos.Button3Click(Sender: TObject);
begin
  Close;
end;

end.
