unit UcadClientes;

interface

uses
  Winapi.Windows, UMenu, UpesquisaClientes, UDmSistema, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.Mask, Vcl.WinXCtrls, Vcl.ComCtrls;

type
  TFCadClientes = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DateTimePicker1: TDateTimePicker;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit11Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SWDarkModeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
    procedure SvData;
  public
    { Public declarations }
  end;

var
  FCadClientes: TFCadClientes;
  ChildForm: TFrmPesqClientes;

implementation

{$R *.dfm}

procedure TFCadClientes.Button1Click(Sender: TObject);
begin
  DMSistema.CdsCadCli.Insert;
end;

procedure TFCadClientes.Button2Click(Sender: TObject);
begin
  DMSistema.CdsCadCli.Cancel;
end;

procedure TFCadClientes.Button3Click(Sender: TObject);
begin
  DMSistema.CdsCadCli.Post;
end;

procedure TFCadClientes.SvData;
begin
With DMSistema, QryCadCli do
begin
  ParamByName('DATA').AsDateTime := (DateTimePicker1.DateTime);
end;
end;


procedure TFCadClientes.Button4Click(Sender: TObject);
begin
  DMSistema.CdsCadCli.Delete;
end;

procedure TFCadClientes.Button5Click(Sender: TObject);
begin
  Close;
end;

procedure TFCadClientes.Button6Click(Sender: TObject);
begin
       {FrmPesqClientes := TfrmPesqClientes(self);
       try
       FrmPesqClientes.ShowModal;
    Finally
       FrmPesqClientes.Free;
    End;}

    ChildForm := TFrmPesqClientes.Create(Application);
    ChildForm.ShowModal
end;

procedure TFCadClientes.DBEdit11Change(Sender: TObject);
begin
//StrToDateTime(DBedit11.Text)
end;

procedure TFCadClientes.FormActivate(Sender: TObject);
begin
  if FMenu.Color = $00555555 then
    begin
      Self.Color := $00555555;
      Label1.Font.Color := clWhite;
      Label2.Font.Color := clWhite;
      Label3.Font.Color := clWhite;
      Label4.Font.Color := clWhite;
      Label5.Font.Color := clWhite;
      Label6.Font.Color := clWhite;
      Label7.Font.Color := clWhite;
      Label8.Font.Color := clWhite;
      Label9.Font.Color := clWhite;
      Label10.Font.Color := clWhite;
      Label11.Font.Color := clWhite;
  end
  else
  begin
      Self.Color := clWhite
  end;  
end;

procedure TFCadClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFCadClientes.FormDestroy(Sender: TObject);
begin
FCadClientes := nil;
end;

procedure TFCadClientes.SWDarkModeClick(Sender: TObject);
begin
  {if SWDarkMode.State = tssON then
  begin
  FcadClientes.Color := $003F3936;
  Label1.Font.Color := clWhite;
  Label2.Font.Color := clWhite;
  Label3.Font.Color := clWhite;
  Label4.Font.Color := clWhite;
  Label5.Font.Color := clWhite;
  Label6.Font.Color := clWhite;
  Label7.Font.Color := clWhite;
  Label8.Font.Color := clWhite;
  Label9.Font.Color := clWhite;
  Label10.Font.Color := clWhite;
  Label11.Font.Color := clWhite;
  end
  else
  begin
  FcadClientes.Color := clWhite;
  Label1.Font.Color := clBlack;
  Label2.Font.Color := clBlack;
  Label3.Font.Color := clBlack;
  Label4.Font.Color := clBlack;
  Label5.Font.Color := clBlack;
  Label6.Font.Color := clBlack;
  Label7.Font.Color := clBlack;
  Label8.Font.Color := clBlack;
  Label9.Font.Color := clBlack;
  Label10.Font.Color := clBlack;
  Label11.Font.Color := clBlack ;
  end;}
end;



end.
