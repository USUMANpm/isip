unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm10 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    TabSheet4: TTabSheet;
    RadioGroup4: TRadioGroup;
    TabSheet5: TTabSheet;
    RadioGroup5: TRadioGroup;
    Button4: TButton;
    Button5: TButton;
    TabSheet6: TTabSheet;
    RadioGroup6: TRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    Button6: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  i: integer;
implementation

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
If RadioGroup1.Itemindex=-1 then ShowMessage('Забыли ответить на вопрос!')
Else
Begin
if RadioGroup1.Itemindex=1 then i:=i+1;
TabSheet2.show;
end;
   end;
procedure TForm10.Button2Click(Sender: TObject);
begin
If RadioGroup2.Itemindex=-1 then ShowMessage('Забыли ответить на вопрос!')
Else
Begin
if RadioGroup2.Itemindex=1 then i:=i+1;
TabSheet3.show;
end;
end;
procedure TForm10.Button3Click(Sender: TObject);
begin
If RadioGroup3.Itemindex=-1 then ShowMessage('Забыли ответить на вопрос!')
Else
Begin
if RadioGroup3.Itemindex=1 then i:=i+1;
TabSheet4.show;
end;
  end;
procedure TForm10.Button4Click(Sender: TObject);
begin

If RadioGroup4.Itemindex=-1 then ShowMessage('Забыли ответить на вопрос!')
Else
Begin
if RadioGroup4.Itemindex=1 then i:=i+1;
TabSheet5.show;
end;
end;

procedure TForm10.Button5Click(Sender: TObject);
begin
If RadioGroup1.Itemindex=-1 then ShowMessage('Забыли ответить на вопрос!')
Else
Begin if RadioGroup5.Itemindex=1 then i:=i+1;
TabSheet6.show;
end;

end;

procedure TForm10.Button6Click(Sender: TObject);
begin
If RadioGroup6.Itemindex=-1 then ShowMessage ('Забыли ответить на вопрос!')
Else
Begin
if RadioGroup6.Itemindex=1 then i:=i+1;
End;
Case i of
0: ShowMessage('Вы получили 2');
1: ShowMessage('Вы получили 2');
2: ShowMessage('Вы получили 2');
3: ShowMessage('Вы получили 3');
4: ShowMessage('Вы получили 4');
5: ShowMessage('Вы получили 5');
 
end;
end;

end.
