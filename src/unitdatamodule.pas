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
    Transaction: TZTransaction;
    Categories: TZQuery;
    Users: TZQuery;
    Usersid: TZIntegerField;
    Userslogin: TZRawStringField;
    Userspassword: TZRawStringField;
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

