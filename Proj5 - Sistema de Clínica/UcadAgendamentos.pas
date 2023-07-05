unit UcadAgendamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, UDmSistema, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, JvExStdCtrls,
  JvCombobox, JvDBCombobox;

type
  TFCadAgnd = class(TForm)
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    EdtHora: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    DBEdit3: TDBEdit;
    ComboBox1: TComboBox;
    JvDBComboBox1: TJvDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    procedure SalvaData;
    procedure SalvaHora;
    procedure SalvaEspec;
  public
    { Public declarations }
  end;

var
  FCadAgnd: TFCadAgnd;

implementation

{$R *.dfm}

procedure TFCadAgnd.SalvaEspec;
begin
  with DMSistema, QryCadAgend do
  begin
    ParamByName('ESPC').AsInteger := StrToInt (ComboBox1.Text);
  end;
end;

procedure TFCadAgnd.SalvaHora;
begin
  with DMSistema, QryCadAgend do
  begin
    ParamByName('HORA').AsTime := StrToTime (EdtHora.Text);
  end;
end;

procedure TFCadAgnd.SalvaData;
begin
  with DMSistema, QryCadAgend do
  begin
    ParamByName('DATA').AsDate := (DateTimePicker1.Date);
  end;
end;

procedure TFCadAgnd.BitBtn1Click(Sender: TObject);
begin
  DMSistema.CdsCadAgend.Insert;
end;

procedure TFCadAgnd.BitBtn2Click(Sender: TObject);
begin
  DMSistema.CdsCadAgend.Delete;
end;

procedure TFCadAgnd.BitBtn3Click(Sender: TObject);
begin
  DMSistema.CdsCadAgend.Cancel;
end;

procedure TFCadAgnd.BitBtn4Click(Sender: TObject);
begin
  DMSistema.CdsCadAgend.Post;
end;

procedure TFCadAgnd.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TFCadAgnd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
