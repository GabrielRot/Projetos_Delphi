unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Fornecedores1: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    BitBtn3: TBitBtn;
    procedure Sair1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitCadForn, UnitCadAgend;

procedure TFormPrincipal.Agendamentos1Click(Sender: TObject);
begin
  FormCadAgend.ShowModal;
end;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin
FormCadAgend.ShowModal;
end;

procedure TFormPrincipal.BitBtn2Click(Sender: TObject);
begin
FormCadForn.ShowModal;
end;

procedure TFormPrincipal.BitBtn3Click(Sender: TObject);
begin
    ShowMessage('Sistema Encerrado com Sucesso!');
    Close;
end;

procedure TFormPrincipal.Fornecedores1Click(Sender: TObject);
begin
  FormCadForn.ShowModal;
end;

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin
  ShowMessage('Sistema Encerrado com Sucesso!');
  Close;
end;

end.
