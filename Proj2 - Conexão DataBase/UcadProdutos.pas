unit UcadProdutos;

interface

uses
  Winapi.Windows, UpesqProdutos, UDmSistema, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls;

type
  TFCadProdutos = class(TForm)
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
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DateTimePicker1: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    procedure SvData;
  public
    { Public declarations }
  end;

var
  FCadProdutos: TFCadProdutos;
  ChildForm: TFrmPesqProdutos;

implementation

{$R *.dfm}

procedure TFCadProdutos.Button1Click(Sender: TObject);
begin
  DMSistema.CdsCadProd.Insert;
end;

procedure TFCadProdutos.Button2Click(Sender: TObject);
begin
  DMSistema.CdsCadProd.Cancel;
end;

procedure TFCadProdutos.Button3Click(Sender: TObject);
begin
  DMSistema.CdsCadProd.Post;
end;

procedure TFCadProdutos.SvData;
begin
With DMSistema, QryCadProd do
begin
  Close;
  ParamByName('DATE').AsDateTime := (DateTimePicker1.DateTime);
end;
end;

procedure TFCadProdutos.Button4Click(Sender: TObject);
begin
  DMSistema.CdsCadProd.Delete;
end;

procedure TFCadProdutos.Button5Click(Sender: TObject);
begin
  Close;
end;

procedure TFCadProdutos.Button6Click(Sender: TObject);
begin
   ChildForm := TFrmPesqProdutos.Create(Application);
    ChildForm.ShowModal
end;

procedure TFCadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
