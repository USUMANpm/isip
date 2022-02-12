unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm8 = class(TForm)
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
  Form8: TForm8;

implementation

uses Unit7, Unit9, Unit14;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
Form7.Show;
Form8.Visible:=false;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
Form14.Show;
Form8.Visible:=false;
end;

procedure TForm8.ListBox1Click(Sender: TObject);
var
  t: TextFile;
  text: String;
  text2: TStringList;
begin
   Text2:=TStringList.Create;
  Text2.Sorted:=True;
  Text2.Duplicates:=dupError;
  AssignFile(t, 'Test6.txt');
  Reset(t);
  while not Eof(t) do
  begin
    Readln(t, text);
    ListBox1.Items.Add(text);
  end;
  CloseFile(t);
end;

end.
