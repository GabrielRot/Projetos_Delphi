unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ColorGrd, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, UdmSistema,
  Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    DBGRegistros: TDBGrid;
    PnlConsultar: TPanel;
    BtnConsultar: TSpeedButton;
    PnlDBGrid: TPanel;
    EdtPesquisar: TEdit;
    CmbPesquisar: TComboBox;
    Label1: TLabel;
    DataSource1: TDataSource;
    PnlTopo: TPanel;
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGRegistrosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure CmbPesquisarChange(Sender: TObject);
    procedure DBGRegistrosTitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
procedure AtualizaSQL ( NomeCampo : String );
  public
    { Public declarations }
    
  end;

type
  TDBGridPadrao = class (TDBGrid);

var
  FrmPrincipal: TFrmPrincipal;
  SQLConsultaPadrao : TStrings;

implementation

uses
  Data.SqlExpr;

{$R *.dfm}

procedure TFrmPrincipal.AtualizaSQL ( NomeCampo: String );
var
  i:Integer;
  sLinhaSQL  : String;
  sTipoCampo : tFieldType;
  
begin 
  sTipoCampo := DMSistema.QryPesqCli.FieldByName( NomeCampo ).DataType;   

  //Pintando o Titulo da Coluna do DBGrid
  for I := 0 to DBGRegistros.Columns.Count -1 do

  begin
    if DBGRegistros.Columns[i].FieldName = NomeCampo then
    begin
      DBGRegistros.Columns[i].Title.Color := clBlack;
      DBGRegistros.Columns[i].Font.Color  := clWhite;

      CmbPesquisar.Text := DBGRegistros.Columns[i].Title.Caption;
      end else
      begin
      DBGRegistros.Columns[i].Title.Color := DBGRegistros.FixedColor;
      DBGRegistros.Columns[i].Title.Color :=  clWhite; 
      
    end;

  end;

  //Trocando o SQL
  DMSistema.QryPesqCli.Close;
  DMSistema.CdsPesqCli.Close;
  DMSistema.QryPesqCli.SQL.Clear;
  DMSistema.QryPesqCli.SQL.AddStrings( SQLConsultaPadrao );

  if Pos ('WHERE', AnsiUpperCase ( DMSistema.QryPesqCli.SQL.Text ) ) > 0 then
    sLinhaSQL := ' AND '
  else  
    sLinhaSQL := ' WHERE ';
  

  if sTipoCampo = ftString then
    sLinhaSQL := sLinhaSQL + NomeCampo + 'LIKE :NOME'
  else
    sLinhaSQL := sLinhaSQL + NomeCampo + '= :NOME';

  if DBGRegistros.Tag = 0 then
  begin
    sLinhaSQL := sLinhaSQL + 'ORDER BY' + NomeCampo + ' ASC ';
    DBGRegistros.Tag := 1;
  end else
  begin
    sLinhaSQL := sLinhaSQL + 'ORDER BY' + NomeCampo + ' DESC ';
    DBGRegistros.Tag := 0;  
  end;

  DMSistema.QryPesqCli.SQL.Add ( sLinhaSQL );

  if sTipoCampo = ftString then
    DMSistema.QryPesqCli.ParamByName('NOME').AsString := '%' + EdtPesquisar.Text + '%'
  else
    DMSistema.QryPesqCli.ParamByName('NOME').AsString := EdtPesquisar.Text;
  
end;

procedure TFrmPrincipal.BtnConsultarClick(Sender: TObject);
begin
  CmbPesquisarChange( Self );
   try
    with UdmSistema.DMSistema.QryPesqCli do
    begin
        begin
          UdmSistema.DMSistema.CdsPesqCli.Close;
          SQL.Clear;
          SQL.Add('SELECT');
          SQL.Add(' * ' );
          SQL.Add('FROM '                         );
          SQL.Add('TAB_PAGAMENTO '                );
        end
    end;
  finally
      Cursor := crDefault;
      UdmSistema.DMSistema.CdsPesqCli.Open;
  end;
end;

procedure TFrmPrincipal.CmbPesquisarChange(Sender: TObject);
var
  i: Integer;
begin

  for I := 0 to DBGRegistros.Columns.Count -1 do
  begin
    if DBGRegistros.Columns[i].Title.Caption = CmbPesquisar.Text then
    begin
      AtualizaSQL ( DBGRegistros.Columns[i].FieldName );
      DMSistema.QryPesqCli.Open;
      
      Exit;
    end;
    
  end;

end;

procedure TFrmPrincipal.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  TDBGridPadrao( DBGRegistros ).DefaultRowHeight := 30;
  TDBGridPadrao( DBGRegistros ).ClientHeight     := ( 30 * TDBGridPadrao( DBGRegistros ).RowCount ) + 30;
end;

procedure TFrmPrincipal.DBGRegistrosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   //zebrando o dbgrid
  if Odd( DBGRegistros.DataSource.DataSet.RecNo ) then
    DBGRegistros.Canvas.Brush.Color := $00E9E9E9
  else
    DBGRegistros.Canvas.Brush.Color := clWhite;//$00F9F9F9; SEXO🥵


  //mudando a cor da seleção
  if ( gdSelected in State ) then
  begin
    DBGRegistros.Canvas.Brush.Color := $000080FF; //$00844726;
    DBGRegistros.Canvas.Font.Color  := clWhite;
    DBGRegistros.Canvas.Font.Style  := [fsBold];
  end;


  DBGRegistros.Canvas.FillRect( Rect );
  DBGRegistros.DefaultDrawColumnCell( Rect, DataCol, Column, State);

  //mudando a posição e alinhamento vertical do texto de cada linha
  DBGRegistros.Canvas.TextRect( Rect, Rect.Left + 8, Rect.Top + 8, Column.Field.DisplayText );
end;

procedure TFrmPrincipal.DBGRegistrosTitleClick(Column: TColumn);
begin
  AtualizaSQL ( Column.FieldName );
    DMSistema.CdsPesqCli.Open;     
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  SQLConsultaPadrao := TStringList.Create;
  SQLConsultaPadrao.Add('SELECT');
  SQLConsultaPadrao.Add('COD_CLIENTE,');
  SQLConsultaPadrao.Add('DES_CLIENTE,');
  SQLConsultaPadrao.Add('DTA_CADASTRO');
  SQLConsultaPadrao.Add('FROM');
  SQLConsultaPadrao.Add('TAB_CLIENTE');
  SQLConsultaPadrao.Add('ORDER BY COD_CLIENTE');
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  CmbPesquisarChange ( Self );
  DMSistema.QryPesqCli.Open;  
end;

end.
