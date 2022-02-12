unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, IniFiles;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    RadioGroup2: TRadioGroup;
    Button2: TButton;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    RadioGroup3: TRadioGroup;
    Button3: TButton;
    TabSheet4: TTabSheet;
    Label6: TLabel;
    RadioGroup4: TRadioGroup;
    Button4: TButton;
    TabSheet5: TTabSheet;
    Label8: TLabel;
    RadioGroup5: TRadioGroup;
    Button5: TButton;
    TabSheet6: TTabSheet;
    Label2: TLabel;
    RadioGroup6: TRadioGroup;
    Button6: TButton;
    Edit1: TEdit;
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
     procedure FormCreate(Sender: TObject);
     procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
        FTestOK      : Boolean;
      FAnswerCount : Integer;
  public

    { Public declarations }
  end;

var
  Form3: TForm3;
  Ini: TIniFile;
  B: Integer;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.Button6Click(Sender: TObject);

begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  B := StrToInt(Edit1.Text);
  B := FAnswerCount;
  Ini.WriteInteger('Тест№1', 'Результаты тестирования', B);

begin
 if RadioGroup6.ItemIndex = 2 then Inc(FAnswerCount);
 Case FAnswerCount of
    0: ShowMessage('Вы получили 2');
    1: ShowMessage('Вы получили 2');
    2: ShowMessage('Вы получили 2');
    3: ShowMessage('Вы получили 3');
    4: ShowMessage('Вы получили 4');
  else
    ShowMessage('Вы получили 5');
  end;
  FTestOK := FAnswerCount >=3; // при правильных ответах 3 и больше тест считается пойденным
end;
Form2.Show;
Form3.Visible:=false;
Form2.Button2.Visible:=true;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
   if RadioGroup1.ItemIndex = 2 then Inc(FAnswerCount); // правильный ответ - вторая строчка
  TabSheet2.Show;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
     if RadioGroup1.ItemIndex = 2 then Inc(FAnswerCount); // правильный ответ - вторая строчка
  TabSheet3.Show;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 2 then Inc(FAnswerCount); // правильный ответ - вторая строчка
  TabSheet4.Show;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 2 then Inc(FAnswerCount); // правильный ответ - вторая строчка
  TabSheet5.Show;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 2 then Inc(FAnswerCount); // правильный ответ - вторая строчка
  TabSheet6.Show;
end;
procedure TForm3.FormActivate(Sender: TObject);
begin
  FAnswerCount := 0; // при показе формы сбрасываем счетчик ответов
  TabSheet1.Show;    // восстанавливаем первую закладку для повторного теста
  RadioGroup1.ItemIndex := -1;  // сбрасываем предыдущие ответы
  RadioGroup2.ItemIndex := -1;
  RadioGroup3.ItemIndex := -1;
  RadioGroup4.ItemIndex := -1;
  RadioGroup5.ItemIndex := -1;
  RadioGroup6.ItemIndex := -1;
end;
 procedure TForm3.FormCreate(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  Edit1.Text := IntToStr(Ini.ReadInteger('Тест№1', 'Rez', 0));
end;

end.
