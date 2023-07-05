unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    TAB_CONTATOS: TFDTable;
    DS_CONTATOS: TDataSource;
    TAB_CONTATOSid_: TFDAutoIncField;
    TAB_CONTATOSnome: TStringField;
    TAB_CONTATOScelular: TStringField;
    TAB_CONTATOSbloqueado: TBooleanField;
    TAB_CONTATOSdata: TDateTimeField;
    TAB_CONTATOSobservacoes: TMemoField;
    procedure TAB_CONTATOSAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.TAB_CONTATOSAfterInsert(DataSet: TDataSet);
begin
     TAB_CONTATOSdata.Value := Now();
end;

end.
