unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, IniFiles;

type
  TForm9 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Label3: TLabel;
    TabSheet4: TTabSheet;
    RadioGroup4: TRadioGroup;
    Label4: TLabel;
    TabSheet5: TTabSheet;
    RadioGroup5: TRadioGroup;
    Label5: TLabel;
    TabSheet6: TTabSheet;
    RadioGroup6: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Label6: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FTestOK      : Boolean;
    FAnswerCount : Integer;
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
   Ini: TIniFile;
  B: Integer;
implementation

uses Unit1, Unit4, Unit5;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 2 then Inc(FAnswerCount);
  TabSheet2.Show;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex = 1 then Inc(FAnswerCount);
  TabSheet3.Show;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
  if RadioGroup3.ItemIndex = 3 then Inc(FAnswerCount);
  TabSheet4.Show;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
  if RadioGroup4.ItemIndex = 3 then Inc(FAnswerCount);
  TabSheet5.Show;
end;

procedure TForm9.Button5Click(Sender: TObject);
begin
  if RadioGroup5.ItemIndex = 3 then Inc(FAnswerCount);
  TabSheet6.Show;
end;
procedure TForm9.Button6Click(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  B := StrToInt(Edit1.Text);
  B := FanswerCount;
  Ini.WriteInteger('Тест№2', 'Результаты тестирования', B);

begin
  if RadioGroup6.ItemIndex = 3 then Inc(FAnswerCount);
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
end;
procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FTestOK then Form5.Show  // отбражаем следующую лекцию
             else Form4.Show; // возвращаемся к первой
  Action := caHide;           // скрываем форму теста
end;

procedure TForm9.FormActivate(Sender: TObject);
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
procedure TForm9.FormCreate(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  Edit1.Text := IntToStr(Ini.ReadInteger('Тест№2', 'Rez', 0));
end;

procedure TForm9.FormDestroy(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  Ini.WriteInteger('Тест№2', 'Rez', B);
end;

end.
 