unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm4 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit5, Unit1, Unit3, Unit2, Unit9;

{$R *.dfm}
procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Application.Terminate;
end;

procedure TForm4.FormDestroy(Sender: TObject);
begin
  Form4 := nil;
end;
procedure TForm4.Button1Click(Sender: TObject);
begin
  Form9.Show;
  Form4.Visible:=false;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Form1.Show;
end;

procedure TForm4.ListBox1Click(Sender: TObject);
var
  t: TextFile;
  text: String;
  text2: TStringList;
begin
  Text2:=TStringList.Create;
  Text2.Sorted:=True;
  Text2.Duplicates:=dupError;
  AssignFile(t, 'Test2.txt');
  Reset(t);
  while not Eof(t) do
  begin
    Readln(t, text);
    ListBox1.Items.Add(text);
  end;
  CloseFile(t);
end;

procedure TForm4.N1Click(Sender: TObject);
begin
if not Assigned(Form3) then
  begin
    Application.CreateForm(TForm3, Form3);
    Form1.ListBox1.Visible:=false;
    end
    else
  begin
    Form3.BringToFront;
    Form1.ListBox1.Visible:=false;
end;
end;
procedure TForm4.N2Click(Sender: TObject);
var
Password:string;
begin
  if not InputQuery('Авторизация', 'Введите пароль: (1234)', Password) then
    Exit
  else
    if Password <> '1234' then
    begin
      ShowMessage('Неверный пароль!');
      Exit;
    end;

  if not Assigned(Form2) then
  begin
    Application.CreateForm(TForm2, Form2);
    Form1.ListBox1.Visible:=false;
    end
  else
  begin
    Form2.BringToFront;
    Form4.ListBox1.Visible:=false;
end;
 end;

end.
 