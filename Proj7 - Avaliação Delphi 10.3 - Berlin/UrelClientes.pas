unit UrelClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, UdmSistema, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, RLReport;

type
  TFrmRelClientes = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    EdtCodInicial: TEdit;
    EdtCodFinal: TEdit;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDraw1: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Procedure ExecutaSQL;
  public
    { Public declarations }
  end;

var
  FrmRelClientes: TFrmRelClientes;

implementation

{$R *.dfm}

Procedure TFrmRelClientes.ExecutaSQL;
begin
  with DMSistema, QryRelCli do
  begin
    Close;
    CdsRelCli.Close;
    SQL.Clear;
    SQL.Add('SELECT');
    SQL.Add('COD_CLIENTE,');
    SQL.Add('DES_CLIENTE,');
    SQL.Add('DTA_CADASTRO');
    SQL.Add('FROM');
    SQL.Add('TAB_CLIENTE');
    SQL.Add('WHERE');
    SQL.Add('COD_CLIENTE');
    SQL.Add('BETWEEN');
    SQL.Add(':CODIGO_INICIAL AND :CODIGO_FINAL');
    ParamByName('CODIGO_INICIAL').AsInteger := StrToInt(EdtCodInicial.Text);
    ParamByName('CODIGO_FINAL').AsInteger := StrToInt(EdtCodFinal.Text);
    CdsRelCli.Open;
    if CdsRelCli.IsEmpty then
    begin
      MessageDlg('Nenhum registro encontrado conforme o filtro informado!!!',
        MtWarning, [mbOK], 0);
        Screen.Cursor := crDefault;
        exit;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TFrmRelClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmRelClientes.BitBtn1Click(Sender: TObject);
begin
  if (EdtCodInicial.Text = '') or (EdtCodFinal.Text = '') then
  begin
    MessageDlg('Filtro de intrevalo de códigos deve ser informado!!!', MtWarning,
      [mbOK], 0);
        EdtCodInicial.SetFocus;
        exit;
  end;
  
  ExecutaSQL;

  RLReport1.Preview;
end;

procedure TFrmRelClientes.BitBtn2Click(Sender: TObject);
begin
  if (EdtCodInicial.Text ='') or (EdtCodFinal.Text ='') then
  begin
    MessageDlg('Filtro de intervalo de códigos deve ser informado!!!', MtWarning,
      [mbOK], 0);
        EdtCodInicial.SetFocus;
        exit;
  end;

  ExecutaSQL;

  RLReport1.Print;
end;

procedure TFrmRelClientes.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

end.
