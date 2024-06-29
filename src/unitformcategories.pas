unit UnitFormCategories;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  ExtCtrls, DividerBevel, UnitFormBase;

type

  { TFormCategories }

  TFormCategories = class(TFormBase)
    EditParentId: TDBEdit;
    EditSearchPath: TDBEdit;
    EditId: TDBEdit;
    EditDescription: TDBEdit;
    LabelParentId: TLabel;
    LabelId: TLabel;
    LabelDescription: TLabel;
    LabelSearchPath: TLabel;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FormCategories: TFormCategories;

implementation

uses UnitDataModule;

{$R *.lfm}

{ TFormCategories }

procedure TFormCategories.FormCreate(Sender: TObject);
begin
  DataMod.Categories.Open;
  PageControl.ActivePage:=TabList;
end;

end.

