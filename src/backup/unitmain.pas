unit UnitMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  { TFormMain }

  TFormMain = class(TForm)
    MenuItemCategories: TMenuItem;
    MenuItemEntries: TMenuItem;
    MenuMain: TMainMenu;
    Separator1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MenuItemCategoriesClick(Sender: TObject);
  private

  public

  end;

var
  FormMain: TFormMain;

implementation

uses UnitFormCategories;

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

procedure TFormMain.FormCreate(Sender: TObject);
begin

end;

end.

