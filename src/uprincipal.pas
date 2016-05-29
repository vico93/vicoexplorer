unit UPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Menus, ComCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btVoltar: TButton;
    btAvancar: TButton;
    btParar: TButton;
    btAtualizar: TButton;
    Edit1: TEdit;
    Toolbar: TPanel;
    StatusBar: TStatusBar;
    procedure ToolButton1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ToolButton1Click(Sender: TObject);
begin

end;

end.

