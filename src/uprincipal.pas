unit UPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, EditBtn, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Menus, ComCtrls, StdCtrls, cef3lcl, cef3intf, cef3types, cef3lib, gettext;

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
  PrjPath: ustring;
  Lang, FallbackLang: string;
begin
  PrjPath := UTF8Decode(GetCurrentDir + PathDelim);
  CefLocalesDirPath := PrjPath + 'locales';
  GetLanguageIDs(Lang, FallbackLang);
  CefLocale := UTF8Decode(FallbackLang);
  edtURL.Text:='http://www.lazarus-ide.org/';
end;

procedure TForm1.edtURLClick(Sender: TObject);
begin
  Chromium1.Load(UTF8Decode(edtURL.Text));
end;

end.

