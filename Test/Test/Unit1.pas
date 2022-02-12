unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.N2Click(Sender: TObject);
begin
  if not Assigned(Form2) then
    Application.CreateForm(TForm2, Form2)
  else
    Form2.BringToFront;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  if not Assigned(Form3) then
    Application.CreateForm(TForm3, Form3)
  else
    Form3.BringToFront;
end;

end.
