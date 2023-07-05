unit UcadClientes;

interface

uses
  Winapi.Windows, UdmSistema, UrelClientes, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmCadClientes = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadClientes: TFrmCadClientes;
  Existe, i: integer;

implementation

{$R *.dfm}

procedure TFrmCadClientes.Button1Click(Sender: TObject);
begin
  DMSistema.CdsCadCli.Insert;
end;

procedure TFrmCadClientes.Button2Click(Sender: TObject);
begin
  DMSistema.CdsCadCli.Post;
end;

procedure TFrmCadClientes.Button3Click(Sender: TObject);
begin
  DMSistema.CdsCadCli.Delete
end;

procedure TFrmCadClientes.Button4Click(Sender: TObject);
begin
  Existe :=-1;
    for I := 0 to Screen.FormCount -1 do
      if Screen.Forms[i] is TFrmRelClientes then
        Existe := I;
      if Existe >= 0 then
        Screen.Forms[Existe].SetFocus
      else
        FrmRelClientes := TfrmRelClientes.Create(Self);
end;

procedure TFrmCadClientes.DBGrid1DblClick(Sender: TObject);
begin
  with DMSistema do
  begin
    //CdsCadCli.Close;
    CdsCadCli.Params[0].AsInteger := CdsPesqCliCOD_CLIENTE.AsInteger;

    CdsCadCli.Edit;

    //CdsPesqCli.Close;
  end;
end;

end.
