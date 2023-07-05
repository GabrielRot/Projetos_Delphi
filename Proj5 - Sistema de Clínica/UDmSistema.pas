unit UDmSistema;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MSAccDef, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSAcc, Data.DB,
  FireDAC.Comp.Client, Datasnap.Provider, Datasnap.DBClient, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.IBBase;

type
  TDMSistema = class(TDataModule)
    DsCadPct: TDataSource;
    CdsCadPct: TClientDataSet;
    DspCadPct: TDataSetProvider;
    Connection: TFDConnection;
    FBDriverLink: TFDPhysFBDriverLink;
    QryCadPct: TFDQuery;
    CdsCadPctCOD_PACIENTE: TIntegerField;
    CdsCadPctNOME_PACIENTE: TStringField;
    CdsCadPctFONE_PACIENTE: TStringField;
    CdsCadPctCPF_PACIENTE: TStringField;
    CdsCadPctDTA_PACIENTE: TSQLTimeStampField;
    QryCadAgend: TFDQuery;
    DspCadAgend: TDataSetProvider;
    CdsCadAgend: TClientDataSet;
    DsCadAgend: TDataSource;
    CdsCadPctFONE_SEC_PACIENTE: TStringField;
    QryPesqPct: TFDQuery;
    DspPesqPct: TDataSetProvider;
    DsPesqPct: TDataSource;
    CdsPesqPct: TClientDataSet;
    CdsPesqPctCOD_PACIENTE: TIntegerField;
    CdsPesqPctNOME_PACIENTE: TStringField;
    CdsPesqPctCPF_PACIENTE: TStringField;
    CdsPesqPctFONE_PACIENTE: TStringField;
    CdsPesqPctFONE_SEC_PACIENTE: TStringField;
    CdsPesqPctDTA_PACIENTE: TSQLTimeStampField;
    CdsCadAgendCOD_AGENDAMENTO: TIntegerField;
    CdsCadAgendMEDICO_AGENDAMTO: TStringField;
    CdsCadAgendHORA_AGENDAMENTO: TTimeField;
    CdsCadAgendDTA_AGENDAMENTO: TDateField;
    CdsCadAgendCOD_PACIENTE: TIntegerField;
    CdsCadAgendESPC_AGENDAMENTO: TStringField;
    procedure CdsCadPctNewRecord(DataSet: TDataSet);
    procedure CdsCadPctCOD_PACIENTEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsCadPctAfterPost(DataSet: TDataSet);
    procedure CdsCadPctAfterDelete(DataSet: TDataSet);
    procedure CdsCadAgendNewRecord(DataSet: TDataSet);
    procedure CdsCadAgendCOD_AGENDAMENTOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSistema: TDMSistema;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMSistema.CdsCadAgendCOD_AGENDAMENTOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsInteger =-1 then
    text :=''
  else
    text := Sender.AsString;
end;

procedure TDMSistema.CdsCadAgendNewRecord(DataSet: TDataSet);
begin
  CdsCadAgendCOD_AGENDAMENTO.AsInteger := -1;
end;

procedure TDMSistema.CdsCadPctAfterDelete(DataSet: TDataSet);
begin
  CdsCadPct.ApplyUpdates(0);
end;

procedure TDMSistema.CdsCadPctAfterPost(DataSet: TDataSet);
begin
  CdsCadPct.ApplyUpdates(0);
end;

procedure TDMSistema.CdsCadPctCOD_PACIENTEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if sender.asinteger = -1 then
    text :=''
  else
    text := sender.AsString;
end;

procedure TDMSistema.CdsCadPctNewRecord(DataSet: TDataSet);
begin
  CdsCadPctCOD_PACIENTE.AsInteger := -1;
end;

end.
