unit UnitFormCustomers;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  ComCtrls, UnitFormBase;

type

  { TFormCustomers }

  TFormCustomers = class(TFormBase)
    EditName: TDBEdit;
    EditId: TDBEdit;
    EditCpfCnpj: TDBEdit;
    LabelName: TLabel;
    LabelId: TLabel;
    LabelCpfCnpj: TLabel;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FormCustomers: TFormCustomers;

implementation

uses UnitDataModule;

{$R *.lfm}

{ TFormCustomers }

procedure TFormCustomers.FormCreate(Sender: TObject);
begin
  DataMod.Customers.Open;
  PageControl.ActivePage := TabList;
end;

end.

