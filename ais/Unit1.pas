unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ListBox2: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
   //  procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses Unit2;

{$R *.dfm}
 { begin
  Text2:=TStringList.Create;
  Text2.Sorted:=True;
  Text2.Duplicates:=dupError;
  AssignFile(t, 'leksii.txt');
  Reset(t);
  while not Eof(t) do
  begin
    Readln(t, text);
    Form1.ListBox1.Items.Add(text);
  end;
  end;}
 {procedure TForm1.FormCreate(Sender: TObject);

var
  t: TextFile;
  text: String;
  text2: TStringList;
  begin
  Text2:=TStringList.Create;
  Text2.Sorted:=True;
  Text2.Duplicates:=dupError;
  AssignFile(t, 'lek.txt');
  Reset(t);
  while not Eof(t) do
  begin
    Readln(t, text);
    ListBox1.Items.Add(text);
  end;
  CloseFile(t);
end;       }

procedure TForm1.Button1Click(Sender: TObject);
begin
Form2.Show;
Form1.Visible:=false;
end;



procedure TForm1.ListBox1Click(Sender: TObject);
    var
  t: TextFile;
  text: String;
  text2: TStringList;


  begin
  Text2:=TStringList.Create;
  Text2.Sorted:=True;
  Text2.Duplicates:=dupError;
  AssignFile(t, 'lek.txt');
  Reset(t);
  while not Eof(t) do
  begin
    Readln(t, text);
    ListBox2.Items.Add(text);
  end;
  CloseFile(t);
end;

end.

