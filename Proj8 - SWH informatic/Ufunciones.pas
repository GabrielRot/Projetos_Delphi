unit Ufuncoes;

interface

uses
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, 
  System.SysUtils;

  function FncRemoveChar(AString : String): String;
  procedure PrcValidaCampo(Form: TForm);

implementation

function FncRemoveChar(AString : String): String;
var
  I : integer;
  Limpos : String;
begin

  Limpos := '';

  for I := 1 to Length(AString) do
  begin
    if Pos ( Copy( AString, I, 1 ), '"!%$#@&¨*().,;:/<>[]{}=+-_\|') = 0 then
      Limpos := Limpos + Copy(AString, i, 1);
  end;
  
  Result := Limpos;
end;


procedure PrcValidaCampo(Form: TForm);
var
  i :Integer;

begin

  for i := 0 to Form.ComponentCount -1 do
  begin
    if Form.Components[i].Tag = 5 then
    begin
      //Verifica se é TEdit
      if Form.Components[i] is Tedit then
       begin 
       
       if ((Form.Components[i] as Tedit).Hint <> '') and
           ((Form.Components[i] as Tedit ).Text = '') then

          begin
            ShowMessage ('Faltou Preencher o Campo ' + (Form.Components[i] as Tedit).Hint);
              (Form.Components[i] as Tedit).SetFocus;          
              Abort;
          end;
       end;

          
      //Verifica se é TMaskedEdit
        if Form.Components[i] is TMaskedit then
         begin 
       
         if ((Form.Components[i] as TMaskedit).Hint <> '') and
             ( FncRemoveChar( (Form.Components[i] as TMaskedit ).Text ) = '' ) then
            begin
              ShowMessage ('Faltou Preencher o Campo ' + (Form.Components[i] as TMaskedit).Hint);  
                (Form.Components[i] as TMaskEdit).SetFocus;  
                   
                Abort;
            end;
         end;

      //Verifica se é TComboBox
      if Form.Components[i] is TComboBox then
         begin 
       
         if ((Form.Components[i] as TComboBox).Hint <> '') and
             ((Form.Components[i] as TComboBox).Text = '') then

            begin
              ShowMessage ('Faltou Preencher o Campo ' + (Form.Components[i] as TComboBox).Hint);
                (Form.Components[i] as TComboBox).SetFocus;         
                Abort;
            end;
         end;
      
     //if Form.Components[i] is Tedit then

    end;

  end;

end;

end.
