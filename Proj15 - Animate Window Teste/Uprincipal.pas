unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Usecundario;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.BringToFront;
  Form1.Hide;
    case RadioGroup1.ItemIndex of
      0 : AnimateWindow( Form2.Handle, 2000, AW_BLEND );
      1 : AnimateWindow( Form2.Handle, 2000, AW_SLIDE );
      2 : AnimateWindow( Form2.Handle, 2000, AW_ACTIVATE );
      3 : AnimateWindow( Form2.Handle, 2000, AW_HIDE );
      4 : AnimateWindow( Form2.Handle, 2000, AW_CENTER );
      5 : AnimateWindow( Form2.Handle, 2000, AW_HOR_POSITIVE );
      6 : AnimateWindow( Form2.Handle, 2000, AW_HOR_NEGATIVE );
      7 : AnimateWindow( Form2.Handle, 2000, AW_VER_POSITIVE );
      8 : AnimateWindow( Form2.Handle, 2000, AW_VER_NEGATIVE );

    end;
  Form2.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Panel1.Color   := clBlack;
  Label1.Visible := True;
  Label2.Visible := True;
  Label3.Visible := True;
  Label4.Visible := True;
  Label5.Visible := True;
  Label6.Visible := True;
  Label7.Visible := True;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
