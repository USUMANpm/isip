unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
   procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
   procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);

     private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Form3.Show;
Form2.Visible:=false;
end;

 procedure TForm2.Button2Click(Sender: TObject);
begin
Form4.Show;
Form2.Visible:=false;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
 Form5.Show;
Form2.Visible:=false;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
 Form6.Show;
Form2.Visible:=false;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Form7.Show;
Form2.Visible:=false;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
Form8.Show;
Form2.Visible:=false;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
Form9.Show;
Form2.Visible:=false;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
Form10.Show;
Form2.Visible:=false;
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
 Form11.Show;
Form2.Visible:=false;
end;




procedure TForm2.Button10Click(Sender: TObject);
begin
application.Terminate;
end;

end.
