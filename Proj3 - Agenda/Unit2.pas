unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    DBEdit1: TDBEdit;
    nNO: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    TxtBusca: TEdit;
    Label5: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    Panel1: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure TxtBuscaChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses UnitDM;

procedure TForm2.Button1Click(Sender: TObject);
begin
ShowMessage('Tela Indisponivel');
end;

procedure TForm2.TxtBuscaChange(Sender: TObject);
begin
  DM.TAB_CONTATOS.Locate('celular',TxtBusca.Text,[loPartialKey]);
end;

end.
