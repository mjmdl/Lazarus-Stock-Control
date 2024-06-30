unit UnitDataModule;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, ZConnection, ZDataset, ZAbstractRODataset;

type

  { TDataMod }

  TDataMod = class(TDataModule)
    Categoriesdescription: TStringField;
    Categoriesid: TLongintField;
    Categoriesparent_id: TLongintField;
    Categoriessearch_path: TStringField;
    Connection: TZConnection;
    Customerscpf_cnpj: TZRawStringField;
    Customersid: TZIntegerField;
    Customersname: TZRawStringField;
    ProductsCategoryId: TLongintField;
    ProductsDescription: TStringField;
    ProductsId: TLongintField;
    ProductsInStock: TLongintField;
    ProductsPrice: TFloatField;
    Salescustomer_id: TZIntegerField;
    Salesdate: TZDateTimeField;
    Salesid: TZIntegerField;
    Salessupplier_id: TZIntegerField;
    Salestotal_amount: TZBCDField;
    Supplierscnpj: TZRawStringField;
    Suppliersid: TZIntegerField;
    Suppliersname: TZRawStringField;
    Transaction: TZTransaction;
    Categories: TZQuery;
    Users: TZQuery;
    Usersid: TZIntegerField;
    Userslogin: TZRawStringField;
    Userspassword: TZRawStringField;
    Products: TZQuery;
    Customers: TZQuery;
    Suppliers: TZQuery;
    Sales: TZQuery;
    ViewProductscategory_description: TZRawStringField;
    ViewProductscategory_id: TZIntegerField;
    ViewProductsdescription: TZRawStringField;
    ViewProductsid: TZIntegerField;
    ViewProductsin_stock: TZIntegerField;
    ViewProductsprice: TZBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private

  public

  end;

var
  DataMod: TDataMod;

implementation

{$R *.lfm}

{ TDataMod }

procedure TDataMod.DataModuleCreate(Sender: TObject);
begin

end;

end.

