unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit5, Unit7, Unit12;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
Form5.Show;
Form6.Visible:=false;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  Form12.Show;
  Form6.Visible:=false;
end;

procedure TForm6.ListBox1Click(Sender: TObject);
var
  t: TextFile;
  text: String;
  text2: TStringList;
begin
Text2:=TStringList.Create;
  Text2.Sorted:=True;
  Text2.Duplicates:=dupError;
  AssignFile(t, 'Test4.txt');
  Reset(t);
  while not Eof(t) do
  begin
    Readln(t, text);
    ListBox1.Items.Add(text);
  end;
  CloseFile(t);
end;

end.
