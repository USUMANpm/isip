unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, IniFiles;

type
  TForm13 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    RadioGroup2: TRadioGroup;
    Button2: TButton;
    Button3: TButton;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    Button4: TButton;
    RadioGroup5: TRadioGroup;
    Button5: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
  Form13: TForm13;
     Ini: TIniFile;
  B: Integer;
implementation

uses Unit4, Unit1, Unit8, Unit7;

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 0 then Inc(FAnswerCount);
TabSheet2.Show;
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex = 2 then Inc(FAnswerCount);
TabSheet3.Show;
end;

procedure TForm13.Button3Click(Sender: TObject);
begin
if RadioGroup3.ItemIndex = 1 then Inc(FAnswerCount);
TabSheet4.Show;
end;

procedure TForm13.Button4Click(Sender: TObject);
begin
if RadioGroup4.ItemIndex = 0 then Inc(FAnswerCount);
TabSheet5.Show;
end;

procedure TForm13.Button5Click(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  B := StrToInt(Edit1.Text);
  B := FAnswerCount;
  Ini.WriteInteger('Тест№5', 'Результаты тестирования', B);
begin
if RadioGroup5.ItemIndex = 3 then Inc(FAnswerCount);
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
procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FTestOK then Form8.Show  // отбражаем следующую лекцию
             else Form7.Show; // возвращаемся к первой
  Action := caHide;           // скрываем форму теста
end;

procedure TForm13.FormActivate(Sender: TObject);
begin
  FAnswerCount := 0; // при показе формы сбрасываем счетчик ответов
  TabSheet1.Show;    // восстанавливаем первую закладку для повторного теста
  RadioGroup1.ItemIndex := -1;  // сбрасываем предыдущие ответы
  RadioGroup2.ItemIndex := -1;
  RadioGroup3.ItemIndex := -1;
  RadioGroup4.ItemIndex := -1;
  RadioGroup5.ItemIndex := -1;

end;
procedure TForm13.FormCreate(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  Edit1.Text := IntToStr(Ini.ReadInteger('Тест№5', 'Rez', 0));
end;

procedure TForm13.FormDestroy(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  Ini.WriteInteger('Тест№5', 'Rez', B);
end;
end.
