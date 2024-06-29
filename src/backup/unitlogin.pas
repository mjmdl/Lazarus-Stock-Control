unit UnitLogin;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TFormLogin }

  TFormLogin = class(TForm)
    ButtonOk: TButton;
    ButtonCancel: TButton;
    EditLogin: TLabeledEdit;
    EditPassword: TLabeledEdit;
    PanelTitle: TPanel;
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    AttemptsRemaining: integer;
  public

  end;

var
  FormLogin: TFormLogin;

implementation

uses UnitDataModule;

  {$R *.lfm}

  { TFormLogin }

procedure TFormLogin.FormCreate(Sender: TObject);
begin
  AttemptsRemaining := 3;
end;

procedure TFormLogin.ButtonOkClick(Sender: TObject);
begin
  DataMod.Users.Close;
  DataMod.Users.ParamByName('login').Value := Trim(EditLogin.Text);
  DataMod.Users.ParamByName('password').Value := Trim(EditPassword.Text);
  DataMod.Users.Open;

  if DataMod.Users.RecordCount = 1 then
    ModalResult := mrOk
  else
  begin
    Dec(AttemptsRemaining);
    if AttemptsRemaining < 0 then
    begin
      ShowMessage('Número de tentativas excedidas!');
      Application.Terminate();
      Halt();
    end;
    ShowMessage('Usuário ou senha inválido!');
    EditPassword.Text := '';
    EditLogin.SetFocus;
  end;
end;

procedure TFormLogin.ButtonCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
