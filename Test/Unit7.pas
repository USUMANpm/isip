unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm7 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit6, Unit8, Unit13;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
Form6.Show;
Form7.Visible:=false;
end;

procedure TForm7.ListBox1Click(Sender: TObject);
var
  t: TextFile;
  text: String;
  text2: TStringList;
begin
   Text2:=TStringList.Create;
  Text2.Sorted:=True;
  Text2.Duplicates:=dupError;
  AssignFile(t, 'Test5.txt');
  Reset(t);
  while not Eof(t) do
  begin
    Readln(t, text);
    ListBox1.Items.Add(text);
  end;
  CloseFile(t);
  end;

procedure TForm7.Button2Click(Sender: TObject);
begin
Form13.Show;
Form7.Visible:=false;
end;

end.
