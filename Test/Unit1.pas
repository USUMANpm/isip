unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Label1: TLabel;
    Button1: TButton;
    procedure ListBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit10, Unit5;

{$R *.dfm}

procedure TForm1.ListBox1Click(Sender: TObject);
var
  t: TextFile;
  text: String;
  text2: TStringList;
  begin
  Text2:=TStringList.Create;
  Text2.Sorted:=True;
  Text2.Duplicates:=dupError;
  AssignFile(t, 'Test1.txt');
  Reset(t);
  while not Eof(t) do
  begin
    Readln(t, text);
    ListBox1.Items.Add(text);
  end;
  CloseFile(t);
end;

procedure TForm1.Button1Click(Sender: TObject);
  begin
    Form10.Show;
    Form1.Visible:=false;
    end;
end.
