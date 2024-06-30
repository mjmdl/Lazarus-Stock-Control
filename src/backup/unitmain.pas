unit UnitMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  { TFormMain }

  TFormMain = class(TForm)
    MenuItemProducts: TMenuItem;
    MenuItemCustomers: TMenuItem;
    MenuItemSuppliers: TMenuItem;
    MenuItemSales: TMenuItem;
    MenuItemCategories: TMenuItem;
    MenuItemEntries: TMenuItem;
    MenuMain: TMainMenu;
    procedure MenuItemCategoriesClick(Sender: TObject);
    procedure MenuItemCustomersClick(Sender: TObject);
    procedure MenuItemProductsClick(Sender: TObject);
    procedure MenuItemSuppliersClick(Sender: TObject);
  private

  public

  end;

var
  FormMain: TFormMain;

implementation

uses UnitFormCategories, UnitFormProducts, UnitFormCustomers, UnitFormSuppliers;

  {$R *.lfm}

  { TFormMain }

procedure TFormMain.MenuItemCategoriesClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCategories, FormCategories);
    FormCategories.ShowModal;
  finally
    FreeAndNil(FormCategories);
  end;
end;

procedure TFormMain.MenuItemCustomersClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCustomers, FormCustomers);
    FormCustomers.ShowModal;
  finally
    FreeAndNil(FormCustomers);
  end;
end;

procedure TFormMain.MenuItemProductsClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFormProducts, FormProducts);
    FormProducts.ShowModal;
  finally
    FreeAndNil(FormProducts);
  end;
end;

procedure TFormMain.MenuItemSuppliersClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFormSuppliers, FormSuppliers);
    FormSuppliers.ShowModal;
  finally
    FreeAndNil(FormSuppliers);
  end;
end;

end.
