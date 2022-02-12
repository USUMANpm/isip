unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm5 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit4, Unit3, Unit1, Unit6, Unit11;

{$R *.dfm}

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm5.FormDestroy(Sender: TObject);
begin
  Form4 := nil;
end;
procedure TForm5.Button2Click(Sender: TObject);
begin
Form4.Show;
Form5.Visible:=false;
end;

procedure TForm5.ListBox1Click(Sender: TObject);
var
  t: TextFile;
  text: String;
  text2: TStringList;
begin
  Text2:=TStringList.Create;
  Text2.Sorted:=True;
  Text2.Duplicates:=dupError;
  AssignFile(t, 'Test3.txt');
  Reset(t);
  while not Eof(t) do
  begin
    Readln(t, text);
    ListBox1.Items.Add(text);
  end;
  CloseFile(t);
end;

procedure TForm5.N1Click(Sender: TObject);
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
procedure TForm5.Button1Click(Sender: TObject);
begin
  Form11.Show;
  Form5.Visible:=false;
end;

end.
