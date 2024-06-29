unit UnitFormBase;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls, DBGrids, Buttons;

type

  { TFormBase }

  TFormBase = class(TForm)
    ButtonSave: TBitBtn;
    ButtonCancel: TBitBtn;
    DataSourceBase: TDataSource;
    GridBase: TDBGrid;
    FormTitle: TPanel;
    FormBand: TPanel;
    PageControl: TPageControl;
    TabList: TTabSheet;
    TabEdit: TTabSheet;
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure GridBaseDblClick(Sender: TObject);
  private

  public

  end;

var
  FormBase: TFormBase;

implementation

{$R *.lfm}

{ TFormBase }

procedure TFormBase.GridBaseDblClick(Sender: TObject);
begin
  PageControl.ActivePage:=TabEdit;
  if not (DataSourceBase.DataSet.State in [dsInsert, dsEdit]) then
    DataSourceBase.DataSet.Edit;
end;

procedure TFormBase.ButtonSaveClick(Sender: TObject);
begin
  if DataSourceBase.DataSet.State in [dsInsert, dsEdit] then
    DataSourceBase.DataSet.Post;
  PageControl.ActivePage:=TabList;
end;

procedure TFormBase.ButtonCancelClick(Sender: TObject);
begin
  if DataSourceBase.DataSet.State in [dsInsert, dsEdit] then
    DataSourceBase.DataSet.Cancel;
  PageControl.ActivePage:=TabList;
end;

end.

