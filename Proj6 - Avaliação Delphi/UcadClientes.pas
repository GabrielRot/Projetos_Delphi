unit UcadClientes;

interface

uses
  Winapi.Windows, UrelClientes, Winapi.Messages, UDmSistema, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmCadClientes = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Button5: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmCadClientes: TFrmCadClientes;
  Existe, i:integer;

implementation

{$R *.dfm}



procedure TFrmCadClientes.Button1Click(Sender: TObject);
begin
  DMSistema.CdsCadCli.Post;
end;

procedure TFrmCadClientes.Button2Click(Sender: TObject);
begin
    DMSistema.CdsCadCli.Delete;
    DMSistema.CdsCadCli.ApplyUpdates(0);
end;

procedure TFrmCadClientes.Button3Click(Sender: TObject);
begin
 Existe :=-1;
  for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] is TFrmRelClientes then
      Existe := I;
    if Existe >= 0 then
      Screen.Forms[Existe].SetFocus
    else
      FrmRelClientes := TFrmRelClientes.Create(Self);
end;

procedure TFrmCadClientes.Button4Click(Sender: TObject);
begin
  DMSistema.CdsCadCli.Insert;
end;

procedure TFrmCadClientes.Button5Click(Sender: TObject);
begin
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  DBEdit3.Text := '';
end;

procedure TFrmCadClientes.DBGrid1DblClick(Sender: TObject);
begin
  DMSistema.CdsCadCli.Close;
  
  DMSistema.CdsCadCli.Params[0].AsInteger := DMSistema.CdsPesqCliCOD_CLIENTE.AsInteger;
  DMSistema.CdsCadCli.Open;
  DBEdit1.Text := DBGrid1.Fields[0].Value;
  DBEdit2.Text := DBGrid1.Fields[1].Value;
  DBEdit3.Text := DBGrid1.Fields[2].Value;
  
  
  DMSistema.CdsCadCli.Edit;

  //DMSistema.CdsCadCli.Close;

end;

end.
