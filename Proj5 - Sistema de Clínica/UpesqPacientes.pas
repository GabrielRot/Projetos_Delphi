unit UpesqPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, UdmSistema, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TFrmPesqPacientes = class(TForm)
    EdtFiltro: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqPacientes: TFrmPesqPacientes;

implementation

{$R *.dfm}

procedure TFrmPesqPacientes.Button1Click(Sender: TObject);
begin
  with DMSistema do
  begin
    QryPesqPct.Close;
    CdsPesqPct.Close;
    QryPesqPct.ParamByName('NOME').AsString := '%' + EdtFiltro.Text + '%';
    CdsPesqPct.Open;
    if CdsPesqPct.IsEmpty then
      MessageDlg('Nenhum Cliente encontrado o filtro informado!!!',
        MtWarning, [mbOK], 0);
  end;
end;

procedure TFrmPesqPacientes.Button2Click(Sender: TObject);
begin
  DMSistema.CdsPesqPct.Close;
end;

procedure TFrmPesqPacientes.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesqPacientes.DBGrid1DblClick(Sender: TObject);
begin
  with DMSistema do
  begin
    CdsCadPct.Close;
    CdsCadPct.Params[0].AsInteger := CdsPesqPctCOD_PACIENTE.AsInteger;
    CdsCadPct.Open;

    CdsCadPct.Edit;

    CdsPesqPct.Close;

    Close;
  end;
end;

end.
