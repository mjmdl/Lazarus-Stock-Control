unit UnitFormProducts;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  UnitFormBase;

type

  { TFormProducts }

  TFormProducts = class(TFormBase)
    EditId: TDBEdit;
    EditCategoryId: TDBEdit;
    EditPrice: TDBEdit;
    EditStock: TDBEdit;
    EditDescription: TDBEdit;
    LabelId: TLabel;
    LabelCategoryId: TLabel;
    LabelPrice: TLabel;
    LabelStock: TLabel;
    LabelDescription: TLabel;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FormProducts: TFormProducts;

implementation

uses UnitDataModule;

{$R *.lfm}

{ TFormProducts }

procedure TFormProducts.FormCreate(Sender: TObject);
begin
  DataMod.Products.Open;
  PageControl.ActivePage:=TabList;
end;

end.

