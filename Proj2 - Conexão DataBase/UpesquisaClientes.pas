unit UpesquisaClientes;

interface

uses
  Winapi.Windows, UDmSistema, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TFrmPesqClientes = class(TForm)
    Label1: TLabel;
    EdtFiltro: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqClientes: TFrmPesqClientes;

implementation

{$R *.dfm}

uses UcadClientes;

procedure TFrmPesqClientes.Button1Click(Sender: TObject);
begin
  with DMSistema do
  begin
      QryPesqCli.Close;
      CdsPesqCli.Close;
      QryPesqCli.ParamByName('NOME').AsString := '%' + EdtFiltro.Text + '%';
      CdsPesqCli.Open;
    if CdsPesqCli.IsEmpty then
      MessageDlg('Nenhum cliente encontrado conforme o filtro informado!!!',
        MtWarning, [mbOk], 0);

  end;
end;

procedure TFrmPesqClientes.Button2Click(Sender: TObject);
begin
  DMSistema.CdsPesqCli.Close;
end;

procedure TFrmPesqClientes.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesqClientes.DBGrid1DblClick(Sender: TObject);
begin
  with DMSistema do
  begin
    CdsCadCli.Close;
    CdsCadCli.Params[0].AsInteger := CdsPesqCliCOD_CLIENTE.AsInteger;
    CdsCadCli.Open;

    CdsCadCli.Edit;

    CdsPesqCli.Close;

    Close;
  end;
end;

end.
