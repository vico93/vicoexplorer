unit UPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, EditBtn, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Menus, ComCtrls, StdCtrls, cef3lcl, cef3lib, gettext;

type

  { TForm1 }

  TForm1 = class(TForm)
    btVoltar: TButton;
    btAvancar: TButton;
    btParar: TButton;
    btAtualizar: TButton;
    Chromium1: TChromium;
    edtURL: TEdit;
    Toolbar: TPanel;
    StatusBar: TStatusBar;
    procedure btAtualizarClick(Sender: TObject);
    procedure edtURLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
var
  myworkdir: string;
begin
  myworkdir := GetCurrentDir;
  CefResourcesDirPath:=concat(myworkdir, '\Resources');
  CefLocalesDirPath:=concat(myworkdir, '\Resources\locales');
  edtURL.Text:='http://www.lazarus-ide.org/';
end;

procedure TForm1.edtURLClick(Sender: TObject);
begin
  Chromium1.Load(edtURL.Text);
end;

procedure TForm1.btAtualizarClick(Sender: TObject);
begin
  Chromium1.Refresh;
end;

end.

