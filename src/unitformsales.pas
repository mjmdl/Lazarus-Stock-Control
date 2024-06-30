unit UnitFormSales;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  UnitFormBase;

type

  { TFormSales }

  TFormSales = class(TFormBase)
    EditId: TDBEdit;
    EditClientId: TDBEdit;
    EditSupplierId: TDBEdit;
    EditTotalAmount: TDBEdit;
    EditDate: TDBEdit;
    LabelId: TLabel;
    LabelCustomerId: TLabel;
    LabelSupplierId: TLabel;
    LabelTotalAmount: TLabel;
    LabelDate: TLabel;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FormSales: TFormSales;

implementation

uses UnitDataModule;

  {$R *.lfm}

  { TFormSales }

procedure TFormSales.FormCreate(Sender: TObject);
begin
  DataMod.Sales.Open;
  PageControl.ActivePage := TabList;
end;

end.
