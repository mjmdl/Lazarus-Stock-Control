program ControleEstoque;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  Controls,
  lazcontrols,
  zcomponent,
  sysutils,
  UnitMain,
  UnitFormBase,
  UnitDataModule,
  UnitFormCategories,
  UnitLogin, UnitFormProducts,
UnitFormCustomers, UnitFormSuppliers,
UnitFormSales { you can add units after this };

  {$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Scaled := True;
  Application.Initialize;
  Application.CreateForm(TDataMod, DataMod);

  try
    FormLogin := TFormLogin.Create(nil);
    if FormLogin.ShowModal <> mrOk then
      Halt(0);
  finally
    FreeAndNil(FormLogin);
  end;

  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormSuppliers, FormSuppliers);
  Application.CreateForm(TFormSales, FormSales);
  Application.Run;
end.
