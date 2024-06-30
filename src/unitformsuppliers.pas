unit UnitFormSuppliers;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  UnitFormBase;

type

  { TFormSuppliers }

  TFormSuppliers = class(TFormBase)
    EditId: TDBEdit;
    EditCnpj: TDBEdit;
    EditName: TDBEdit;
    LabelId: TLabel;
    LabelCnpj: TLabel;
    LabelName: TLabel;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FormSuppliers: TFormSuppliers;

implementation

uses UnitDataModule;

{$R *.lfm}

{ TFormSuppliers }

procedure TFormSuppliers.FormCreate(Sender: TObject);
begin
  DataMod.Suppliers.Open;
  PageControl.ActivePage := TabList;
end;

end.

